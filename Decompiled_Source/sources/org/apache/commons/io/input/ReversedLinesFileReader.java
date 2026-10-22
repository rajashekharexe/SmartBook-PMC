package org.apache.commons.io.input;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import org.apache.commons.io.Charsets;

/* loaded from: classes2.dex */
public class ReversedLinesFileReader implements Closeable {
    private final int avoidNewlineSplitBufferSize;
    private final int blockSize;
    private final int byteDecrement;
    private FilePart currentFilePart;
    private final Charset encoding;
    private final byte[][] newLineSequences;
    private final RandomAccessFile randomAccessFile;
    private final long totalBlockCount;
    private final long totalByteLength;
    private boolean trailingNewlineOfFileSkipped;

    public ReversedLinesFileReader(File file) throws IOException {
        this(file, 4096, Charset.defaultCharset().toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ReversedLinesFileReader(java.io.File r10, int r11, java.nio.charset.Charset r12) throws java.io.IOException {
        /*
            r9 = this;
            r9.<init>()
            r7 = 0
            r9.trailingNewlineOfFileSkipped = r7
            r9.blockSize = r11
            r9.encoding = r12
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile
            java.lang.String r2 = "r"
            r1.<init>(r10, r2)
            r9.randomAccessFile = r1
            long r1 = r1.length()
            r9.totalByteLength = r1
            long r3 = (long) r11
            long r5 = r1 % r3
            int r6 = (int) r5
            if (r6 <= 0) goto L26
            long r1 = r1 / r3
            r3 = 1
            long r1 = r1 + r3
            r9.totalBlockCount = r1
            goto L32
        L26:
            long r3 = r1 / r3
            r9.totalBlockCount = r3
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L32
            r4 = r11
            goto L33
        L32:
            r4 = r6
        L33:
            org.apache.commons.io.input.ReversedLinesFileReader$FilePart r8 = new org.apache.commons.io.input.ReversedLinesFileReader$FilePart
            long r2 = r9.totalBlockCount
            r5 = 0
            r6 = 0
            r0 = r8
            r1 = r9
            r0.<init>(r2, r4, r5)
            r9.currentFilePart = r8
            java.nio.charset.Charset r0 = org.apache.commons.io.Charsets.toCharset(r12)
            java.nio.charset.CharsetEncoder r1 = r0.newEncoder()
            float r1 = r1.maxBytesPerChar()
            r2 = 1065353216(0x3f800000, float:1.0)
            r3 = 2
            r4 = 1
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 != 0) goto L57
            r9.byteDecrement = r4
            goto La9
        L57:
            java.lang.String r1 = "UTF-8"
            java.nio.charset.Charset r1 = java.nio.charset.Charset.forName(r1)
            if (r0 != r1) goto L62
            r9.byteDecrement = r4
            goto La9
        L62:
            java.lang.String r1 = "Shift_JIS"
            java.nio.charset.Charset r1 = java.nio.charset.Charset.forName(r1)
            if (r0 != r1) goto L6d
            r9.byteDecrement = r4
            goto La9
        L6d:
            java.lang.String r1 = "UTF-16BE"
            java.nio.charset.Charset r1 = java.nio.charset.Charset.forName(r1)
            if (r0 == r1) goto La7
            java.lang.String r1 = "UTF-16LE"
            java.nio.charset.Charset r1 = java.nio.charset.Charset.forName(r1)
            if (r0 != r1) goto L7e
            goto La7
        L7e:
            java.lang.String r1 = "UTF-16"
            java.nio.charset.Charset r1 = java.nio.charset.Charset.forName(r1)
            if (r0 != r1) goto L8e
            java.io.UnsupportedEncodingException r0 = new java.io.UnsupportedEncodingException
            java.lang.String r1 = "For UTF-16, you need to specify the byte order (use UTF-16BE or UTF-16LE)"
            r0.<init>(r1)
            throw r0
        L8e:
            java.io.UnsupportedEncodingException r0 = new java.io.UnsupportedEncodingException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Encoding "
            r1.<init>(r2)
            r1.append(r12)
            java.lang.String r2 = " is not supported yet (feel free to submit a patch)"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        La7:
            r9.byteDecrement = r3
        La9:
            java.lang.String r0 = "\r\n"
            byte[] r0 = r0.getBytes(r12)
            java.lang.String r1 = "\n"
            byte[] r1 = r1.getBytes(r12)
            java.lang.String r2 = "\r"
            byte[] r2 = r2.getBytes(r12)
            r5 = 3
            byte[][] r5 = new byte[r5][]
            r5[r7] = r0
            r5[r4] = r1
            r5[r3] = r2
            r9.newLineSequences = r5
            r0 = r5[r7]
            int r0 = r0.length
            r9.avoidNewlineSplitBufferSize = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.input.ReversedLinesFileReader.<init>(java.io.File, int, java.nio.charset.Charset):void");
    }

    public ReversedLinesFileReader(File file, int i, String str) throws IOException {
        this(file, i, Charsets.toCharset(str));
    }

    public String readLine() throws IOException {
        String readLine = this.currentFilePart.readLine();
        while (readLine == null) {
            FilePart rollOver = this.currentFilePart.rollOver();
            this.currentFilePart = rollOver;
            if (rollOver == null) {
                break;
            }
            readLine = rollOver.readLine();
        }
        if (!"".equals(readLine) || this.trailingNewlineOfFileSkipped) {
            return readLine;
        }
        this.trailingNewlineOfFileSkipped = true;
        return readLine();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.randomAccessFile.close();
    }

    private class FilePart {
        private int currentLastBytePos;
        private final byte[] data;
        private byte[] leftOver;
        private final long no;

        private FilePart(long j, int i, byte[] bArr) throws IOException {
            this.no = j;
            byte[] bArr2 = new byte[(bArr != null ? bArr.length : 0) + i];
            this.data = bArr2;
            long j2 = (j - 1) * ReversedLinesFileReader.this.blockSize;
            if (j > 0) {
                ReversedLinesFileReader.this.randomAccessFile.seek(j2);
                if (ReversedLinesFileReader.this.randomAccessFile.read(bArr2, 0, i) != i) {
                    throw new IllegalStateException("Count of requested bytes and actually read bytes don't match");
                }
            }
            if (bArr != null) {
                System.arraycopy(bArr, 0, bArr2, i, bArr.length);
            }
            this.currentLastBytePos = bArr2.length - 1;
            this.leftOver = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public FilePart rollOver() throws IOException {
            if (this.currentLastBytePos > -1) {
                throw new IllegalStateException("Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos=" + this.currentLastBytePos);
            }
            long j = this.no;
            if (j > 1) {
                ReversedLinesFileReader reversedLinesFileReader = ReversedLinesFileReader.this;
                return reversedLinesFileReader.new FilePart(j - 1, reversedLinesFileReader.blockSize, this.leftOver);
            }
            if (this.leftOver == null) {
                return null;
            }
            throw new IllegalStateException("Unexpected leftover of the last block: leftOverOfThisFilePart=".concat(new String(this.leftOver, ReversedLinesFileReader.this.encoding)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String readLine() throws IOException {
            String str;
            byte[] bArr;
            boolean z = this.no == 1;
            int i = this.currentLastBytePos;
            while (true) {
                if (i > -1) {
                    if (!z && i < ReversedLinesFileReader.this.avoidNewlineSplitBufferSize) {
                        createLeftOver();
                        break;
                    }
                    int newLineMatchByteCount = getNewLineMatchByteCount(this.data, i);
                    if (newLineMatchByteCount <= 0) {
                        i -= ReversedLinesFileReader.this.byteDecrement;
                        if (i < 0) {
                            createLeftOver();
                            break;
                        }
                    } else {
                        int i2 = i + 1;
                        int i3 = (this.currentLastBytePos - i2) + 1;
                        if (i3 < 0) {
                            throw new IllegalStateException("Unexpected negative line length=" + i3);
                        }
                        byte[] bArr2 = new byte[i3];
                        System.arraycopy(this.data, i2, bArr2, 0, i3);
                        str = new String(bArr2, ReversedLinesFileReader.this.encoding);
                        this.currentLastBytePos = i - newLineMatchByteCount;
                    }
                } else {
                    break;
                }
            }
            str = null;
            if (!z || (bArr = this.leftOver) == null) {
                return str;
            }
            String str2 = new String(bArr, ReversedLinesFileReader.this.encoding);
            this.leftOver = null;
            return str2;
        }

        private void createLeftOver() {
            int i = this.currentLastBytePos + 1;
            if (i > 0) {
                byte[] bArr = new byte[i];
                this.leftOver = bArr;
                System.arraycopy(this.data, 0, bArr, 0, i);
            } else {
                this.leftOver = null;
            }
            this.currentLastBytePos = -1;
        }

        private int getNewLineMatchByteCount(byte[] bArr, int i) {
            for (byte[] bArr2 : ReversedLinesFileReader.this.newLineSequences) {
                boolean z = true;
                for (int length = bArr2.length - 1; length >= 0; length--) {
                    int length2 = (i + length) - (bArr2.length - 1);
                    z &= length2 >= 0 && bArr[length2] == bArr2[length];
                }
                if (z) {
                    return bArr2.length;
                }
            }
            return 0;
        }
    }
}
