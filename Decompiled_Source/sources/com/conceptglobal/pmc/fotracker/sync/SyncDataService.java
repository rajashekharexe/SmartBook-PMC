package com.conceptglobal.pmc.fotracker.sync;

import android.app.IntentService;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.fotracker.ConstantDeclarations;
import com.conceptglobal.pmc.fotracker.database.GetDataFromDB;
import com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fotracker.database.Queries;
import com.conceptglobal.pmc.fotracker.model.ErrorLogger;
import com.conceptglobal.pmc.fotracker.model.FoTrackerDetails;
import com.conceptglobal.pmc.fotracker.model.FoTrackerHeader;
import com.conceptglobal.pmc.fotracker.model.RefreshAck;
import com.conceptglobal.pmc.fotracker.model.RefreshAcknowledge;
import com.conceptglobal.pmc.fotracker.model.ResponseModel;
import com.conceptglobal.pmc.fotracker.model.SendFarmerDetailsModel;
import com.conceptglobal.pmc.fotracker.util.PLog;
import com.conceptglobal.pmc.fotracker.util.UtilDeclarations;
import com.conceptglobal.pmc.model.Log4Trace;
import com.conceptglobal.pmc.promotions.models.ContentFaourites;
import com.conceptglobal.pmc.promotions.models.UsageDetails;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import java.io.File;
import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SyncDataService extends IntentService {
    private static final String TAG = "SyncDataService";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    List<Log4Trace> Log4Trace;
    Bundle bundle;
    private String callbackActivity;
    private int errLogsCount;
    List<ErrorLogger> errorLogger;
    List<ContentFaourites> favouriteDetails;
    List<FoTrackerDetails> foTrackerDetails;
    List<FoTrackerHeader> foTrackerHeader;
    private String msg;
    private int pendingPicutureRecordsCount;
    private int pendingRecordsCount;
    private ResultReceiver receiver;
    private boolean syncStatus;
    private int totalPendingDataCount;
    List<UsageDetails> usageDetails;

    public SyncDataService() {
        super(TAG);
        this.foTrackerHeader = new ArrayList();
        this.foTrackerDetails = new ArrayList();
        this.errorLogger = new ArrayList();
        this.usageDetails = new ArrayList();
        this.Log4Trace = new ArrayList();
        this.favouriteDetails = new ArrayList();
        this.syncStatus = true;
        this.pendingRecordsCount = 0;
        this.pendingPicutureRecordsCount = 0;
        this.errLogsCount = 0;
        this.totalPendingDataCount = 0;
        this.bundle = new Bundle();
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        synchronized (this) {
            Log.i(TAG, "onHandleIntent");
            if (DataBaseHandler.getInstance().checkDataBase()) {
                if (intent.hasExtra("receiver")) {
                    this.receiver = (ResultReceiver) intent.getParcelableExtra("receiver");
                }
                if (intent.hasExtra("callbackActivity")) {
                    this.callbackActivity = intent.getStringExtra("callbackActivity");
                }
                Log.i(TAG, "callbackActivity--" + this.callbackActivity);
                if (UtilDeclarations.isOnline(getApplicationContext())) {
                    ResultReceiver resultReceiver = this.receiver;
                    if (resultReceiver != null) {
                        resultReceiver.send(0, Bundle.EMPTY);
                    }
                    updateUIIfNeccessary("Data syncing started..");
                    syncDataToServer();
                } else {
                    updateUIIfNeccessary("Internet is turned off");
                }
            }
        }
    }

    private void clearAllObjects() {
        List<FoTrackerHeader> list = this.foTrackerHeader;
        if (list != null) {
            list.clear();
        }
        List<FoTrackerDetails> list2 = this.foTrackerDetails;
        if (list2 != null) {
            list2.clear();
        }
        List<ErrorLogger> list3 = this.errorLogger;
        if (list3 != null) {
            list3.clear();
        }
        List<UsageDetails> list4 = this.usageDetails;
        if (list4 != null) {
            list4.clear();
        }
        List<Log4Trace> list5 = this.Log4Trace;
        if (list5 != null) {
            list5.clear();
        }
        List<ContentFaourites> list6 = this.favouriteDetails;
        if (list6 != null) {
            list6.clear();
        }
    }

    private void preparePendingData() throws Exception {
        this.foTrackerHeader = GetDataFromDB.getInstance().getFoTrackerHeaderDetails(Queries.getInstance().getFoTrackerHeaderQry());
        this.foTrackerDetails = GetDataFromDB.getInstance().getFoTrackerdetailsDetails(Queries.getInstance().getFoDetailsQry());
        this.errorLogger = GetDataFromDB.getInstance().getErrorLoggerDetails(Queries.getInstance().getErrorLoggerDetailsQuery());
        this.usageDetails = com.conceptglobal.pmc.database.GetDataFromDB.getInstance().getUsagedetailsDetails(com.conceptglobal.pmc.common.Queries.getInstance().getUsageDetailsQry());
        this.Log4Trace = com.conceptglobal.pmc.database.GetDataFromDB.getInstance().getLog4TraceDetails(com.conceptglobal.pmc.common.Queries.getInstance().getLog4NetQry());
        this.favouriteDetails = com.conceptglobal.pmc.database.GetDataFromDB.getInstance().getContentFavouriteDetails(com.conceptglobal.pmc.common.Queries.getInstance().getContentFavouriteDetailsQry());
    }

    private void syncDataToServer() {
        clearAllObjects();
        try {
            preparePendingData();
            syncTransactionDataToServer(false);
            this.syncStatus = true;
        } catch (Exception e) {
            this.syncStatus = false;
            e.printStackTrace();
        }
        if (!this.syncStatus) {
            this.msg = "Failed while sending data to server";
        } else {
            this.msg = "Data sent successfully";
        }
        updateUIIfNeccessary(this.msg);
    }

    private void syncTransactionDataToServer(boolean z) {
        SendFarmerDetailsModel sendFarmerDetailsModel = new SendFarmerDetailsModel();
        sendFarmerDetailsModel.setFoTrackerHeaderModel(this.foTrackerHeader);
        sendFarmerDetailsModel.setFoTrackerDetailsModel(this.foTrackerDetails);
        sendFarmerDetailsModel.setErrorLogger(this.errorLogger);
        sendFarmerDetailsModel.setUsageDetails(this.usageDetails);
        sendFarmerDetailsModel.setFavouriteDetails(this.favouriteDetails);
        sendFarmerDetailsModel.setLog4Trace(this.Log4Trace);
        String str = ConstantsPMC.getInstance().getUrlPMCCMService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/TransactionSync";
        ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive());
        ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive());
        ConstantsPMC.getInstance().getMethodSyncPMCData();
        submitDataToServerForFoTracker(str, sendFarmerDetailsModel);
    }

    private void submitDataToServerForFoTracker(String str, SendFarmerDetailsModel sendFarmerDetailsModel) {
        String str2;
        try {
            Gson create = new GsonBuilder().disableHtmlEscaping().create();
            String json = create.toJson(sendFarmerDetailsModel);
            new JSONObject();
            JsonObject jsonObject = new JsonObject();
            try {
                jsonObject.addProperty("Data", json);
                jsonObject.addProperty("pdaId", GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getPdaId()));
            } catch (Exception e) {
                e.printStackTrace();
            }
            String jsonObject2 = jsonObject.toString();
            WebService webService = WebService.getInstance();
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            Log.d("Service test", jsonObject2 + "---" + str);
            String sendRequestwithToken = webService.sendRequestwithToken(jsonObject2, str, wcfToken);
            Log.d("Service test", sendRequestwithToken);
            if (sendRequestwithToken != null && !sendRequestwithToken.equals("")) {
                ResponseModel responseModel = (ResponseModel) create.fromJson((Reader) new StringReader(sendRequestwithToken), ResponseModel.class);
                JSONObject jSONObject = new JSONObject(sendRequestwithToken);
                if (responseModel.getStatus().equals("AUTHORISED")) {
                    if (responseModel.getData() != null && !jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).isEmpty()) {
                        if (responseModel.getStatusMessage().equalsIgnoreCase("Success")) {
                            String string = jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                            JSONObject jSONObject2 = new JSONObject(string);
                            String string2 = string.contains("foTrackerDetails") ? jSONObject2.getString("foTrackerDetails") : null;
                            if (!string.contains("foTrackerHeader")) {
                                str2 = "";
                            } else {
                                str2 = jSONObject2.getString("foTrackerHeader");
                            }
                            Log.d("returnids", "" + string2);
                            String string3 = string.contains("errorLogger") ? jSONObject2.getString("errorLogger") : null;
                            if (!TextUtils.isEmpty(str2)) {
                                InsertDataIntoDB.updateFoTrackerDetails("FoTrackerHeader", str2, "TrackId");
                            }
                            if (!TextUtils.isEmpty(string2)) {
                                InsertDataIntoDB.updateFoTrackerDetails("FoTrackerDetails", string2, "DetailsId");
                            }
                            if (!TextUtils.isEmpty(string3)) {
                                InsertDataIntoDB.updateErrorLoggerDetails("ErrorLogger ", string3, "Id");
                            }
                        }
                        deleteDataAfterResponse(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE));
                        deleteUsageDetailsDataAfterResponse(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE));
                    }
                } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                    Class<?> cls = Class.forName("com.conceptglobal.pmc.service.SyncDataService");
                    Method declaredMethod = cls.getDeclaredMethod("syncDataToServer", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(cls.newInstance(), null);
                }
            }
            Log.i(TAG, json + "");
            Log.i(TAG, sendRequestwithToken + "");
        } catch (Exception unused) {
            this.syncStatus = false;
        }
    }

    private void submitDataToServerForUsageDetails(String str, SendFarmerDetailsModel sendFarmerDetailsModel) {
        try {
            Gson create = new GsonBuilder().disableHtmlEscaping().create();
            String json = create.toJson(sendFarmerDetailsModel);
            new JSONObject();
            JsonObject jsonObject = new JsonObject();
            try {
                jsonObject.addProperty("Data", json);
                jsonObject.addProperty("pdaId", GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getPdaId()));
            } catch (Exception e) {
                e.printStackTrace();
            }
            String sendRequestwithToken = WebService.getInstance().sendRequestwithToken(jsonObject.toString(), str, ConstantsPMC.getInstance().getWcfToken());
            if (sendRequestwithToken != null && !sendRequestwithToken.equals("")) {
                ResponseModel responseModel = (ResponseModel) create.fromJson((Reader) new StringReader(sendRequestwithToken), ResponseModel.class);
                JSONObject jSONObject = new JSONObject(sendRequestwithToken);
                if (responseModel.getStatus().equals("AUTHORISED")) {
                    if (responseModel.getData() != null && !jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).isEmpty()) {
                        responseModel.getStatusMessage().equalsIgnoreCase("Success");
                        deleteDataAfterResponse(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE));
                        deleteUsageDetailsDataAfterResponse(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE));
                    }
                } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                    Class<?> cls = Class.forName("com.conceptglobal.pmc.service.SyncDataService");
                    Method declaredMethod = cls.getDeclaredMethod("syncDataToServer", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(cls.newInstance(), null);
                }
            }
            Log.i(TAG, json + "");
            Log.i(TAG, sendRequestwithToken + "");
        } catch (Exception unused) {
            this.syncStatus = false;
        }
    }

    private void deleteDataAfterResponse(String str) {
        boolean z;
        try {
            try {
                Gson gson = new Gson();
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                RefreshAcknowledge refreshAcknowledge = (RefreshAcknowledge) gson.fromJson((Reader) new StringReader(str), RefreshAcknowledge.class);
                if (refreshAcknowledge.getLog4netList() == null || refreshAcknowledge.getLog4netList().equalsIgnoreCase("")) {
                    z = true;
                } else {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(refreshAcknowledge.getLog4netList(), "Log4Net", "id"), openDatabase);
                    z = false;
                }
                if (refreshAcknowledge.getSyncErrorLogList() != null && !refreshAcknowledge.getSyncErrorLogList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(refreshAcknowledge.getSyncErrorLogList(), "SyncErrorLog", "id"), openDatabase);
                    z = false;
                }
                if (refreshAcknowledge.getFoTrackerHeaderList() != null && !refreshAcknowledge.getFoTrackerHeaderList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getFoTrackerHeaderList(), "FoTrackerHeader", "TrackId"), openDatabase);
                    z = false;
                }
                if (refreshAcknowledge.getFoTrackerDetailsList() != null && !refreshAcknowledge.getFoTrackerDetailsList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getFoTrackerDetailsList(), "FoTrackerDetails", "DetailsId"), openDatabase);
                    z = false;
                }
                if (!z) {
                    preparePendingData();
                    syncTransactionDataToServer(false);
                }
                if (!dbInstance.isDatabaseOpen()) {
                    return;
                }
            } catch (Exception e) {
                PLog.e(TAG, e.toString(), "deleteDataAfterResponse", str);
                this.syncStatus = false;
                if (!dbInstance.isDatabaseOpen()) {
                    return;
                }
            }
            dbInstance.closeDatabase();
        } catch (Throwable th) {
            if (dbInstance.isDatabaseOpen()) {
                dbInstance.closeDatabase();
            }
            throw th;
        }
    }

    private void deleteUsageDetailsDataAfterResponse(String str) {
        try {
            try {
                Gson gson = new Gson();
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                RefreshAck refreshAck = (RefreshAck) gson.fromJson((Reader) new StringReader(str), RefreshAck.class);
                if (refreshAck.getUsageDetails() != null && refreshAck.getUsageDetails().size() > 0) {
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < refreshAck.getUsageDetails().size(); i++) {
                        sb.append(refreshAck.getUsageDetails().get(i));
                        sb.append(",");
                    }
                    sb.deleteCharAt(sb.length() - 1);
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(sb.toString(), "UsageDetails", "UsageId"), openDatabase);
                }
                if (refreshAck.getLog4Trace() != null && refreshAck.getLog4Trace().size() > 0) {
                    StringBuilder sb2 = new StringBuilder();
                    for (int i2 = 0; i2 < refreshAck.getLog4Trace().size(); i2++) {
                        sb2.append(refreshAck.getLog4Trace().get(i2));
                        sb2.append(",");
                    }
                    sb2.deleteCharAt(sb2.length() - 1);
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(sb2.toString(), "Log4Trace", "CreatedID"), openDatabase);
                }
                if (refreshAck.getErrorLogger() != null && refreshAck.getErrorLogger().size() > 0) {
                    StringBuilder sb3 = new StringBuilder();
                    for (int i3 = 0; i3 < refreshAck.getErrorLogger().size(); i3++) {
                        sb3.append(refreshAck.getErrorLogger().get(i3));
                        sb3.append(",");
                    }
                    sb3.deleteCharAt(sb3.length() - 1);
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(sb3.toString(), "SyncErrorLog", "id"), openDatabase);
                }
                if (refreshAck.getFoTrackerHeader() != null && refreshAck.getFoTrackerHeader().size() > 0) {
                    StringBuilder sb4 = new StringBuilder();
                    for (int i4 = 0; i4 < refreshAck.getFoTrackerHeader().size(); i4++) {
                        sb4.append(refreshAck.getFoTrackerHeader().get(i4));
                        sb4.append(",");
                    }
                    sb4.deleteCharAt(sb4.length() - 1);
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(sb4.toString(), "FoTrackerHeader", "TrackId"), openDatabase);
                }
                if (refreshAck.getFoTrackerDetails() != null && refreshAck.getFoTrackerDetails().size() > 0) {
                    StringBuilder sb5 = new StringBuilder();
                    for (int i5 = 0; i5 < refreshAck.getFoTrackerDetails().size(); i5++) {
                        sb5.append(refreshAck.getFoTrackerDetails().get(i5));
                        sb5.append(",");
                    }
                    sb5.deleteCharAt(sb5.length() - 1);
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(sb5.toString(), "FoTrackerDetails", "DetailsId"), openDatabase);
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteSyncDetailsRows(sb5.toString(), "FoTrackerDetails", "DetailsId"), openDatabase);
                }
                if (!dbInstance.isDatabaseOpen()) {
                    return;
                }
            } catch (Exception e) {
                PLog.e(TAG, e.toString(), "deleteDataAfterResponse", str);
                this.syncStatus = false;
                if (!dbInstance.isDatabaseOpen()) {
                    return;
                }
            }
            dbInstance.closeDatabase();
        } catch (Throwable th) {
            if (dbInstance.isDatabaseOpen()) {
                dbInstance.closeDatabase();
            }
            throw th;
        }
    }

    private void deleteDataAfterSuccessfulResponse(String str) {
        List asList;
        int i;
        try {
            str.replace("\"", "");
            System.out.println(str + "------------");
            asList = Arrays.asList(str.split(","));
        } catch (Exception e) {
            PLog.e(TAG, e, 0);
            this.syncStatus = false;
            return;
        }
        for (i = 0; i < asList.size(); i++) {
            if (((String) asList.get(i)).length() > 2) {
                if (((String) asList.get(i)).contains(ConstantDeclarations.getInstance().getTblAssighmentActivityDetails())) {
                    try {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteFarmerActDetails());
                    } catch (Exception e2) {
                        this.syncStatus = false;
                        PLog.e(TAG, e2, 0);
                    }
                } else if (((String) asList.get(i)).contains(ConstantDeclarations.getInstance().getTBLCROPMAPPING())) {
                    try {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getUpdatefarmerCropmapping());
                    } catch (Exception e3) {
                        this.syncStatus = false;
                        PLog.e(TAG, e3, 0);
                    }
                } else if (((String) asList.get(i)).contains(ConstantDeclarations.getInstance().getTBLASSIGNMENTVISITDETAILS())) {
                    try {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteAssignmentVisitDetails());
                    } catch (Exception e4) {
                        this.syncStatus = false;
                        PLog.e(TAG, e4, 0);
                    }
                } else if (((String) asList.get(i)).contains(ConstantDeclarations.getInstance().getTBLLOG4NET())) {
                    try {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeletelog4net());
                    } catch (Exception e5) {
                        this.syncStatus = false;
                        PLog.e(TAG, e5, 0);
                    }
                } else if (((String) asList.get(i)).contains(ConstantDeclarations.getInstance().getTBLSYNCERRORLOG())) {
                    try {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteSyncErrorLog());
                    } catch (Exception e6) {
                        this.syncStatus = false;
                        PLog.e(TAG, e6, 0);
                    }
                } else if (((String) asList.get(i)).contains(ConstantDeclarations.getInstance().getTblFarmerMaster())) {
                    try {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getUpdateFarmerMaster());
                    } catch (Exception e7) {
                        this.syncStatus = false;
                        PLog.e(TAG, e7, 0);
                    }
                } else if (((String) asList.get(i)).contains(ConstantDeclarations.getInstance().getTblDealerMaster())) {
                    try {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getUpdateDealerrMaster());
                    } catch (Exception e8) {
                        this.syncStatus = false;
                        PLog.e(TAG, e8, 0);
                    }
                } else if (((String) asList.get(i)).contains(ConstantDeclarations.getInstance().getTblDealerCompanyMapping())) {
                    try {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getUpdateDealerCompany());
                    } catch (Exception e9) {
                        this.syncStatus = false;
                        PLog.e(TAG, e9, 0);
                    }
                } else if (((String) asList.get(i)).contains(ConstantDeclarations.getInstance().getTblDealerCropMapping())) {
                    try {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getUpdateDealerCrop());
                    } catch (Exception e10) {
                        this.syncStatus = false;
                        PLog.e(TAG, e10, 0);
                    }
                } else if (((String) asList.get(i)).contains(ConstantDeclarations.getInstance().getTBLLOG4NET())) {
                    try {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeletelog4net());
                    } catch (Exception e11) {
                        this.syncStatus = false;
                        PLog.e(TAG, e11, 0);
                    }
                } else if (((String) asList.get(i)).contains(ConstantDeclarations.getInstance().getTBLSYNCERRORLOG())) {
                    try {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteSyncErrorLog());
                    } catch (Exception e12) {
                        this.syncStatus = false;
                        PLog.e(TAG, e12, 0);
                    }
                }
                PLog.e(TAG, e, 0);
                this.syncStatus = false;
                return;
            }
        }
    }

    private boolean checkIsPictureExists(String str) {
        return new File(str).exists();
    }

    private void updateUIIfNeccessary(String str) {
        Intent intent = new Intent("FTSyncStatus");
        intent.putExtra("Status", str);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
        Log.i(TAG, "response--" + str);
        this.bundle.putString("respMsg", str);
        if (this.receiver != null) {
            Log.i(TAG, "sending back ");
            String str2 = this.callbackActivity;
            if (str2 != null) {
                this.bundle.putString("callbackActivity", str2);
            }
            this.receiver.send(1, this.bundle);
        }
    }
}
