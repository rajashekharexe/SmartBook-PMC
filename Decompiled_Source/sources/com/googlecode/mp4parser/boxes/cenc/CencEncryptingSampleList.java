package com.googlecode.mp4parser.boxes.cenc;

import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.util.CastUtils;
import com.googlecode.mp4parser.util.RangeStartMap;
import com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.AbstractList;
import java.util.List;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;

/* loaded from: classes2.dex */
public class CencEncryptingSampleList extends AbstractList<Sample> {
    List<CencSampleAuxiliaryDataFormat> auxiliaryDataFormats;
    RangeStartMap<Integer, SecretKey> ceks;
    Cipher cipher;
    private final String encryptionAlgo;
    List<Sample> parent;

    public CencEncryptingSampleList(SecretKey secretKey, List<Sample> list, List<CencSampleAuxiliaryDataFormat> list2) {
        this(new RangeStartMap(0, secretKey), list, list2, "cenc");
    }

    public CencEncryptingSampleList(RangeStartMap<Integer, SecretKey> rangeStartMap, List<Sample> list, List<CencSampleAuxiliaryDataFormat> list2, String str) {
        new RangeStartMap();
        this.auxiliaryDataFormats = list2;
        this.ceks = rangeStartMap;
        this.encryptionAlgo = str;
        this.parent = list;
        try {
            if ("cenc".equals(str)) {
                this.cipher = Cipher.getInstance("AES/CTR/NoPadding");
            } else {
                if ("cbc1".equals(str)) {
                    this.cipher = Cipher.getInstance("AES/CBC/NoPadding");
                    return;
                }
                throw new RuntimeException("Only cenc & cbc1 is supported as encryptionAlgo");
            }
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (NoSuchPaddingException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public Sample get(int i) {
        Sample sample = this.parent.get(i);
        return this.ceks.get(Integer.valueOf(i)) != null ? new EncryptedSampleImpl(this, sample, this.auxiliaryDataFormats.get(i), this.cipher, this.ceks.get(Integer.valueOf(i)), null) : sample;
    }

    protected void initCipher(byte[] bArr, SecretKey secretKey) {
        try {
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.cipher.init(1, secretKey, new IvParameterSpec(bArr2));
        } catch (InvalidAlgorithmParameterException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeyException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.parent.size();
    }

    private class EncryptedSampleImpl implements Sample {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final SecretKey cek;
        private final CencSampleAuxiliaryDataFormat cencSampleAuxiliaryDataFormat;
        private final Cipher cipher;
        private final Sample clearSample;

        /* synthetic */ EncryptedSampleImpl(CencEncryptingSampleList cencEncryptingSampleList, Sample sample, CencSampleAuxiliaryDataFormat cencSampleAuxiliaryDataFormat, Cipher cipher, SecretKey secretKey, EncryptedSampleImpl encryptedSampleImpl) {
            this(sample, cencSampleAuxiliaryDataFormat, cipher, secretKey);
        }

        private EncryptedSampleImpl(Sample sample, CencSampleAuxiliaryDataFormat cencSampleAuxiliaryDataFormat, Cipher cipher, SecretKey secretKey) {
            this.clearSample = sample;
            this.cencSampleAuxiliaryDataFormat = cencSampleAuxiliaryDataFormat;
            this.cipher = cipher;
            this.cek = secretKey;
        }

        @Override // com.googlecode.mp4parser.authoring.Sample
        public void writeTo(WritableByteChannel writableByteChannel) throws IOException {
            ByteBuffer byteBuffer = (ByteBuffer) this.clearSample.asByteBuffer().rewind();
            CencEncryptingSampleList.this.initCipher(this.cencSampleAuxiliaryDataFormat.iv, this.cek);
            try {
                if (this.cencSampleAuxiliaryDataFormat.pairs != null && this.cencSampleAuxiliaryDataFormat.pairs.length > 0) {
                    byte[] bArr = new byte[byteBuffer.limit()];
                    byteBuffer.get(bArr);
                    int i = 0;
                    for (CencSampleAuxiliaryDataFormat.Pair pair : this.cencSampleAuxiliaryDataFormat.pairs) {
                        int clear = i + pair.clear();
                        if (pair.encrypted() > 0) {
                            this.cipher.update(bArr, clear, CastUtils.l2i(pair.encrypted()), bArr, clear);
                            i = (int) (clear + pair.encrypted());
                        } else {
                            i = clear;
                        }
                    }
                    writableByteChannel.write(ByteBuffer.wrap(bArr));
                } else {
                    int limit = byteBuffer.limit();
                    byte[] bArr2 = new byte[limit];
                    byteBuffer.get(bArr2);
                    if ("cbc1".equals(CencEncryptingSampleList.this.encryptionAlgo)) {
                        int i2 = (limit / 16) * 16;
                        writableByteChannel.write(ByteBuffer.wrap(this.cipher.doFinal(bArr2, 0, i2)));
                        writableByteChannel.write(ByteBuffer.wrap(bArr2, i2, limit - i2));
                    } else if ("cenc".equals(CencEncryptingSampleList.this.encryptionAlgo)) {
                        writableByteChannel.write(ByteBuffer.wrap(this.cipher.doFinal(bArr2)));
                    }
                }
                byteBuffer.rewind();
            } catch (BadPaddingException e) {
                throw new RuntimeException(e);
            } catch (IllegalBlockSizeException e2) {
                throw new RuntimeException(e2);
            } catch (ShortBufferException e3) {
                throw new RuntimeException(e3);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.Sample
        public long getSize() {
            return this.clearSample.getSize();
        }

        @Override // com.googlecode.mp4parser.authoring.Sample
        public ByteBuffer asByteBuffer() {
            ByteBuffer byteBuffer = (ByteBuffer) this.clearSample.asByteBuffer().rewind();
            ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.limit());
            CencSampleAuxiliaryDataFormat cencSampleAuxiliaryDataFormat = this.cencSampleAuxiliaryDataFormat;
            CencEncryptingSampleList.this.initCipher(cencSampleAuxiliaryDataFormat.iv, this.cek);
            try {
                if (cencSampleAuxiliaryDataFormat.pairs != null) {
                    for (CencSampleAuxiliaryDataFormat.Pair pair : cencSampleAuxiliaryDataFormat.pairs) {
                        byte[] bArr = new byte[pair.clear()];
                        byteBuffer.get(bArr);
                        allocate.put(bArr);
                        if (pair.encrypted() > 0) {
                            byte[] bArr2 = new byte[CastUtils.l2i(pair.encrypted())];
                            byteBuffer.get(bArr2);
                            allocate.put(this.cipher.update(bArr2));
                        }
                    }
                } else {
                    int limit = byteBuffer.limit();
                    byte[] bArr3 = new byte[limit];
                    byteBuffer.get(bArr3);
                    if ("cbc1".equals(CencEncryptingSampleList.this.encryptionAlgo)) {
                        int i = (limit / 16) * 16;
                        allocate.put(this.cipher.doFinal(bArr3, 0, i));
                        allocate.put(bArr3, i, limit - i);
                    } else if ("cenc".equals(CencEncryptingSampleList.this.encryptionAlgo)) {
                        allocate.put(this.cipher.doFinal(bArr3));
                    }
                }
                byteBuffer.rewind();
                allocate.rewind();
                return allocate;
            } catch (BadPaddingException e) {
                throw new RuntimeException(e);
            } catch (IllegalBlockSizeException e2) {
                throw new RuntimeException(e2);
            }
        }
    }
}
