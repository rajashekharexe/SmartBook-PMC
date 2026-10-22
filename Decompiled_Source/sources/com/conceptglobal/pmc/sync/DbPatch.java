package com.conceptglobal.pmc.sync;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Toast;
import com.conceptglobal.pmc.ExitActivity;
import com.conceptglobal.pmc.MainHomePageActivity;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.interfaces.OnRequestFinishListener;
import com.conceptglobal.pmc.model.ResponseModel;
import com.conceptglobal.pmc.model.SendDetailsForRetailersModel;
import com.conceptglobal.pmc.utils.CustomProgressDialog;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import org.apache.http.client.ClientProtocolException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DbPatch {
    private static final String TAG = "DbPatch";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    private boolean isFromLogin;
    private boolean isUpdateStatusBar;
    private boolean logoutApplication;
    private Context mContext;
    private OnRequestFinishListener mRequestFinishListner;
    public DbPatchAsyncTask mTask;
    public WebService webServices;
    public boolean isPatchAvailable = false;
    private List<String> successQueryIds = new ArrayList();

    public DbPatch(Context context, boolean z) {
        this.mContext = context;
        this.isUpdateStatusBar = z;
    }

    public DbPatch(Context context, boolean z, boolean z2) {
        this.isFromLogin = z2;
        this.mContext = context;
        this.isUpdateStatusBar = z;
    }

    public String startDbPatch() {
        Log.i("dbptch sync start Time", Calendar.getInstance().getTime().toString());
        getPatchUpdate();
        String str = "nopatch";
        if (this.successQueryIds != null && !ConstantsPMC.isRequestCancelled && this.successQueryIds.size() != 0) {
            str = sendAcknowledgeToServer();
        }
        updatePatchStatusTable();
        Log.i("dbptch sync end Time", Calendar.getInstance().getTime().toString());
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0236 A[Catch: all -> 0x02d1, Exception -> 0x02d4, TRY_LEAVE, TryCatch #8 {Exception -> 0x02d4, blocks: (B:17:0x00ba, B:18:0x00c1, B:20:0x00c7, B:23:0x00db, B:25:0x02a8, B:27:0x00e8, B:29:0x00f4, B:31:0x0100, B:32:0x0112, B:34:0x011e, B:35:0x0130, B:37:0x013a, B:38:0x014f, B:40:0x015b, B:41:0x018d, B:43:0x01b1, B:45:0x01bd, B:51:0x0236, B:70:0x02a2, B:79:0x022c, B:88:0x01ac), top: B:16:0x00ba, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x025e A[Catch: Exception -> 0x029f, all -> 0x02d1, TryCatch #0 {Exception -> 0x029f, blocks: (B:55:0x023d, B:57:0x025e, B:59:0x0273, B:60:0x0285, B:62:0x0289, B:64:0x028f, B:66:0x029b), top: B:54:0x023d }] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getPatchUpdate() {
        /*
            Method dump skipped, instructions count: 961
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.sync.DbPatch.getPatchUpdate():java.lang.String");
    }

    private void updatePatchStatusTable() {
        try {
            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.updatePatchDetailsQry("3", TAG, "DbPatchCompleted", null));
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    private String sendAcknowledgeToServer() {
        SendDetailsForRetailersModel sendDetailsForRetailersModel = new SendDetailsForRetailersModel();
        Gson gson = new Gson();
        sendDetailsForRetailersModel.setPDAID(ConstantsPMC.getInstance().getDeviceID());
        sendDetailsForRetailersModel.setQueryIDs(this.successQueryIds);
        String wcfToken = ConstantsPMC.getInstance().getWcfToken();
        String json = gson.toJson(sendDetailsForRetailersModel);
        try {
            String sendRequestwithToken = this.webServices.sendRequestwithToken(json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodUpdateDMLPatch(), wcfToken);
            ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(sendRequestwithToken), ResponseModel.class);
            JSONObject jSONObject = new JSONObject(sendRequestwithToken);
            if (responseModel.getStatus().equals("AUTHORISED")) {
                if (responseModel.getData() != null && !jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).isEmpty()) {
                    return "sucsess";
                }
            } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                new GetToken(this.mContext, 2).StartGetToken();
                Class<?> cls = Class.forName("com.conceptglobal.pmc.sync.DbPatch");
                Method declaredMethod = cls.getDeclaredMethod("getPatchUpdate", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(cls.newInstance(), null);
            }
            return sendRequestwithToken;
        } catch (IOException e) {
            PLog.e(TAG, e);
            return "fail";
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            PLog.e(TAG, e2);
            return "fail";
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
            PLog.e(TAG, e3);
            return "fail";
        } catch (InstantiationException e4) {
            e4.printStackTrace();
            PLog.e(TAG, e4);
            return "fail";
        } catch (NoSuchMethodException e5) {
            e5.printStackTrace();
            PLog.e(TAG, e5);
            return "fail";
        } catch (InvocationTargetException e6) {
            e6.printStackTrace();
            PLog.e(TAG, e6);
            return "fail";
        } catch (ClientProtocolException e7) {
            PLog.e(TAG, e7);
            return "fail";
        } catch (JSONException e8) {
            e8.printStackTrace();
            PLog.e(TAG, e8);
            return "fail";
        }
    }

    public class DbPatchAsyncTask extends AsyncTask<String, Void, String> {
        private CustomProgressDialog customProgressDialog;

        public DbPatchAsyncTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.customProgressDialog = new CustomProgressDialog(DbPatch.this.mContext, CustomProgressDialog.progressbarType.NORMAL_DIALOG, "GetPatchUpdate");
            if (DbPatch.this.isUpdateStatusBar) {
                this.customProgressDialog.showDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pwUpdatingPatchDialog()));
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) {
            ConstantsPMC.isRequestCancelled = isCancelled();
            return DbPatch.this.startDbPatch();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            ConstantsPMC.isRequestCancelled = true;
            if (DbPatch.this.isUpdateStatusBar) {
                this.customProgressDialog.dismiss();
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            ConstantsPMC.isRequestCancelled = false;
            Log.i(DbPatch.TAG, "onPostExecute--");
            CustomProgressDialog customProgressDialog = this.customProgressDialog;
            if (customProgressDialog != null && customProgressDialog.isShowing() && DbPatch.this.isUpdateStatusBar) {
                this.customProgressDialog.dismiss();
            }
            if (DbPatch.this.isPatchAvailable) {
                Toast.makeText(DbPatch.this.mContext, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_patchAvail()), 0).show();
            } else {
                Toast.makeText(DbPatch.this.mContext, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noPatchAvailable()), 0).show();
            }
            try {
                DbPatch dbPatch = DbPatch.this;
                dbPatch.mRequestFinishListner = (OnRequestFinishListener) dbPatch.mContext;
                DbPatch.this.mRequestFinishListner.onFinish("DBPATCH");
            } catch (ClassCastException unused) {
            }
            if (!DbPatch.this.mContext.toString().contains("MainHomePageActivity") && !DbPatch.this.isFromLogin) {
                DbPatch.this.mContext.startActivity(new Intent(DbPatch.this.mContext, (Class<?>) MainHomePageActivity.class).addFlags(335544320));
                ((Activity) DbPatch.this.mContext).finish();
            }
            if (DbPatch.this.logoutApplication) {
                ExitActivity.exitApplicationAnRemoveFromRecent(DbPatch.this.mContext);
            }
        }
    }
}
