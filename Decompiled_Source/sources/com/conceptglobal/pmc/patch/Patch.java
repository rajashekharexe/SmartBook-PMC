package com.conceptglobal.pmc.patch;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.conceptglobal.pmc.LoginActivity;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes.dex */
public class Patch {
    private ApplicationDownloader mApplicationDownloader;
    private Context mContext;
    private String mPackageName;
    private String mPath;
    private boolean mStatus;
    private String mURL;
    private ProgressBar progressBar;
    String abs = null;
    private int tmpWritten = 0;

    public Patch(String str, String str2, String str3, Context context) {
        this.mPackageName = str;
        this.mPath = str2;
        this.mURL = str3;
        this.mContext = context;
    }

    public void callApplicationPatch(boolean z) {
        this.mStatus = z;
        ApplicationDownloader applicationDownloader = new ApplicationDownloader();
        this.mApplicationDownloader = applicationDownloader;
        applicationDownloader.execute(new Activity[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String applicationPatch() {
        try {
            URLConnection openConnection = getPatchUpdatesURL(this.mURL).openConnection();
            InputStream inputStream = openConnection.getInputStream();
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
                    Log.v("Download complete::::::", this.tmpWritten + "bytes");
                    if (this.progressBar != null) {
                        final int contentLength = (this.tmpWritten * 100) / openConnection.getContentLength();
                        ((LoginActivity) this.mContext).runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.patch.Patch.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Patch.this.progressBar.setProgress(contentLength);
                            }
                        });
                    }
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
                Toast.makeText(this.mContext, "There is no application to download", 0).show();
                return;
            }
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.mPackageName.toString()));
        intent.setDataAndType(FileProvider.getUriForFile(this.mContext, this.mContext.getApplicationContext().getPackageName() + ".Provider", new File(this.abs)), "application/vnd.android.package-archive");
        intent.addFlags(64);
        intent.setFlags(268435456);
        this.mContext.startActivity(intent);
    }

    private class ApplicationDownloader extends AsyncTask<Activity, Void, Void> {
        private final ProgressDialog dialog;
        private String status;

        private ApplicationDownloader() {
            this.status = "";
            ProgressDialog progressDialog = new ProgressDialog(Patch.this.mContext);
            this.dialog = progressDialog;
            progressDialog.setCanceledOnTouchOutside(false);
            progressDialog.setCancelable(false);
            ProgressBar unused = Patch.this.progressBar;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            if (Patch.this.mStatus) {
                this.dialog.setMessage("Downloading application...");
                this.dialog.show();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Activity... activityArr) {
            Patch.this.deleteDirectory(new File(Patch.this.mPath));
            this.status = Patch.this.applicationPatch();
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r4) {
            ProgressDialog progressDialog;
            if (Patch.this.mStatus && (progressDialog = this.dialog) != null && progressDialog.isShowing()) {
                this.dialog.dismiss();
            }
            if (this.status.equalsIgnoreCase("Yes")) {
                Patch.this.afterApplicationpatching();
                return;
            }
            if (Patch.this.mStatus) {
                AlertDialog.Builder builder = new AlertDialog.Builder(Patch.this.mContext);
                builder.setMessage("There is no application to download").setCancelable(false).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.patch.Patch.ApplicationDownloader.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                    }
                });
                AlertDialog show = builder.show();
                if (UtilDeclarations.isTablet(Patch.this.mContext)) {
                    UtilDeclarations.makeTabletDialogTextlarge(show);
                }
            }
        }
    }

    public void setProgressBar(ProgressBar progressBar) {
        this.progressBar = progressBar;
    }
}
