package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import kotlin.UByte;
import org.apache.http.config.MessageConstraints;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes2.dex */
public class SessionInputBufferImpl implements SessionInputBuffer, BufferInfo {
    private final byte[] buffer;
    private int bufferlen;
    private int bufferpos;
    private CharBuffer cbuf;
    private final MessageConstraints constraints;
    private final CharsetDecoder decoder;
    private InputStream instream;
    private final ByteArrayBuffer linebuffer;
    private final HttpTransportMetricsImpl metrics;
    private final int minChunkLimit;

    public SessionInputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i, int i2, MessageConstraints messageConstraints, CharsetDecoder charsetDecoder) {
        Args.notNull(httpTransportMetricsImpl, "HTTP transport metrcis");
        Args.positive(i, "Buffer size");
        this.metrics = httpTransportMetricsImpl;
        this.buffer = new byte[i];
        this.bufferpos = 0;
        this.bufferlen = 0;
        this.minChunkLimit = i2 < 0 ? 512 : i2;
        this.constraints = messageConstraints == null ? MessageConstraints.DEFAULT : messageConstraints;
        this.linebuffer = new ByteArrayBuffer(i);
        this.decoder = charsetDecoder;
    }

    public SessionInputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i) {
        this(httpTransportMetricsImpl, i, i, null, null);
    }

    public void bind(InputStream inputStream) {
        this.instream = inputStream;
    }

    public boolean isBound() {
        return this.instream != null;
    }

    @Override // org.apache.http.io.BufferInfo
    public int capacity() {
        return this.buffer.length;
    }

    @Override // org.apache.http.io.BufferInfo
    public int length() {
        return this.bufferlen - this.bufferpos;
    }

    @Override // org.apache.http.io.BufferInfo
    public int available() {
        return capacity() - length();
    }

    private int streamRead(byte[] bArr, int i, int i2) throws IOException {
        Asserts.notNull(this.instream, "Input stream");
        return this.instream.read(bArr, i, i2);
    }

    public int fillBuffer() throws IOException {
        int i = this.bufferpos;
        if (i > 0) {
            int i2 = this.bufferlen - i;
            if (i2 > 0) {
                byte[] bArr = this.buffer;
                System.arraycopy(bArr, i, bArr, 0, i2);
            }
            this.bufferpos = 0;
            this.bufferlen = i2;
        }
        int i3 = this.bufferlen;
        byte[] bArr2 = this.buffer;
        int streamRead = streamRead(bArr2, i3, bArr2.length - i3);
        if (streamRead == -1) {
            return -1;
        }
        this.bufferlen = i3 + streamRead;
        this.metrics.incrementBytesTransferred(streamRead);
        return streamRead;
    }

    public boolean hasBufferedData() {
        return this.bufferpos < this.bufferlen;
    }

    public void clear() {
        this.bufferpos = 0;
        this.bufferlen = 0;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read() throws IOException {
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        byte[] bArr = this.buffer;
        int i = this.bufferpos;
        this.bufferpos = i + 1;
        return bArr[i] & UByte.MAX_VALUE;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (bArr == null) {
            return 0;
        }
        if (hasBufferedData()) {
            int min = Math.min(i2, this.bufferlen - this.bufferpos);
            System.arraycopy(this.buffer, this.bufferpos, bArr, i, min);
            this.bufferpos += min;
            return min;
        }
        if (i2 > this.minChunkLimit) {
            int streamRead = streamRead(bArr, i, i2);
            if (streamRead > 0) {
                this.metrics.incrementBytesTransferred(streamRead);
            }
            return streamRead;
        }
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        int min2 = Math.min(i2, this.bufferlen - this.bufferpos);
        System.arraycopy(this.buffer, this.bufferpos, bArr, i, min2);
        this.bufferpos += min2;
        return min2;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr) throws IOException {
        if (bArr == null) {
            return 0;
        }
        return read(bArr, 0, bArr.length);
    }

    private int locateLF() {
        for (int i = this.bufferpos; i < this.bufferlen; i++) {
            if (this.buffer[i] == 10) {
                return i;
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0049, code lost:
    
        if (r2 == (-1)) goto L12;
     */
    @Override // org.apache.http.io.SessionInputBuffer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int readLine(org.apache.http.util.CharArrayBuffer r8) throws java.io.IOException {
        /*
            r7 = this;
            java.lang.String r0 = "Char array buffer"
            org.apache.http.util.Args.notNull(r8, r0)
            r0 = 0
            r1 = 1
            r2 = 0
        L8:
            r3 = -1
            if (r1 == 0) goto L65
            int r4 = r7.locateLF()
            if (r4 == r3) goto L2f
            org.apache.http.util.ByteArrayBuffer r1 = r7.linebuffer
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L1e
            int r8 = r7.lineFromReadBuffer(r8, r4)
            return r8
        L1e:
            int r4 = r4 + 1
            int r1 = r7.bufferpos
            int r3 = r4 - r1
            org.apache.http.util.ByteArrayBuffer r5 = r7.linebuffer
            byte[] r6 = r7.buffer
            r5.append(r6, r1, r3)
            r7.bufferpos = r4
        L2d:
            r1 = 0
            goto L4c
        L2f:
            boolean r2 = r7.hasBufferedData()
            if (r2 == 0) goto L45
            int r2 = r7.bufferlen
            int r4 = r7.bufferpos
            int r2 = r2 - r4
            org.apache.http.util.ByteArrayBuffer r5 = r7.linebuffer
            byte[] r6 = r7.buffer
            r5.append(r6, r4, r2)
            int r2 = r7.bufferlen
            r7.bufferpos = r2
        L45:
            int r2 = r7.fillBuffer()
            if (r2 != r3) goto L4c
            goto L2d
        L4c:
            org.apache.http.config.MessageConstraints r3 = r7.constraints
            int r3 = r3.getMaxLineLength()
            if (r3 <= 0) goto L8
            org.apache.http.util.ByteArrayBuffer r4 = r7.linebuffer
            int r4 = r4.length()
            if (r4 >= r3) goto L5d
            goto L8
        L5d:
            org.apache.http.MessageConstraintException r8 = new org.apache.http.MessageConstraintException
            java.lang.String r0 = "Maximum line length limit exceeded"
            r8.<init>(r0)
            throw r8
        L65:
            if (r2 != r3) goto L70
            org.apache.http.util.ByteArrayBuffer r0 = r7.linebuffer
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L70
            return r3
        L70:
            int r8 = r7.lineFromLineBuffer(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.io.SessionInputBufferImpl.readLine(org.apache.http.util.CharArrayBuffer):int");
    }

    private int lineFromLineBuffer(CharArrayBuffer charArrayBuffer) throws IOException {
        int length = this.linebuffer.length();
        if (length > 0) {
            if (this.linebuffer.byteAt(length - 1) == 10) {
                length--;
            }
            if (length > 0 && this.linebuffer.byteAt(length - 1) == 13) {
                length--;
            }
        }
        if (this.decoder == null) {
            charArrayBuffer.append(this.linebuffer, 0, length);
        } else {
            length = appendDecoded(charArrayBuffer, ByteBuffer.wrap(this.linebuffer.buffer(), 0, length));
        }
        this.linebuffer.clear();
        return length;
    }

    private int lineFromReadBuffer(CharArrayBuffer charArrayBuffer, int i) throws IOException {
        int i2 = this.bufferpos;
        this.bufferpos = i + 1;
        if (i > i2 && this.buffer[i - 1] == 13) {
            i--;
        }
        int i3 = i - i2;
        if (this.decoder == null) {
            charArrayBuffer.append(this.buffer, i2, i3);
            return i3;
        }
        return appendDecoded(charArrayBuffer, ByteBuffer.wrap(this.buffer, i2, i3));
    }

    private int appendDecoded(CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) throws IOException {
        int i = 0;
        if (!byteBuffer.hasRemaining()) {
            return 0;
        }
        if (this.cbuf == null) {
            this.cbuf = CharBuffer.allocate(1024);
        }
        this.decoder.reset();
        while (byteBuffer.hasRemaining()) {
            i += handleDecodingResult(this.decoder.decode(byteBuffer, this.cbuf, true), charArrayBuffer, byteBuffer);
        }
        int handleDecodingResult = i + handleDecodingResult(this.decoder.flush(this.cbuf), charArrayBuffer, byteBuffer);
        this.cbuf.clear();
        return handleDecodingResult;
    }

    private int handleDecodingResult(CoderResult coderResult, CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) throws IOException {
        if (coderResult.isError()) {
            coderResult.throwException();
        }
        this.cbuf.flip();
        int remaining = this.cbuf.remaining();
        while (this.cbuf.hasRemaining()) {
            charArrayBuffer.append(this.cbuf.get());
        }
        this.cbuf.compact();
        return remaining;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public String readLine() throws IOException {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        if (readLine(charArrayBuffer) != -1) {
            return charArrayBuffer.toString();
        }
        return null;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public boolean isDataAvailable(int i) throws IOException {
        return hasBufferedData();
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.metrics;
    }
}
