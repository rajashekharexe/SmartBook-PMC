package com.googlecode.mp4parser.authoring;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.ChunkOffsetBox;
import com.coremedia.iso.boxes.Container;
import com.coremedia.iso.boxes.MovieBox;
import com.coremedia.iso.boxes.TrackBox;
import com.coremedia.iso.boxes.fragment.MovieExtendsBox;
import com.coremedia.iso.boxes.fragment.MovieFragmentBox;
import com.coremedia.iso.boxes.fragment.TrackFragmentBox;
import com.coremedia.iso.boxes.fragment.TrackRunBox;
import com.googlecode.mp4parser.AbstractContainerBox;
import com.googlecode.mp4parser.authoring.tracks.CencEncryptedTrack;
import com.googlecode.mp4parser.util.Path;
import com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox;
import com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox;
import com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat;
import com.mp4parser.iso23001.part7.TrackEncryptionBox;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* loaded from: classes2.dex */
public class CencMp4TrackImplImpl extends Mp4TrackImpl implements CencEncryptedTrack {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private UUID defaultKeyId;
    private List<CencSampleAuxiliaryDataFormat> sampleEncryptionEntries;

    @Override // com.googlecode.mp4parser.authoring.tracks.CencEncryptedTrack
    public boolean hasSubSampleEncryption() {
        return false;
    }

    public CencMp4TrackImplImpl(String str, TrackBox trackBox, IsoFile... isoFileArr) throws IOException {
        super(str, trackBox, isoFileArr);
        long j;
        long j2;
        int i;
        Container container;
        long j3;
        int i2;
        this.sampleEncryptionEntries = new ArrayList();
        long trackId = trackBox.getTrackHeaderBox().getTrackId();
        if (trackBox.getParent().getBoxes(MovieExtendsBox.class).size() > 0) {
            Iterator it = ((Box) trackBox.getParent()).getParent().getBoxes(MovieFragmentBox.class).iterator();
            while (it.hasNext()) {
                MovieFragmentBox movieFragmentBox = (MovieFragmentBox) it.next();
                Iterator it2 = movieFragmentBox.getBoxes(TrackFragmentBox.class).iterator();
                while (it2.hasNext()) {
                    TrackFragmentBox trackFragmentBox = (TrackFragmentBox) it2.next();
                    if (trackFragmentBox.getTrackFragmentHeaderBox().getTrackId() == trackId) {
                        TrackEncryptionBox trackEncryptionBox = (TrackEncryptionBox) Path.getPath((AbstractContainerBox) trackBox, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]");
                        this.defaultKeyId = trackEncryptionBox.getDefault_KID();
                        if (trackFragmentBox.getTrackFragmentHeaderBox().hasBaseDataOffset()) {
                            container = ((Box) trackBox.getParent()).getParent();
                            j3 = trackFragmentBox.getTrackFragmentHeaderBox().getBaseDataOffset();
                        } else {
                            container = movieFragmentBox;
                            j3 = 0;
                        }
                        FindSaioSaizPair invoke = new FindSaioSaizPair(trackFragmentBox).invoke();
                        SampleAuxiliaryInformationOffsetsBox saio = invoke.getSaio();
                        SampleAuxiliaryInformationSizesBox saiz = invoke.getSaiz();
                        long[] offsets = saio.getOffsets();
                        List boxes = trackFragmentBox.getBoxes(TrackRunBox.class);
                        long j4 = trackId;
                        int i3 = 0;
                        int i4 = 0;
                        while (i3 < offsets.length) {
                            int size = ((TrackRunBox) boxes.get(i3)).getEntries().size();
                            long j5 = offsets[i3];
                            Iterator it3 = it;
                            long[] jArr = offsets;
                            List list = boxes;
                            int i5 = i4;
                            long j6 = 0;
                            while (true) {
                                i2 = i4 + size;
                                if (i5 >= i2) {
                                    break;
                                }
                                j6 += saiz.getSize(i5);
                                i5++;
                                movieFragmentBox = movieFragmentBox;
                                it2 = it2;
                            }
                            ByteBuffer byteBuffer = container.getByteBuffer(j3 + j5, j6);
                            int i6 = i4;
                            while (i6 < i2) {
                                this.sampleEncryptionEntries.add(parseCencAuxDataFormat(trackEncryptionBox.getDefaultIvSize(), byteBuffer, saiz.getSize(i6)));
                                i6++;
                                i2 = i2;
                                movieFragmentBox = movieFragmentBox;
                                it2 = it2;
                            }
                            i3++;
                            offsets = jArr;
                            i4 = i2;
                            boxes = list;
                            it = it3;
                        }
                        trackId = j4;
                    }
                }
            }
            return;
        }
        TrackEncryptionBox trackEncryptionBox2 = (TrackEncryptionBox) Path.getPath((AbstractContainerBox) trackBox, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]");
        this.defaultKeyId = trackEncryptionBox2.getDefault_KID();
        ChunkOffsetBox chunkOffsetBox = (ChunkOffsetBox) Path.getPath((AbstractContainerBox) trackBox, "mdia[0]/minf[0]/stbl[0]/stco[0]");
        long[] blowup = trackBox.getSampleTableBox().getSampleToChunkBox().blowup((chunkOffsetBox == null ? (ChunkOffsetBox) Path.getPath((AbstractContainerBox) trackBox, "mdia[0]/minf[0]/stbl[0]/co64[0]") : chunkOffsetBox).getChunkOffsets().length);
        FindSaioSaizPair invoke2 = new FindSaioSaizPair((Container) Path.getPath((AbstractContainerBox) trackBox, "mdia[0]/minf[0]/stbl[0]")).invoke();
        SampleAuxiliaryInformationOffsetsBox sampleAuxiliaryInformationOffsetsBox = invoke2.saio;
        SampleAuxiliaryInformationSizesBox sampleAuxiliaryInformationSizesBox = invoke2.saiz;
        Container parent = ((MovieBox) trackBox.getParent()).getParent();
        if (sampleAuxiliaryInformationOffsetsBox.getOffsets().length == 1) {
            long j7 = sampleAuxiliaryInformationOffsetsBox.getOffsets()[0];
            if (sampleAuxiliaryInformationSizesBox.getDefaultSampleInfoSize() > 0) {
                i = sampleAuxiliaryInformationSizesBox.getSampleCount() * sampleAuxiliaryInformationSizesBox.getDefaultSampleInfoSize();
            } else {
                i = 0;
                for (int i7 = 0; i7 < sampleAuxiliaryInformationSizesBox.getSampleCount(); i7++) {
                    i += sampleAuxiliaryInformationSizesBox.getSampleInfoSizes()[i7];
                }
            }
            ByteBuffer byteBuffer2 = parent.getByteBuffer(j7, i);
            for (int i8 = 0; i8 < sampleAuxiliaryInformationSizesBox.getSampleCount(); i8++) {
                this.sampleEncryptionEntries.add(parseCencAuxDataFormat(trackEncryptionBox2.getDefaultIvSize(), byteBuffer2, sampleAuxiliaryInformationSizesBox.getSize(i8)));
            }
            return;
        }
        if (sampleAuxiliaryInformationOffsetsBox.getOffsets().length == blowup.length) {
            int i9 = 0;
            for (int i10 = 0; i10 < blowup.length; i10++) {
                long j8 = sampleAuxiliaryInformationOffsetsBox.getOffsets()[i10];
                if (sampleAuxiliaryInformationSizesBox.getDefaultSampleInfoSize() > 0) {
                    j = sampleAuxiliaryInformationSizesBox.getSampleCount() * blowup[i10];
                } else {
                    j = 0;
                    for (int i11 = 0; i11 < blowup[i10]; i11++) {
                        j += sampleAuxiliaryInformationSizesBox.getSize(i9 + i11);
                    }
                }
                ByteBuffer byteBuffer3 = parent.getByteBuffer(j8, j);
                int i12 = 0;
                while (true) {
                    long j9 = i12;
                    j2 = blowup[i10];
                    if (j9 >= j2) {
                        break;
                    }
                    this.sampleEncryptionEntries.add(parseCencAuxDataFormat(trackEncryptionBox2.getDefaultIvSize(), byteBuffer3, sampleAuxiliaryInformationSizesBox.getSize(i9 + i12)));
                    i12++;
                }
                i9 = (int) (i9 + j2);
            }
            return;
        }
        throw new RuntimeException("Number of saio offsets must be either 1 or number of chunks");
    }

    private CencSampleAuxiliaryDataFormat parseCencAuxDataFormat(int i, ByteBuffer byteBuffer, long j) {
        CencSampleAuxiliaryDataFormat cencSampleAuxiliaryDataFormat = new CencSampleAuxiliaryDataFormat();
        if (j > 0) {
            cencSampleAuxiliaryDataFormat.iv = new byte[i];
            byteBuffer.get(cencSampleAuxiliaryDataFormat.iv);
            if (j > i) {
                cencSampleAuxiliaryDataFormat.pairs = new CencSampleAuxiliaryDataFormat.Pair[IsoTypeReader.readUInt16(byteBuffer)];
                for (int i2 = 0; i2 < cencSampleAuxiliaryDataFormat.pairs.length; i2++) {
                    cencSampleAuxiliaryDataFormat.pairs[i2] = cencSampleAuxiliaryDataFormat.createPair(IsoTypeReader.readUInt16(byteBuffer), IsoTypeReader.readUInt32(byteBuffer));
                }
            }
        }
        return cencSampleAuxiliaryDataFormat;
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.CencEncryptedTrack
    public UUID getDefaultKeyId() {
        return this.defaultKeyId;
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.CencEncryptedTrack
    public List<CencSampleAuxiliaryDataFormat> getSampleEncryptionEntries() {
        return this.sampleEncryptionEntries;
    }

    public String toString() {
        return "CencMp4TrackImpl{handler='" + getHandler() + "'}";
    }

    @Override // com.googlecode.mp4parser.authoring.AbstractTrack, com.googlecode.mp4parser.authoring.Track
    public String getName() {
        return "enc(" + super.getName() + ")";
    }

    private class FindSaioSaizPair {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private Container container;
        private SampleAuxiliaryInformationOffsetsBox saio;
        private SampleAuxiliaryInformationSizesBox saiz;

        public FindSaioSaizPair(Container container) {
            this.container = container;
        }

        public SampleAuxiliaryInformationSizesBox getSaiz() {
            return this.saiz;
        }

        public SampleAuxiliaryInformationOffsetsBox getSaio() {
            return this.saio;
        }

        public FindSaioSaizPair invoke() {
            List boxes = this.container.getBoxes(SampleAuxiliaryInformationSizesBox.class);
            List boxes2 = this.container.getBoxes(SampleAuxiliaryInformationOffsetsBox.class);
            this.saiz = null;
            this.saio = null;
            for (int i = 0; i < boxes.size(); i++) {
                if ((this.saiz == null && ((SampleAuxiliaryInformationSizesBox) boxes.get(i)).getAuxInfoType() == null) || "cenc".equals(((SampleAuxiliaryInformationSizesBox) boxes.get(i)).getAuxInfoType())) {
                    this.saiz = (SampleAuxiliaryInformationSizesBox) boxes.get(i);
                } else {
                    SampleAuxiliaryInformationSizesBox sampleAuxiliaryInformationSizesBox = this.saiz;
                    if (sampleAuxiliaryInformationSizesBox != null && sampleAuxiliaryInformationSizesBox.getAuxInfoType() == null && "cenc".equals(((SampleAuxiliaryInformationSizesBox) boxes.get(i)).getAuxInfoType())) {
                        this.saiz = (SampleAuxiliaryInformationSizesBox) boxes.get(i);
                    } else {
                        throw new RuntimeException("Are there two cenc labeled saiz?");
                    }
                }
                if ((this.saio == null && ((SampleAuxiliaryInformationOffsetsBox) boxes2.get(i)).getAuxInfoType() == null) || "cenc".equals(((SampleAuxiliaryInformationOffsetsBox) boxes2.get(i)).getAuxInfoType())) {
                    this.saio = (SampleAuxiliaryInformationOffsetsBox) boxes2.get(i);
                } else {
                    SampleAuxiliaryInformationOffsetsBox sampleAuxiliaryInformationOffsetsBox = this.saio;
                    if (sampleAuxiliaryInformationOffsetsBox != null && sampleAuxiliaryInformationOffsetsBox.getAuxInfoType() == null && "cenc".equals(((SampleAuxiliaryInformationOffsetsBox) boxes2.get(i)).getAuxInfoType())) {
                        this.saio = (SampleAuxiliaryInformationOffsetsBox) boxes2.get(i);
                    } else {
                        throw new RuntimeException("Are there two cenc labeled saio?");
                    }
                }
            }
            return this;
        }
    }
}
