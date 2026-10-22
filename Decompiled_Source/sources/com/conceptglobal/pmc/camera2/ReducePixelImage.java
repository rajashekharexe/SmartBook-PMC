package com.conceptglobal.pmc.camera2;

import android.media.Image;

/* loaded from: classes.dex */
public class ReducePixelImage implements Runnable {
    Image mCapturedImage;
    int mHeight;
    IBitmapConnector mIBitmapConnector;
    int mWidth;

    public ReducePixelImage(Image image, int i, int i2, IBitmapConnector iBitmapConnector) {
        this.mWidth = i;
        this.mHeight = i2;
        this.mCapturedImage = image;
        this.mIBitmapConnector = iBitmapConnector;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.mIBitmapConnector.setReducedBitmap(this.mCapturedImage);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
