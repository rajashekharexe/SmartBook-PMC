package com.conceptglobal.pmc.promotions.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.promotions.common.Queries;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.utils.UtilDeclarations;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.apache.commons.io.FileUtils;

/* loaded from: classes.dex */
public class DownloadReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.DOWNLOAD_COMPLETE".equals(intent.getAction())) {
            try {
                Log.d("DownloadLog", "task done--->---" + UtilDeclarations.getDateTime());
                long longExtra = intent.getLongExtra("extra_download_id", -1L);
                CategoryDAO categoryDAO = new CategoryDAO(context);
                intent.getStringExtra("uri");
                String singleValue = categoryDAO.getSingleValue("select FilePath from DownLoadFileDetails where DownloadID=" + longExtra);
                String singleValue2 = categoryDAO.getSingleValue("select ContentID from DownLoadFileDetails where DownloadID=" + longExtra);
                int parseInt = Integer.parseInt(categoryDAO.getSingleValue("select Type from DownLoadFileDetails where DownloadID=" + longExtra));
                File file = new File(context.getExternalFilesDir(null) + "/" + singleValue);
                if (parseInt == 1) {
                    File file2 = new File(UtilDeclarations.getFilesDirectoryPath(context) + UtilDeclarations.mediaDir + singleValue);
                    FileUtils.copyFile(file, file2);
                    categoryDAO.updateContent(Integer.parseInt(singleValue2), file2.getPath());
                    Intent intent2 = new Intent("DownloadStatus");
                    intent2.putExtra("DownloadKey", longExtra);
                    intent2.putExtra("LocalPath", file2.getPath());
                    LocalBroadcastManager.getInstance(context).sendBroadcast(intent2);
                    categoryDAO.executeQuery(Queries.getInstance().getDownLoadFileDetailsDeleteQry(singleValue2));
                    if (file.exists()) {
                        file.delete();
                    }
                } else if (parseInt == 2) {
                    File file3 = new File(com.conceptglobal.pmc.packageofpractice.utility.FileUtils.getDataDir(context, "ExtractLoc").getAbsolutePath());
                    unzip(file.getAbsolutePath(), file3.getPath());
                    GetDataFromDB.getInstance().executeRawQueryInDB(com.conceptglobal.pmc.common.Queries.getInstance().updateCropDetails2(file3.getPath(), Integer.parseInt(singleValue2)));
                    categoryDAO.executeQuery(Queries.getInstance().getDownLoadFileDetailsDeleteQry(singleValue2));
                    if (file.exists()) {
                        file.delete();
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void unzip(String str, String str2) throws Exception {
        try {
            ZipFile zipFile = new ZipFile(new File(str));
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                unzipEntry(zipFile, entries.nextElement(), str2);
            }
        } catch (Exception e) {
            Log.e("Unzip zip", "Unzip exception", e);
        }
    }

    private void unzipEntry(ZipFile zipFile, ZipEntry zipEntry, String str) throws IOException {
        if (zipEntry.isDirectory()) {
            createDir(new File(str, zipEntry.getName()));
            return;
        }
        File file = new File(str, zipEntry.getName());
        if (!file.getParentFile().exists()) {
            createDir(file.getParentFile());
        }
        Log.v("ZIP E", "Extracting: " + zipEntry);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(zipEntry));
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        while (true) {
            try {
                try {
                    int read = bufferedInputStream.read();
                    if (read == -1) {
                        return;
                    } else {
                        bufferedOutputStream.write(read);
                    }
                } finally {
                    bufferedOutputStream.close();
                }
            } finally {
                bufferedOutputStream.close();
                bufferedInputStream.close();
            }
        }
    }

    private void createDir(File file) {
        if (file.exists()) {
            return;
        }
        Log.v("ZIP E", "Creating dir " + file.getName());
        if (file.mkdirs()) {
            return;
        }
        throw new RuntimeException("Can not create dir " + file);
    }
}
