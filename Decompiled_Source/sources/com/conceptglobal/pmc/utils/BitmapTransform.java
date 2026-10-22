package com.conceptglobal.pmc.utils;

import android.graphics.Bitmap;
import com.squareup.picasso.Transformation;

/* loaded from: classes.dex */
public class BitmapTransform implements Transformation {
    int maxHeight;
    int maxWidth;

    public BitmapTransform(int i, int i2) {
        this.maxWidth = i;
        this.maxHeight = i2;
    }

    @Override // com.squareup.picasso.Transformation
    public Bitmap transform(Bitmap bitmap) {
        int i;
        int width;
        if (bitmap.getWidth() > bitmap.getHeight()) {
            width = this.maxWidth;
            i = (int) (width * (bitmap.getHeight() / bitmap.getWidth()));
        } else {
            i = this.maxHeight;
            width = (int) (i * (bitmap.getWidth() / bitmap.getHeight()));
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, width, i, false);
        if (createScaledBitmap != bitmap) {
            bitmap.recycle();
        }
        return createScaledBitmap;
    }

    @Override // com.squareup.picasso.Transformation
    public String key() {
        return this.maxWidth + "x" + this.maxHeight;
    }
}
