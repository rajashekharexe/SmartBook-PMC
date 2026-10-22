package com.conceptglobal.pmc.asynctask;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.widget.Toast;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.Log4Net;
import com.conceptglobal.pmc.model.SendLog4NetModel;
import com.conceptglobal.pmc.model.SyncErrorLogModel;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import org.apache.http.client.ClientProtocolException;

/* loaded from: classes.dex */
public class SyncPMCLogsAsync extends AsyncTask<Void, Void, String> {
    private static final String TAG = "SyncPMCLogsAsync";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    private Context context;
    private Exception error = null;
    private boolean progressBarRequired;

    public SyncPMCLogsAsync(Context context, Boolean bool) {
        this.context = context;
        this.progressBarRequired = bool.booleanValue();
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        if (this.progressBarRequired) {
            UtilDeclarations.showProgressDialog(this.context);
        }
        super.onPreExecute();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        List<Log4Net> log4NetData = GetDataFromDB.getInstance().getLog4NetData(Queries.getInstance().getSelectLog4NetData());
        List<SyncErrorLogModel> syncErrorLogsData = GetDataFromDB.getInstance().getSyncErrorLogsData(Queries.getInstance().getSelectSyncErrorLogData());
        SendLog4NetModel sendLog4NetModel = new SendLog4NetModel();
        sendLog4NetModel.setLog4net(log4NetData);
        sendLog4NetModel.setSyncErrorLog(syncErrorLogsData);
        String json = new Gson().toJson(sendLog4NetModel);
        try {
            return WebService.getInstance().sendRequest(json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodLog4Net());
        } catch (ClientProtocolException e) {
            this.error = e;
            PLog.e(TAG, e);
            return null;
        } catch (IOException e2) {
            this.error = e2;
            PLog.e(TAG, e2);
            return null;
        } catch (Exception e3) {
            this.error = e3;
            PLog.e(TAG, e3);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(final String str) {
        super.onPostExecute((SyncPMCLogsAsync) str);
        if (this.progressBarRequired) {
            UtilDeclarations.dismissProgressDialog();
        }
        Exception exc = this.error;
        if (exc == null) {
            if (str != null && str.length() > 4) {
                new Thread(new Runnable() { // from class: com.conceptglobal.pmc.asynctask.SyncPMCLogsAsync.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            try {
                                str.replace("\"", "");
                                List asList = Arrays.asList(str.split(","));
                                SQLiteDatabase openDatabase = SyncPMCLogsAsync.dbInstance.openDatabase();
                                for (int i = 0; i < asList.size(); i++) {
                                    if (((String) asList.get(i)).length() > 2) {
                                        if (((String) asList.get(i)).contains(ConstantDeclarations.getInstance().getTBLLOG4NET())) {
                                            try {
                                                GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeletelog4net(), openDatabase);
                                            } catch (Exception e) {
                                                PLog.e(SyncPMCLogsAsync.TAG, e);
                                            }
                                        }
                                        if (((String) asList.get(i)).contains(ConstantDeclarations.getInstance().getTBLSYNCERRORLOG())) {
                                            try {
                                                GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteSyncErrorLog(), openDatabase);
                                            } catch (Exception e2) {
                                                PLog.e(SyncPMCLogsAsync.TAG, e2);
                                            }
                                        }
                                    }
                                }
                            } catch (Exception e3) {
                                PLog.e(SyncPMCLogsAsync.TAG, e3);
                            }
                        } finally {
                            SyncPMCLogsAsync.dbInstance.closeDatabase();
                        }
                    }
                }).start();
                return;
            }
            Toast.makeText(this.context, this.context.getResources().getString(R.string.pmc_val_wrong_resp) + TAG, 0).show();
            return;
        }
        if (exc instanceof ClientProtocolException) {
            Toast.makeText(this.context, this.context.getResources().getString(R.string.pmc_val_getting_resp) + TAG, 0).show();
            PLog.e(TAG, this.error);
            return;
        }
        if (exc instanceof IOException) {
            Toast.makeText(this.context, this.context.getResources().getString(R.string.pmc_val_receive_resp) + TAG, 0).show();
            PLog.e(TAG, this.error);
            return;
        }
        Toast.makeText(this.context, this.context.getResources().getString(R.string.pmc_val_parse_resp) + TAG, 0).show();
        PLog.e(TAG, this.error);
    }
}
