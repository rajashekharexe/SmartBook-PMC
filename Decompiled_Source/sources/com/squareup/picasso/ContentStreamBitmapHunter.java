package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
class ContentStreamBitmapHunter extends BitmapHunter {
    final Context context;

    ContentStreamBitmapHunter(Context context, Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action) {
        super(picasso, dispatcher, cache, stats, action);
        this.context = context;
    }

    @Override // com.squareup.picasso.BitmapHunter
    Bitmap decode(Request request) throws IOException {
        return decodeContentStream(request);
    }

    @Override // com.squareup.picasso.BitmapHunter
    Picasso.LoadedFrom getLoadedFrom() {
        return Picasso.LoadedFrom.DISK;
    }

    protected Bitmap decodeContentStream(Request request) throws IOException {
        ContentResolver contentResolver = this.context.getContentResolver();
        BitmapFactory.Options createBitmapOptions = createBitmapOptions(request);
        InputStream inputStream = null;
        if (request.hasSize()) {
            createBitmapOptions.inJustDecodeBounds = true;
            try {
                InputStream openInputStream = contentResolver.openInputStream(request.uri);
                try {
                    BitmapFactory.decodeStream(openInputStream, null, createBitmapOptions);
                    Utils.closeQuietly(openInputStream);
                    calculateInSampleSize(request.targetWidth, request.targetHeight, createBitmapOptions);
                } catch (Throwable th) {
                    th = th;
                    inputStream = openInputStream;
                    Utils.closeQuietly(inputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        InputStream openInputStream2 = contentResolver.openInputStream(request.uri);
        try {
            return BitmapFactory.decodeStream(openInputStream2, null, createBitmapOptions);
        } finally {
            Utils.closeQuietly(openInputStream2);
        }
    }
}
