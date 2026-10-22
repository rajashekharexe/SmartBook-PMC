package com.conceptglobal.pmc.sync;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Toast;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.ResponseModel;
import com.conceptglobal.pmc.sync.MasterSync.MasterSyncAsyncTask;
import com.conceptglobal.pmc.utils.CustomProgressDialog;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.gson.Gson;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes.dex */
public class ApplicationPatch {
    private static final String TAG = "ApplicationPatch";
    private String appPatchResponse;
    public String appPatchURL;
    private Context context;
    public ApplicationPatchAsyncTask mTask;
    private String response;
    private String urlString;
    public WebService webServices;
    private String applicationpath = null;
    private int appSize = 0;
    private int tmpWritten = 0;
    public HttpURLConnection URLConn = null;
    public boolean isReqCancelled = false;
    private String patchStatus = "NoPatchAvailable";

    public ApplicationPatch(Context context) {
        this.context = context;
    }

    public void startPatchSync(boolean z) {
        this.urlString = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodAppPatch() + "/" + UtilDeclarations.getApplicationVersion(this.context) + "/" + ConstantsPMC.getInstance().getDeviceID();
        this.webServices = WebService.getInstance();
        try {
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            if (!ConstantsPMC.isRequestCancelled) {
                this.response = this.webServices.sendGetRequest(this.urlString, wcfToken);
                ResponseModel responseModel = (ResponseModel) new Gson().fromJson((Reader) new StringReader(this.response), ResponseModel.class);
                this.response = (String) responseModel.getData();
                if (responseModel.getStatus().equals("AUTHORISED")) {
                    String str = this.response;
                    if (str != null && str.length() > 4) {
                        try {
                            String replace = this.response.replace("\\", "");
                            this.response = replace;
                            String replace2 = replace.replace("\"", "");
                            this.response = replace2;
                            if (!replace2.trim().equalsIgnoreCase("SameVersion") && !this.response.trim().equalsIgnoreCase("failed")) {
                                if (!this.response.contains("Not Authorised") && this.response.trim().length() != 0) {
                                    this.appPatchURL = this.response.replace("\\", "").replace("\"", "");
                                    this.patchStatus = "PatchAvailable";
                                }
                                this.appPatchResponse = this.response;
                            }
                            this.appPatchResponse = this.response;
                        } catch (Exception e) {
                            PLog.e(TAG, e);
                        }
                    }
                } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                    new GetToken(this.context, 2).StartGetToken();
                    Class<?> cls = Class.forName("com.conceptglobal.pmc.sync.ApplicationPatch");
                    Method declaredMethod = cls.getDeclaredMethod("startPatchSync", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(cls.newInstance(), Boolean.valueOf(z));
                }
            }
            if (this.patchStatus.equalsIgnoreCase("PatchAvailable")) {
                if (this.appPatchURL == null) {
                    updatePatchStatusTable("NoPatchAvailable");
                } else if (new File(this.appPatchURL).length() == this.appSize) {
                    updatePatchStatusTable("PatchAvailable");
                }
            } else {
                updatePatchStatusTable("NoPatchAvailable");
            }
        } catch (Exception e2) {
            PLog.e(TAG, e2);
        }
        ConstantsPMC.isRequestCancelled = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePatchStatusTable(String str) {
        try {
            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.updatePatchDetailsQry("2", "AppPatch", str, this.applicationpath));
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    private String downloadLatestApkFromServer(boolean z) {
        ApplicationPatchAsyncTask applicationPatchAsyncTask;
        String str = this.appPatchURL;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.appPatchURL).openConnection();
            this.URLConn = httpURLConnection;
            int contentLength = httpURLConnection.getContentLength();
            this.appSize = contentLength;
            if (contentLength <= 0) {
                return "No";
            }
            InputStream inputStream = this.URLConn.getInputStream();
            String str2 = this.appPatchURL;
            String substring = str2.substring(str2.lastIndexOf("/") + 1);
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            this.applicationpath = str + substring;
            File file2 = new File(this.applicationpath);
            if (file2.exists()) {
                file2.delete();
            }
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(this.applicationpath));
            byte[] bArr = new byte[1024];
            int i = 0;
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                if (ConstantsPMC.isRequestCancelled) {
                    UtilDeclarations.deleteDir(new File(this.appPatchURL));
                    break;
                }
                bufferedOutputStream.write(bArr, 0, read);
                i += read;
                this.tmpWritten = i;
                if (z && (applicationPatchAsyncTask = this.mTask) != null) {
                    applicationPatchAsyncTask.showProgress("" + ((i * 100) / this.appSize));
                }
            }
            inputStream.close();
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            Log.i(TAG, "Downloaed -" + this.appSize + "--" + this.tmpWritten);
            return "Yes";
        } catch (Exception e) {
            Log.i(TAG, "Exception -" + e.getMessage());
            return "No";
        }
    }

    public class ApplicationPatchAsyncTask extends AsyncTask<String, String, String> {
        private CustomProgressDialog customProgressDialog;

        public ApplicationPatchAsyncTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            CustomProgressDialog customProgressDialog = new CustomProgressDialog(ApplicationPatch.this.context, CustomProgressDialog.progressbarType.PERCENT_BAR, "ApplicationPatchURL");
            this.customProgressDialog = customProgressDialog;
            customProgressDialog.showDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseWaitDialog()));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) {
            ConstantsPMC.isRequestCancelled = isCancelled();
            ApplicationPatch.this.startPatchSync(true);
            return ApplicationPatch.this.patchStatus;
        }

        public void showProgress(String str) {
            publishProgress(str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(String... strArr) {
            if (strArr[0].equals("DownloadStarted")) {
                this.customProgressDialog.setProgressBar(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_downloadingNewAppPW()), false, 100);
            } else {
                this.customProgressDialog.setProgress(Integer.parseInt(strArr[0]), 100);
            }
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            super.onCancelled();
            ConstantsPMC.isRequestCancelled = true;
            this.customProgressDialog.dismiss();
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            Log.i(ApplicationPatch.TAG, "result--" + str);
            CustomProgressDialog customProgressDialog = this.customProgressDialog;
            if (customProgressDialog != null && customProgressDialog.isShowing()) {
                Context baseContext = ((ContextWrapper) this.customProgressDialog.getContext()).getBaseContext();
                if (!(baseContext instanceof Activity)) {
                    this.customProgressDialog.dismiss();
                } else if (!((Activity) baseContext).isFinishing()) {
                    this.customProgressDialog.dismiss();
                }
            }
            if (ApplicationPatch.this.appPatchResponse != null) {
                if (ApplicationPatch.this.appPatchResponse.equalsIgnoreCase("SameVersion") || ApplicationPatch.this.appPatchResponse.trim().equalsIgnoreCase("failed")) {
                    Toast.makeText(ApplicationPatch.this.context, ApplicationPatch.this.appPatchResponse, 0).show();
                } else if (ApplicationPatch.this.appPatchResponse.contains("Not Authorised") || ApplicationPatch.this.appPatchResponse.trim().length() == 0) {
                    Toast.makeText(ApplicationPatch.this.context, ApplicationPatch.this.appPatchResponse, 0).show();
                }
            }
            if (!ConstantsPMC.isRequestCancelled) {
                if (str.equalsIgnoreCase("PatchAvailable")) {
                    String packageName = ApplicationPatch.this.context.getApplicationContext().getPackageName();
                    try {
                        ApplicationPatch.this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + packageName)));
                    } catch (ActivityNotFoundException unused) {
                        ApplicationPatch.this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + packageName)));
                    }
                }
                ApplicationPatch.this.updatePatchStatusTable("NoPatchAvailable");
                MasterSync masterSync = new MasterSync(ApplicationPatch.this.context, true);
                masterSync.mTask = masterSync.new MasterSyncAsyncTask();
                masterSync.mTask.execute(new Void[0]);
            }
            ConstantsPMC.isRequestCancelled = false;
        }
    }
}
