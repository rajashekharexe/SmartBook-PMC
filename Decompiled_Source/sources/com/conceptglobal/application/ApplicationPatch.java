package com.conceptglobal.application;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Toast;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;

/* loaded from: classes.dex */
public class ApplicationPatch {
    private ApplicationDownloader mApplicationDownloader;
    private Context mContext;
    private String mPackageName;
    private String mPath;
    private boolean mStatus;
    private String mURL;
    String abs = null;
    private int tmpWritten = 0;

    public ApplicationPatch(String str, String str2, String str3, Context context) {
        this.mPackageName = str;
        this.mPath = str2;
        this.mURL = str3;
        this.mContext = context;
    }

    public void callApplicationPatch(boolean z) {
        this.mStatus = z;
        ApplicationDownloader applicationDownloader = new ApplicationDownloader(this, null);
        this.mApplicationDownloader = applicationDownloader;
        applicationDownloader.execute(new Activity[0]);
    }

    private class ApplicationDownloader extends AsyncTask<Activity, Void, Void> {
        private final ProgressDialog dialog;
        private String status;

        private ApplicationDownloader() {
            this.status = "";
            this.dialog = new ProgressDialog(ApplicationPatch.this.mContext);
        }

        /* synthetic */ ApplicationDownloader(ApplicationPatch applicationPatch, ApplicationDownloader applicationDownloader) {
            this();
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            if (ApplicationPatch.this.mStatus) {
                this.dialog.setMessage("Downloading application...");
                this.dialog.show();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Activity... activityArr) {
            ApplicationPatch.this.deleteDirectory(new File(ApplicationPatch.this.mPath));
            this.status = ApplicationPatch.this.applicationPatch();
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r4) {
            ProgressDialog progressDialog;
            if (ApplicationPatch.this.mStatus && (progressDialog = this.dialog) != null && progressDialog.isShowing()) {
                this.dialog.dismiss();
            }
            if (!this.status.equalsIgnoreCase("Yes")) {
                if (ApplicationPatch.this.mStatus) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(ApplicationPatch.this.mContext);
                    builder.setMessage("There is no application to download").setCancelable(false).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.application.ApplicationPatch.ApplicationDownloader.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.dismiss();
                        }
                    });
                    builder.show();
                    return;
                }
                return;
            }
            ApplicationPatch.this.afterApplicationpatching();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String applicationPatch() {
        try {
            InputStream inputStream = getPatchUpdatesURL(this.mURL).openConnection().getInputStream();
            String str = this.mURL;
            String substring = str.substring(str.lastIndexOf("/") + 1);
            new File(this.mPath).mkdirs();
            this.abs = String.valueOf(this.mPath) + substring;
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
                    Log.v("Download complete:::::::", String.valueOf(i) + "bytes");
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
        if (this.abs == null) {
            if (this.mStatus) {
                Toast.makeText(this.mContext, "There is no application to download", 1).show();
            }
        } else {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.mPackageName.toString()));
            intent.setDataAndType(Uri.fromFile(new File(this.abs)), "application/vnd.android.package-archive");
            new Intent();
            intent.setFlags(268435456);
            this.mContext.startActivity(intent);
        }
    }
}
