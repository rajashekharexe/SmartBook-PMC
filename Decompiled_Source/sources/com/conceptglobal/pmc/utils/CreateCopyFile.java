package com.conceptglobal.pmc.utils;

import android.content.Context;
import com.conceptglobal.pmc.PMCApplication;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class CreateCopyFile {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.File] */
    public static File setACopyFile(String str, Context context) {
        try {
            ?? file = new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + File.separator + ".VideoCompressor/UNCompressed Videos/", "VIDEO_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date()) + ".mp4");
            try {
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                r1 = file.exists() ? null : new FileOutputStream(file.getAbsolutePath());
                FileInputStream fileInputStream = new FileInputStream(str);
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read > 0) {
                        r1.write(bArr, 0, read);
                    } else {
                        r1.close();
                        fileInputStream.close();
                        return file;
                    }
                }
            } catch (IOException e) {
                e = e;
                r1 = file;
                e.printStackTrace();
                return r1;
            }
        } catch (IOException e2) {
            e = e2;
        }
    }
}
