package com.squareup.picasso;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
class AssetBitmapHunter extends BitmapHunter {
    protected static final String ANDROID_ASSET = "android_asset";
    private static final int ASSET_PREFIX_LENGTH = 22;
    private AssetManager assetManager;

    public AssetBitmapHunter(Context context, Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action) {
        super(picasso, dispatcher, cache, stats, action);
        this.assetManager = context.getAssets();
    }

    @Override // com.squareup.picasso.BitmapHunter
    Bitmap decode(Request request) throws IOException {
        return decodeAsset(request.uri.toString().substring(ASSET_PREFIX_LENGTH));
    }

    @Override // com.squareup.picasso.BitmapHunter
    Picasso.LoadedFrom getLoadedFrom() {
        return Picasso.LoadedFrom.DISK;
    }

    Bitmap decodeAsset(String str) throws IOException {
        BitmapFactory.Options createBitmapOptions = createBitmapOptions(this.data);
        InputStream inputStream = null;
        if (this.data.hasSize()) {
            createBitmapOptions.inJustDecodeBounds = true;
            try {
                InputStream open = this.assetManager.open(str);
                try {
                    BitmapFactory.decodeStream(open, null, createBitmapOptions);
                    Utils.closeQuietly(open);
                    calculateInSampleSize(this.data.targetWidth, this.data.targetHeight, createBitmapOptions);
                } catch (Throwable th) {
                    th = th;
                    inputStream = open;
                    Utils.closeQuietly(inputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        InputStream open2 = this.assetManager.open(str);
        try {
            return BitmapFactory.decodeStream(open2, null, createBitmapOptions);
        } finally {
            Utils.closeQuietly(open2);
        }
    }
}
