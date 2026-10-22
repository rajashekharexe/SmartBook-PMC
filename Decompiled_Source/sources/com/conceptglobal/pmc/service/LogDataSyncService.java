package com.conceptglobal.pmc.service;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.util.Log;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.GetDataFromDBLog;
import com.conceptglobal.pmc.database.LogDataBaseHandler;
import com.conceptglobal.pmc.fragments.HomePageFragment;
import com.conceptglobal.pmc.model.Logger;
import com.conceptglobal.pmc.model.RefreshAcknowledge;
import com.conceptglobal.pmc.model.ResponseModel;
import com.conceptglobal.pmc.model.SyncDebugTraceLogger;
import com.conceptglobal.pmc.sync.GetToken;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LogDataSyncService extends IntentService {
    private static final String TAG = "LogDataSyncService";
    Bundle bundle;
    private String callbackActivity;
    private int errLogsCount;
    private int isEnabled;
    private List<Logger> loggerList;
    private ResultReceiver receiver;
    private boolean syncStatus;

    public LogDataSyncService() {
        super(TAG);
        this.loggerList = new ArrayList();
        this.errLogsCount = 0;
        this.syncStatus = true;
        this.isEnabled = 0;
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        synchronized (this) {
            Log.i(TAG, "onHandleIntent");
            if (LogDataBaseHandler.getInstance().checkDataBase()) {
                this.receiver = (ResultReceiver) intent.getParcelableExtra("receiver");
                if (intent.hasExtra("callbackActivity")) {
                    this.callbackActivity = intent.getStringExtra("callbackActivity");
                }
                Log.i(TAG, "callbackActivity--" + this.callbackActivity);
                if (UtilDeclarations.isOnline(getApplicationContext())) {
                    ResultReceiver resultReceiver = this.receiver;
                    if (resultReceiver != null) {
                        resultReceiver.send(0, Bundle.EMPTY);
                    }
                    try {
                        this.isEnabled = GetDataFromDB.getInstance().getcount(Queries.getInstance().getDebugLogSyncStatus());
                    } catch (Exception e) {
                        PLog.e(TAG, e, 0);
                    }
                    if (this.isEnabled == 1) {
                        syncDataToServer();
                    }
                    deleteOldLogs();
                    if (((PMCApplication) getApplication()).isHomeFragmentActive()) {
                        HomePageFragment.setRefreshActionButtonState(false);
                    }
                }
            }
        }
    }

    private void deleteOldLogs() {
        try {
            int i = GetDataFromDB.getInstance().getcount(Queries.getInstance().getDeleteLogTime());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, -i);
            GetDataFromDBLog.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteLogQuery(simpleDateFormat.format(calendar.getTime())));
        } catch (Exception e) {
            PLog.e(TAG, e, 0);
        }
    }

    private void syncDataToServer() {
        try {
            int logsCount = GetDataFromDBLog.getInstance().getLogsCount();
            this.errLogsCount = logsCount;
            if (logsCount > 0) {
                syncTransactionDataToServer(true);
            }
        } catch (Exception e) {
            this.syncStatus = false;
            e.printStackTrace();
        }
    }

    private void syncTransactionDataToServer(boolean z) {
        SyncDebugTraceLogger syncDebugTraceLogger = new SyncDebugTraceLogger();
        if (z) {
            try {
                if (this.errLogsCount < 200) {
                    prepareLogsData();
                    syncDebugTraceLogger.setDebugLogger(this.loggerList);
                    submitDataToServer(ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSyncDebugTraceLogger(), syncDebugTraceLogger);
                } else {
                    sendTableByTableDataToServer("logger");
                }
            } catch (Exception e) {
                PLog.e(TAG, e, 0);
            }
        }
    }

    private void prepareLogsData() throws Exception {
        this.loggerList = GetDataFromDBLog.getInstance().getLogData(Queries.getInstance().getSelectLoggerDetails_By1000());
    }

    private void submitDataToServer(String str, SyncDebugTraceLogger syncDebugTraceLogger) {
        try {
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            String json = new GsonBuilder().disableHtmlEscaping().create().toJson(syncDebugTraceLogger);
            String sendRequestwithToken = WebService.getInstance().sendRequestwithToken(json, str, wcfToken);
            if (sendRequestwithToken != null && !sendRequestwithToken.equals("")) {
                ResponseModel responseModel = (ResponseModel) new Gson().fromJson((Reader) new StringReader(sendRequestwithToken), ResponseModel.class);
                JSONObject jSONObject = new JSONObject(sendRequestwithToken);
                if (responseModel.getStatus().equals("AUTHORISED")) {
                    if (responseModel.getData() != null && !jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).isEmpty()) {
                        deleteDataAfterResponse(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE));
                    }
                } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                    new GetToken(null, 2).StartGetToken();
                    Class<?> cls = Class.forName("com.conceptglobal.pmc.service.LogDataSyncService");
                    Method declaredMethod = cls.getDeclaredMethod("syncDataToServer", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(cls.newInstance(), true);
                }
            }
            Log.i(TAG, json + "");
            Log.i(TAG, sendRequestwithToken + "");
        } catch (Exception e) {
            this.syncStatus = false;
            PLog.e(TAG, e, 0);
        }
    }

    private void sendTableByTableDataToServer(String str) throws Exception {
        List<Logger> logData;
        SyncDebugTraceLogger syncDebugTraceLogger = new SyncDebugTraceLogger();
        if (str.equalsIgnoreCase("logger")) {
            String str2 = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSyncDebugTraceLogger();
            do {
                logData = GetDataFromDBLog.getInstance().getLogData(Queries.getInstance().getSelectLoggerDetails_By1000());
                if (logData == null || logData.size() <= 0) {
                    logData = null;
                } else {
                    syncDebugTraceLogger.setDebugLogger(logData);
                    submitDataToServer(str2, syncDebugTraceLogger);
                }
                if (logData == null) {
                    return;
                }
            } while (logData.size() > 0);
        }
    }

    private void deleteDataAfterResponse(String str) {
        try {
            RefreshAcknowledge refreshAcknowledge = (RefreshAcknowledge) new Gson().fromJson((Reader) new StringReader(str), RefreshAcknowledge.class);
            if (refreshAcknowledge.getDebugTraceLogList() == null || refreshAcknowledge.getDebugTraceLogList().equalsIgnoreCase("")) {
                return;
            }
            GetDataFromDBLog.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteDetailsbyID(refreshAcknowledge.getDebugTraceLogList(), "Logger", "id"));
            prepareLogsData();
            syncTransactionDataToServer(true);
        } catch (Exception e) {
            PLog.e(TAG, e, 0);
            this.syncStatus = false;
        }
    }
}
