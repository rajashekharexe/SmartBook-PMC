package com.squareup.picasso;

import android.graphics.Bitmap;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public interface Downloader {
    Response load(Uri uri, boolean z) throws IOException;

    public static class ResponseException extends IOException {
        public ResponseException(String str) {
            super(str);
        }
    }

    public static class Response {
        final Bitmap bitmap;
        final boolean cached;
        final InputStream stream;

        public Response(Bitmap bitmap, boolean z) {
            if (bitmap == null) {
                throw new IllegalArgumentException("Bitmap may not be null.");
            }
            this.stream = null;
            this.bitmap = bitmap;
            this.cached = z;
        }

        public Response(InputStream inputStream, boolean z) {
            if (inputStream == null) {
                throw new IllegalArgumentException("Stream may not be null.");
            }
            this.stream = inputStream;
            this.bitmap = null;
            this.cached = z;
        }

        public InputStream getInputStream() {
            return this.stream;
        }

        public Bitmap getBitmap() {
            return this.bitmap;
        }
    }
}
