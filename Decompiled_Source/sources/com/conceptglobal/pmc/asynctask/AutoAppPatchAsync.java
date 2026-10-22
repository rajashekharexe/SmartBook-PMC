package com.conceptglobal.pmc.asynctask;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.widget.Toast;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.sync.DbPatch;
import com.conceptglobal.pmc.sync.DbPatch.DbPatchAsyncTask;
import com.conceptglobal.pmc.sync.GetToken;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.firebase.messaging.Constants;
import java.io.IOException;
import org.apache.http.client.ClientProtocolException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AutoAppPatchAsync extends AsyncTask<Void, Void, String> {
    private Context context;
    private Exception error = null;
    private boolean isPprogressBarRequired;
    private String urlString;

    public AutoAppPatchAsync(Context context, String str, Boolean bool) {
        this.context = context;
        this.urlString = str;
        this.isPprogressBarRequired = bool.booleanValue();
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        if (this.isPprogressBarRequired) {
            UtilDeclarations.showProgressDialog(this.context);
        }
        super.onPreExecute();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        WebService webService = WebService.getInstance();
        String str = null;
        try {
            try {
                str = webService.sendGetRequest(this.urlString, ConstantsPMC.getInstance().getWcfToken());
                if (str instanceof String) {
                    if (str != null && str.length() > 4) {
                        try {
                            JSONObject jSONObject = new JSONObject(str);
                            if (jSONObject.getString("status").equals("AUTHORISED")) {
                                if (jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) != null) {
                                    str = jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                                }
                            } else if (jSONObject.getString("status").equals("UNAUTHORISED") && jSONObject.getString("statusMessage").equals("Invalid Token")) {
                                new GetToken(this.context, 2).StartGetToken();
                                this.error = new Exception();
                            }
                        } catch (Exception e) {
                            this.error = e;
                            PLog.e("AutoAppPatchAsync", e);
                        }
                    }
                } else {
                    PLog.e("APPLICATION_PATCH", this.error);
                }
            } catch (Exception e2) {
                this.error = e2;
                PLog.e("AutoAppPatchAsync", e2);
            }
        } catch (ClientProtocolException e3) {
            this.error = e3;
            PLog.e("AutoAppPatchAsync", e3);
        } catch (IOException e4) {
            this.error = e4;
            PLog.e("AutoAppPatchAsync", e4);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((AutoAppPatchAsync) str);
        if (this.isPprogressBarRequired) {
            UtilDeclarations.dismissProgressDialog();
        }
        if (this.error == null && str != null) {
            String replace = str.replace("\\", "").replace("\"", "");
            if (replace.trim().equalsIgnoreCase("SameVersion") || replace.trim().equalsIgnoreCase("failed")) {
                Toast.makeText(this.context, replace, 0).show();
            } else if (replace.contains("Not Authorised") || replace.trim().length() == 0) {
                Toast.makeText(this.context, replace, 0).show();
            } else {
                String packageName = this.context.getApplicationContext().getPackageName();
                try {
                    this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + packageName)));
                } catch (ActivityNotFoundException unused) {
                    this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + packageName)));
                }
            }
        }
        if (this.context.toString().contains("LoginActivity")) {
            return;
        }
        DbPatch dbPatch = new DbPatch(this.context, true);
        dbPatch.mTask = dbPatch.new DbPatchAsyncTask();
        dbPatch.mTask.execute(new String[0]);
    }
}
