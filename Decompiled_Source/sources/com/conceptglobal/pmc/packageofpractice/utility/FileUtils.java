package com.conceptglobal.pmc.packageofpractice.utility;

import android.content.Context;
import java.io.File;

/* loaded from: classes.dex */
public class FileUtils {
    public static File getDataDir(Context context) {
        File file = new File(context.getFilesDir().getAbsolutePath() + "/SampleZip");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File getDataDir(Context context, String str) {
        File file = new File(context.getFilesDir().getAbsolutePath() + "/" + str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }
}
