package com.conceptglobal.pmc.utils;

import android.content.Context;
import java.io.File;

/* loaded from: classes.dex */
public class FileUtils {
    public static File getDataDir(Context context) {
        String absolutePath;
        if (ConstantDeclarations.DatabaseLocation == 1) {
            absolutePath = context.getFilesDir().getAbsolutePath();
        } else if (ConstantDeclarations.DatabaseLocation == 2) {
            absolutePath = context.getExternalFilesDir("").getAbsolutePath();
        } else {
            absolutePath = ConstantDeclarations.DatabaseLocation == 3 ? context.getExternalMediaDirs()[0].getAbsolutePath() : null;
        }
        File file = new File(absolutePath);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File getDataDir(Context context, String str) {
        String absolutePath;
        if (ConstantDeclarations.DatabaseLocation == 1) {
            absolutePath = context.getFilesDir().getAbsolutePath() + "/" + str;
        } else if (ConstantDeclarations.DatabaseLocation == 2) {
            absolutePath = context.getExternalFilesDir("").getAbsolutePath() + "/" + str;
        } else {
            absolutePath = ConstantDeclarations.DatabaseLocation == 3 ? context.getExternalMediaDirs()[0].getAbsolutePath() : "";
        }
        File file = new File(absolutePath);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File getPicDataDir(Context context) {
        String absolutePath;
        if (ConstantDeclarations.MediaLocation == 1) {
            absolutePath = context.getFilesDir().getAbsolutePath();
        } else if (ConstantDeclarations.MediaLocation == 2) {
            absolutePath = context.getExternalFilesDir("").getAbsolutePath();
        } else {
            absolutePath = ConstantDeclarations.MediaLocation == 3 ? context.getExternalMediaDirs()[0].getAbsolutePath() : null;
        }
        File file = new File(absolutePath);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File getPDFlocationsDir(Context context) {
        File file = new File(context.getExternalMediaDirs()[0].getAbsolutePath());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }
}
