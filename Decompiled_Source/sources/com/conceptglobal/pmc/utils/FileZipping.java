package com.conceptglobal.pmc.utils;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes.dex */
public class FileZipping {
    private int BUFFER = 2048;
    private Activity activity;
    private Context context;

    public FileZipping(Context context) {
        this.context = context;
    }

    public String zip(String[] strArr, String str) {
        try {
            try {
                ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str)));
                byte[] bArr = new byte[this.BUFFER];
                for (int i = 0; i < strArr.length; i++) {
                    if (strArr[i] != null) {
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(strArr[i]), this.BUFFER);
                        String str2 = strArr[i];
                        zipOutputStream.putNextEntry(new ZipEntry(str2.substring(str2.lastIndexOf("/") + 1)));
                        while (true) {
                            int read = bufferedInputStream.read(bArr, 0, this.BUFFER);
                            if (read == -1) {
                                break;
                            }
                            zipOutputStream.write(bArr, 0, read);
                        }
                        bufferedInputStream.close();
                    }
                }
                zipOutputStream.close();
                return str;
            } catch (Exception e) {
                e.printStackTrace();
                Log.d("Done", "Zipping Done");
                return null;
            }
        } finally {
            Log.d("Done", "Zipping Done");
        }
    }

    public String zip_File(String str, String str2) throws Exception {
        try {
            try {
                ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str2)));
                byte[] bArr = new byte[this.BUFFER];
                if (str != null) {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str), this.BUFFER);
                    zipOutputStream.putNextEntry(new ZipEntry(str.substring(str.lastIndexOf("/") + 1)));
                    while (true) {
                        int read = bufferedInputStream.read(bArr, 0, this.BUFFER);
                        if (read == -1) {
                            break;
                        }
                        zipOutputStream.write(bArr, 0, read);
                    }
                    bufferedInputStream.close();
                }
                zipOutputStream.close();
                return str2;
            } catch (Exception e) {
                throw e;
            }
        } finally {
            Log.d("Done", "Zipping Done");
        }
    }

    public static String getIMEIFromFile() {
        File file = new File(ConstantDeclarations.imeiFilePath);
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
            }
            bufferedReader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return String.valueOf(sb);
    }
}
