package com.conceptglobal.pmc.sync;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.utils.FileUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

/* loaded from: classes.dex */
public class ApplicationPatchNew {
    private ApplicationDownloader mApplicationDownloader;
    private Context mContext;
    private String mPackageName;
    private String mPath;
    private boolean mStatus;
    private String mURL;
    String abs = null;
    private int tmpWritten = 0;

    public ApplicationPatchNew(String str, String str2, String str3, Context context) {
        this.mPackageName = str;
        this.mPath = str2;
        this.mURL = str3;
        this.mContext = context;
    }

    public void callApplicationPatch(boolean z) {
        ApplicationDownloader applicationDownloader = new ApplicationDownloader();
        this.mApplicationDownloader = applicationDownloader;
        applicationDownloader.execute(new Activity[0]);
    }

    private class ApplicationDownloader extends AsyncTask<Activity, Void, Void> {
        private final ProgressDialog dialog;
        private String status;

        private ApplicationDownloader() {
            this.status = "";
            this.dialog = new ProgressDialog(ApplicationPatchNew.this.mContext);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.dialog.setMessage("Downloading application...");
            this.dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Activity... activityArr) {
            ApplicationPatchNew.this.deleteDirectory(new File(ApplicationPatchNew.this.mPath));
            this.status = ApplicationPatchNew.this.applicationPatch();
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r4) {
            if (this.dialog.isShowing()) {
                this.dialog.dismiss();
            }
            if (this.status.equalsIgnoreCase("Yes")) {
                ApplicationPatchNew.this.afterApplicationpatching();
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(ApplicationPatchNew.this.mContext);
            builder.setMessage("There is no application to download").setCancelable(false).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.sync.ApplicationPatchNew.ApplicationDownloader.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            });
            builder.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String applicationPatch() {
        try {
            InputStream inputStream = getPatchUpdatesURL(this.mURL).openConnection().getInputStream();
            String str = this.mURL;
            String substring = str.substring(str.lastIndexOf("/") + 1);
            new File(this.mPath).mkdirs();
            this.abs = this.mPath + substring;
            new File(this.abs);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(this.abs));
            byte[] bArr = new byte[1024];
            int i = 0;
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    bufferedOutputStream.write(bArr, 0, read);
                    i += read;
                    this.tmpWritten = i;
                    Log.v("Download complete..", this.tmpWritten + "bytes");
                } else {
                    inputStream.close();
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    return "Yes";
                }
            }
        } catch (Exception unused) {
            return "No";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
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

    private URL getPatchUpdatesURL(String str) {
        try {
            return new URL(str);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void afterApplicationpatching() {
        Uri fromFile;
        try {
            File file = new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + "/Applicationpatch.txt");
            file.createNewFile();
            Runtime.getRuntime().exec("logcat -d -f " + file.getAbsolutePath());
        } catch (IOException unused) {
        }
        if (this.abs == null) {
            Toast.makeText(this.mContext, "There is no application to download", 1).show();
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                fromFile = FileProvider.getUriForFile(this.mContext, this.mContext.getApplicationInfo().packageName + ".provider", new File(this.abs));
            } else {
                fromFile = Uri.fromFile(new File(this.abs));
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(1);
            intent.addFlags(268435456);
            intent.setDataAndType(fromFile, "application/vnd.android.package-archive");
            this.mContext.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
