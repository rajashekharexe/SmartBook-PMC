package org.android10.gintonic.DatabaseHandler;

import android.content.Context;
import java.io.File;

/* loaded from: classes2.dex */
public class FileUtils {
    public static File getDataDir(Context context) {
        File file = new File(context.getExternalFilesDir("").getAbsolutePath());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File getDataDir(Context context, String str) {
        File file = new File(context.getExternalFilesDir("").getAbsolutePath() + "/" + str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }
}
