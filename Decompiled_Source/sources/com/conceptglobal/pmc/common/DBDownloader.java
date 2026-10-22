package com.conceptglobal.pmc.common;

import android.app.Activity;
import android.util.Log;
import android.widget.ProgressBar;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.interfaces.IsCompleteListener;
import com.conceptglobal.pmc.model.GetUserDetailsModel;
import com.conceptglobal.pmc.utils.DBPatchQueries;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* loaded from: classes.dex */
public class DBDownloader {
    private ProgressBar downloadprg;
    private Activity parent;
    private boolean isDownloaded = false;
    private int tmpWritten = 0;
    private int byteWritten = 0;

    public DBDownloader(Activity activity, ProgressBar progressBar) {
        this.parent = activity;
        this.downloadprg = progressBar;
    }

    public DBDownloader(Activity activity) {
        this.parent = activity;
    }

    public void dataBaseDownload(final String str, final String str2, final String str3, final IsCompleteListener isCompleteListener, final GetUserDetailsModel getUserDetailsModel, final String str4) {
        this.isDownloaded = false;
        try {
            new Thread(new Runnable() { // from class: com.conceptglobal.pmc.common.DBDownloader.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        DBDownloader dBDownloader = DBDownloader.this;
                        dBDownloader.isDownloaded = dBDownloader.dbDownload(str, str2);
                        DBDownloader.this.unZipDatabaseFile(str2, str3);
                        DBPatchQueries.ExecuteDBPatchQueries(DBDownloader.this.parent);
                        DBDownloader.this.insertUserDetals(getUserDetailsModel, str4);
                        DBDownloader.this.deleteTerritoryData();
                        SharedPrefManager.setMode(DBDownloader.this.parent, "");
                        isCompleteListener.isComplete(DBDownloader.this.isDownloaded);
                    } catch (Exception e) {
                        e.printStackTrace();
                        isCompleteListener.isComplete(DBDownloader.this.isDownloaded);
                    }
                }
            }).start();
        } catch (Exception unused) {
            isCompleteListener.isComplete(this.isDownloaded);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteTerritoryData() {
        try {
            GetDataFromDB getDataFromDB = GetDataFromDB.getInstance();
            getDataFromDB.executeRawQuery(Queries.getInstance().getCropQry());
            getDataFromDB.executeRawQuery(Queries.getInstance().getLandQry());
            getDataFromDB.executeRawQuery(Queries.getInstance().getFarmerQry());
            getDataFromDB.executeRawQuery(Queries.getInstance().getDealerQry());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dbDownload(String str, String str2) throws Exception {
        deleteDirectory(new File(str2));
        return downloadDataBase(str, str2);
    }

    public boolean deleteDirectory(File file) {
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return true;
            }
            for (int i = 0; i < listFiles.length; i++) {
                if (listFiles[i].isDirectory()) {
                    deleteDirectory(listFiles[i]);
                } else {
                    listFiles[i].delete();
                }
            }
        }
        return file.delete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean unZipDatabaseFile(String str, String str2) {
        Log.e("UnZipping", "---DB");
        try {
            FileInputStream fileInputStream = new FileInputStream(str + str2);
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(fileInputStream));
            byte[] bArr = new byte[2048];
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                    FileOutputStream fileOutputStream = new FileOutputStream(str + nextEntry.getName());
                    while (true) {
                        int read = zipInputStream.read(bArr);
                        if (read != -1) {
                            fileOutputStream.write(bArr, 0, read);
                        }
                    }
                    fileOutputStream.close();
                    zipInputStream.closeEntry();
                } else {
                    zipInputStream.close();
                    fileInputStream.close();
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean downloadDataBase(String str, String str2) throws Exception {
        Log.e("SDCard Path", str2);
        try {
            URLConnection openConnection = getURL(str).openConnection();
            int contentLength = openConnection.getContentLength();
            if (contentLength != 0) {
                InputStream inputStream = openConnection.getInputStream();
                String substring = str.substring(str.lastIndexOf("/") + 1);
                new File(str2).mkdirs();
                String str3 = str2 + substring;
                new File(str3);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str3));
                byte[] bArr = new byte[2048];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    bufferedOutputStream.write(bArr, 0, read);
                    int i = this.byteWritten + read;
                    this.byteWritten = i;
                    this.tmpWritten = i;
                    final int i2 = (i * 100) / contentLength;
                    this.parent.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.common.DBDownloader.2
                        @Override // java.lang.Runnable
                        public void run() {
                            DBDownloader.this.downloadprg.setProgress(i2);
                        }
                    });
                }
                inputStream.close();
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
            } else {
                Log.d(getClass().getName(), "No File Exists");
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
    }

    public URL getURL(String str) {
        try {
            return new URL(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void insertUserDetals(GetUserDetailsModel getUserDetailsModel, String str) {
        try {
            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteUserDetails());
            InsertDataIntoDB.insertUserDetails(getUserDetailsModel, str);
            GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().updateUserImEiStatus(getUserDetailsModel.getActive()));
            if (getUserDetailsModel.getUserrolemapping() != null && getUserDetailsModel.getUserrolemapping().size() != 0) {
                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteUserRolemapping());
                InsertDataIntoDB.insertUserRoleMapping(getUserDetailsModel);
            }
            if (getUserDetailsModel.getTerritoryList() == null || getUserDetailsModel.getTerritoryList().size() == 0) {
                return;
            }
            InsertDataIntoDB.insertTerritoryList(getUserDetailsModel);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
