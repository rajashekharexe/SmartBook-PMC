package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import com.squareup.picasso.Downloader;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
class NetworkBitmapHunter extends BitmapHunter {
    static final int DEFAULT_RETRY_COUNT = 2;
    private static final int MARKER = 65536;
    private final Downloader downloader;
    int retryCount;

    public NetworkBitmapHunter(Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action, Downloader downloader) {
        super(picasso, dispatcher, cache, stats, action);
        this.downloader = downloader;
        this.retryCount = 2;
    }

    @Override // com.squareup.picasso.BitmapHunter
    Bitmap decode(Request request) throws IOException {
        Downloader.Response load = this.downloader.load(request.uri, this.retryCount == 0);
        if (load == null) {
            return null;
        }
        this.loadedFrom = load.cached ? Picasso.LoadedFrom.DISK : Picasso.LoadedFrom.NETWORK;
        Bitmap bitmap = load.getBitmap();
        if (bitmap != null) {
            return bitmap;
        }
        InputStream inputStream = load.getInputStream();
        try {
            return decodeStream(inputStream, request);
        } finally {
            Utils.closeQuietly(inputStream);
        }
    }

    @Override // com.squareup.picasso.BitmapHunter
    boolean shouldRetry(boolean z, NetworkInfo networkInfo) {
        int i = this.retryCount;
        if (i <= 0) {
            return false;
        }
        this.retryCount = i - 1;
        return networkInfo == null || networkInfo.isConnectedOrConnecting();
    }

    private Bitmap decodeStream(InputStream inputStream, Request request) throws IOException {
        if (inputStream == null) {
            return null;
        }
        MarkableInputStream markableInputStream = new MarkableInputStream(inputStream);
        long savePosition = markableInputStream.savePosition(65536);
        boolean isWebPFile = Utils.isWebPFile(markableInputStream);
        markableInputStream.reset(savePosition);
        if (isWebPFile) {
            byte[] byteArray = Utils.toByteArray(markableInputStream);
            BitmapFactory.Options createBitmapOptions = createBitmapOptions(request);
            if (request.hasSize()) {
                createBitmapOptions.inJustDecodeBounds = true;
                BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, createBitmapOptions);
                calculateInSampleSize(request.targetWidth, request.targetHeight, createBitmapOptions);
            }
            return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, createBitmapOptions);
        }
        BitmapFactory.Options createBitmapOptions2 = createBitmapOptions(request);
        if (request.hasSize()) {
            createBitmapOptions2.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(markableInputStream, null, createBitmapOptions2);
            calculateInSampleSize(request.targetWidth, request.targetHeight, createBitmapOptions2);
            markableInputStream.reset(savePosition);
        }
        return BitmapFactory.decodeStream(markableInputStream, null, createBitmapOptions2);
    }
}
