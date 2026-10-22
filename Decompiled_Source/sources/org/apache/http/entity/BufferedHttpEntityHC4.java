package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtilsHC4;

/* loaded from: classes2.dex */
public class BufferedHttpEntityHC4 extends HttpEntityWrapperHC4 {
    private final byte[] buffer;

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return true;
    }

    public BufferedHttpEntityHC4(HttpEntity httpEntity) throws IOException {
        super(httpEntity);
        if (!httpEntity.isRepeatable() || httpEntity.getContentLength() < 0) {
            this.buffer = EntityUtilsHC4.toByteArray(httpEntity);
        } else {
            this.buffer = null;
        }
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public long getContentLength() {
        if (this.buffer != null) {
            return r0.length;
        }
        return super.getContentLength();
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        if (this.buffer != null) {
            return new ByteArrayInputStream(this.buffer);
        }
        return super.getContent();
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public boolean isChunked() {
        return this.buffer == null && super.isChunked();
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        byte[] bArr = this.buffer;
        if (bArr != null) {
            outputStream.write(bArr);
        } else {
            super.writeTo(outputStream);
        }
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4, org.apache.http.HttpEntity
    public boolean isStreaming() {
        return this.buffer == null && super.isStreaming();
    }
}
