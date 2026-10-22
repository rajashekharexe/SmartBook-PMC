package com.conceptglobal.pmc.utils;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.os.Environment;
import java.io.File;

/* loaded from: classes.dex */
public class CompressHelper {
    public File dir;

    public int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int round;
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        if (i3 > i2 || i4 > i) {
            round = Math.round(i3 / i2);
            int round2 = Math.round(i4 / i);
            if (round >= round2) {
                round = round2;
            }
        } else {
            round = 1;
        }
        while ((i4 * i3) / (round * round) > i * i2 * 2) {
            round++;
        }
        return round;
    }

    public File createBaseFormLocation(String str, Context context) {
        if (Environment.getExternalStorageState().equals("mounted")) {
            this.dir = new File(ConstantDeclarations.getInstance().getPmcRootFolder() + str);
        } else {
            this.dir = context.getCacheDir();
        }
        if (!this.dir.exists()) {
            this.dir.mkdirs();
        }
        return this.dir;
    }

    public File getCompressLoaction(Context context) {
        File file = new File(ConstantDeclarations.getInstance().getPicStoragePath());
        this.dir = file;
        if (!file.exists()) {
            this.dir.mkdirs();
        }
        return this.dir;
    }

    public File getInwardImageLoaction(Context context) {
        if (Environment.getExternalStorageState().equals("mounted")) {
            this.dir = new File(ConstantDeclarations.getInstance().getTempPath());
        } else {
            this.dir = context.getCacheDir();
        }
        if (!this.dir.exists()) {
            this.dir.mkdirs();
        }
        return this.dir;
    }

    public File getOriginalImageDir(Context context) {
        if (Environment.getExternalStorageState().equals("mounted")) {
            this.dir = new File(ConstantDeclarations.getInstance().getTempPath());
        } else {
            this.dir = context.getCacheDir();
        }
        if (!this.dir.exists()) {
            this.dir.mkdirs();
        }
        return this.dir;
    }

    public File getVideoLocation(Context context) {
        if (Environment.getExternalStorageState().equals("mounted")) {
            this.dir = new File(ConstantDeclarations.getInstance().getVideoStoragePath());
        } else {
            this.dir = context.getCacheDir();
        }
        if (!this.dir.exists()) {
            this.dir.mkdirs();
        }
        return this.dir;
    }
}
