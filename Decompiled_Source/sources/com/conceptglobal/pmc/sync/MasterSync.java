package com.conceptglobal.pmc.sync;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fragments.HomePageFragment;
import com.conceptglobal.pmc.interfaces.OnResultReceiver;
import com.conceptglobal.pmc.model.ActivityApprovalModel;
import com.conceptglobal.pmc.model.ApprovlStatusExpensesModel;
import com.conceptglobal.pmc.model.ExpensesRespMOdel;
import com.conceptglobal.pmc.model.FOPendingStatus;
import com.conceptglobal.pmc.model.GetSVFarmerDetails;
import com.conceptglobal.pmc.model.GetSegmentationDetails;
import com.conceptglobal.pmc.model.MasterVersionTableDataModel;
import com.conceptglobal.pmc.model.PmcRetailersModel;
import com.conceptglobal.pmc.model.PriceslistModel;
import com.conceptglobal.pmc.model.ResponseModel;
import com.conceptglobal.pmc.model.SVAssignAFCount;
import com.conceptglobal.pmc.model.SendAckList;
import com.conceptglobal.pmc.model.SendAckListSV;
import com.conceptglobal.pmc.model.SendAckSdtv;
import com.conceptglobal.pmc.model.SendDetailsForFarmerDetails;
import com.conceptglobal.pmc.model.SendDetailsForRetailersModel;
import com.conceptglobal.pmc.model.SendSVAckForApproval;
import com.conceptglobal.pmc.model.SyncErrorLogModel;
import com.conceptglobal.pmc.model.UnaccessedMasterData;
import com.conceptglobal.pmc.sync.DbPatch.DbPatchAsyncTask;
import com.conceptglobal.pmc.utils.CustomProgressDialog;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.StringUtils;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.facebook.network.connectionclass.ConnectionClassManager;
import com.facebook.network.connectionclass.DeviceBandwidthSampler;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.ByteArrayInputStream;
import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MasterSync {
    private static final String TAG = "MasterSync";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    public static boolean isSyncForRecovery = false;
    boolean SyncAssignmentData;
    boolean SyncAssignmentDataExpenses;
    private List<SyncErrorLogModel> arrQueries;
    private int assignmentCoun;
    int assignmentCount;
    private Context context;
    private SQLiteDatabase database;
    private List<String> failedTableCount;
    boolean isPannedSummaryOnly;
    private boolean isStatusBar;
    private boolean isSyncing;
    private StringBuilder keysBuilder;
    private ConnectionClassManager mConnectionClassManager;
    private DeviceBandwidthSampler mDeviceBandwidthSampler;
    public MasterSync mMasterSyncAsyncTask;
    public MasterSyncAsyncTask mTask;
    private int masterCount;
    private String masterSyncCount;
    private List<MasterVersionTableDataModel> masterVersionTablesDataBeforeSync;
    private SyncErrorLogModel modelSync;
    private String obj;
    private SendAckList objAck;
    private SendAckSdtv objAckSDTv;
    private SendAckListSV objAcksv;
    private SendSVAckForApproval objAcksvforApproval;
    private int processedSyncCount;
    private String response;
    private StringBuilder sbQueryBuilder;
    private int specificMasterCount;
    private String urlString;
    private StringBuilder valuesBuilder;
    public WebService webServices;

    public MasterSync() {
        this.processedSyncCount = 0;
        this.masterSyncCount = "0";
        this.isSyncing = true;
        this.assignmentCoun = 0;
        this.masterCount = 0;
        this.specificMasterCount = 0;
        this.SyncAssignmentData = true;
        this.SyncAssignmentDataExpenses = true;
        this.assignmentCount = 0;
    }

    public MasterSync(Context context, boolean z) {
        this.processedSyncCount = 0;
        this.masterSyncCount = "0";
        this.isSyncing = true;
        this.assignmentCoun = 0;
        this.masterCount = 0;
        this.specificMasterCount = 0;
        this.SyncAssignmentData = true;
        this.SyncAssignmentDataExpenses = true;
        this.assignmentCount = 0;
        this.mMasterSyncAsyncTask = this;
        this.context = context;
        this.isStatusBar = z;
        ConstantsPMC.isRequestCancelled = false;
    }

    public MasterSync(Context context, boolean z, boolean z2) {
        this.processedSyncCount = 0;
        this.masterSyncCount = "0";
        this.isSyncing = true;
        this.assignmentCoun = 0;
        this.masterCount = 0;
        this.specificMasterCount = 0;
        this.SyncAssignmentData = true;
        this.SyncAssignmentDataExpenses = true;
        this.assignmentCount = 0;
        this.mMasterSyncAsyncTask = this;
        this.context = context;
        this.isStatusBar = z;
        ConstantsPMC.isRequestCancelled = false;
        this.isPannedSummaryOnly = z2;
    }

    public void startMasterSync(boolean z) {
        this.objAck = new SendAckList();
        this.objAcksv = new SendAckListSV();
        this.objAcksvforApproval = new SendSVAckForApproval();
        this.mConnectionClassManager = ConnectionClassManager.getInstance();
        this.mDeviceBandwidthSampler = DeviceBandwidthSampler.getInstance();
        if (z) {
            try {
                MasterSyncAsyncTask masterSyncAsyncTask = this.mTask;
                if (masterSyncAsyncTask != null) {
                    masterSyncAsyncTask.showProgress("Sync Started", "0", "0");
                }
            } catch (Exception e) {
                PLog.e(TAG, e);
                return;
            }
        }
        this.webServices = WebService.getInstance();
        this.isSyncing = true;
        this.mDeviceBandwidthSampler.startSampling();
        while (this.SyncAssignmentData && !ConstantsPMC.isRequestCancelled) {
            this.objAck = new SendAckList();
            this.assignmentCount++;
            getPMCFarmerDetailsFromServer();
            sendAcktoServer();
        }
        if (this.SyncAssignmentDataExpenses && !ConstantsPMC.isRequestCancelled) {
            this.objAck = new SendAckList();
            this.assignmentCount++;
            getPMCFarmerDetailsFromServerExpenses();
            sendAcktoServer();
        }
        this.mDeviceBandwidthSampler.stopSampling();
        try {
            InsertDataIntoDB.insertLog4Trace("NetworkStatus", "", "", "", "Master sync--" + this.mConnectionClassManager.getCurrentBandwidthQuality().toString(), false);
        } catch (Exception unused) {
        }
        getMandiPricesList();
        if (!ConstantsPMC.isRequestCancelled) {
            doMasterSync(z);
        }
        if (!ConstantsPMC.isRequestCancelled) {
            getDeleteData();
        }
        if (ConstantsPMC.isRequestCancelled) {
            return;
        }
        new DbPatch(this.context, true).startDbPatch();
    }

    private void getRetailersFromServer() {
        Log.i(TAG, "getRetailersFromServer");
        try {
            SendDetailsForRetailersModel sendDetailsForRetailersModel = new SendDetailsForRetailersModel();
            Gson gson = new Gson();
            sendDetailsForRetailersModel.setTerritoryId(ConstantsPMC.getInstance().getTeritoryId());
            sendDetailsForRetailersModel.setPDAID(ConstantsPMC.getInstance().getDeviceID());
            String json = gson.toJson(sendDetailsForRetailersModel);
            String str = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetDealerList();
            this.urlString = str;
            String sendRequest = this.webServices.sendRequest(json, str);
            this.response = sendRequest;
            if (sendRequest != null && sendRequest.trim().length() > 12) {
                this.objAck = InsertDataIntoDB.insertRetailerList((List) new Gson().fromJson(new StringReader(this.response), new TypeToken<List<PmcRetailersModel>>() { // from class: com.conceptglobal.pmc.sync.MasterSync.1
                }.getType()), this.objAck);
            } else {
                this.isSyncing = false;
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
            this.isSyncing = false;
        }
    }

    private void getPMCFarmerDetailsFromServer() {
        Log.i(TAG, "getPMCFarmerDetailsFromServer");
        Log.i("Segmentation start Time", Calendar.getInstance().getTime().toString());
        if (ConstantsPMC.isRequestCancelled) {
            this.SyncAssignmentData = false;
            return;
        }
        try {
            SendDetailsForFarmerDetails sendDetailsForFarmerDetails = new SendDetailsForFarmerDetails();
            Gson gson = new Gson();
            sendDetailsForFarmerDetails.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
            String json = gson.toJson(sendDetailsForFarmerDetails);
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            try {
                InsertDataIntoDB.insertLog4Trace("APICallsTimeDetails", "", "", "", "Assignmetns Start  --" + UtilDeclarations.getDateTime(), false);
            } catch (Exception unused) {
            }
            this.urlString = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetSegmentationDetailsGeneric();
            this.response = WebService.getInstance().sendRequestwithToken(json, this.urlString, wcfToken);
            try {
                InsertDataIntoDB.insertLog4Trace("APICallsTimeDetails", "", "", "", "Assignmetns End  --" + UtilDeclarations.getDateTime(), false);
            } catch (Exception unused2) {
            }
            Log.d("getSegOBJ", json + "");
            Log.d("getSegOBJResp", this.response + "");
            Log.d("getSegOBJResp", this.response + "");
            this.response = StringUtils.removeInvertedCommas(this.response);
            ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(this.response), ResponseModel.class);
            JSONObject jSONObject = new JSONObject(this.response);
            if (responseModel.getStatus().equals("AUTHORISED")) {
                if (jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) == null || jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).length() <= 10) {
                    this.SyncAssignmentData = false;
                    this.isSyncing = false;
                } else {
                    GetSegmentationDetails getSegmentationDetails = (GetSegmentationDetails) new Gson().fromJson((Reader) new StringReader(decompressNew(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE))), GetSegmentationDetails.class);
                    this.assignmentCoun = getSegmentationDetails.getDataCount();
                    if (this.mTask != null) {
                        for (int i = 0; i < this.assignmentCoun; i++) {
                            this.mTask.showProgress("Getting Assignment Data - " + this.assignmentCount, "" + i, "" + this.assignmentCoun);
                        }
                    }
                    this.objAck = InsertDataIntoDB.insertFarmersList(getSegmentationDetails, this.objAck);
                }
            } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                MasterSyncAsyncTask masterSyncAsyncTask = this.mTask;
                if (masterSyncAsyncTask != null) {
                    masterSyncAsyncTask.showProgress("You are not authorized to get latest Data.", "0", "0");
                }
                new GetToken(this.context, 2).StartGetToken();
                Class<?> cls = Class.forName("com.conceptglobal.pmc.sync.MasterSync");
                Method declaredMethod = cls.getDeclaredMethod("getPMCFarmerDetailsFromServer", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(cls.newInstance(), null);
            }
        } catch (Exception e) {
            PLog.e(TAG, e.toString(), "getPMCFarmerDetailsFromServer", this.response);
            this.isSyncing = false;
            this.SyncAssignmentData = false;
        }
        Log.i("segmentation end Time", Calendar.getInstance().getTime().toString());
    }

    private void getPMCFarmerDetailsFromServerExpenses() {
        Log.i(TAG, "getPMCFarmerDetailsFromServer");
        Log.i("Segmentation start Time", Calendar.getInstance().getTime().toString());
        if (ConstantsPMC.isRequestCancelled) {
            this.SyncAssignmentDataExpenses = false;
            return;
        }
        try {
            SendDetailsForFarmerDetails sendDetailsForFarmerDetails = new SendDetailsForFarmerDetails();
            Gson gson = new Gson();
            sendDetailsForFarmerDetails.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
            String json = gson.toJson(sendDetailsForFarmerDetails);
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            try {
                InsertDataIntoDB.insertLog4Trace("APICallsTimeDetails", "", "", "", "Assignmetns Start  --" + UtilDeclarations.getDateTime(), false);
            } catch (Exception unused) {
            }
            this.urlString = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getExpensesListBack();
            this.response = WebService.getInstance().sendRequestwithToken(json, this.urlString, wcfToken);
            try {
                InsertDataIntoDB.insertLog4Trace("APICallsTimeDetails", "", "", "", "Assignmetns End  --" + UtilDeclarations.getDateTime(), false);
            } catch (Exception unused2) {
            }
            Log.d("getSegOBJ", json + "");
            Log.d("getSegOBJResp", this.response + "");
            Log.d("getSegOBJResp", this.response + "");
            this.response = StringUtils.removeInvertedCommas(this.response);
            ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(this.response), ResponseModel.class);
            JSONObject jSONObject = new JSONObject(this.response);
            if (responseModel.getStatus().equals("AUTHORISED")) {
                if (jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) == null || jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).length() <= 10) {
                    this.SyncAssignmentDataExpenses = false;
                    this.isSyncing = false;
                } else {
                    GetSegmentationDetails getSegmentationDetails = (GetSegmentationDetails) new Gson().fromJson((Reader) new StringReader(decompressNew(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE))), GetSegmentationDetails.class);
                    this.assignmentCoun = getSegmentationDetails.getDataCount();
                    if (this.mTask != null) {
                        for (int i = 0; i < this.assignmentCoun; i++) {
                            this.mTask.showProgress("Getting Assignment Data - " + this.assignmentCount, "" + i, "" + this.assignmentCoun);
                        }
                    }
                    this.objAck = InsertDataIntoDB.insertFarmersList(getSegmentationDetails, this.objAck);
                }
            } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                MasterSyncAsyncTask masterSyncAsyncTask = this.mTask;
                if (masterSyncAsyncTask != null) {
                    masterSyncAsyncTask.showProgress("You are not authorized to get latest Data.", "0", "0");
                }
                new GetToken(this.context, 2).StartGetToken();
                Class<?> cls = Class.forName("com.conceptglobal.pmc.sync.MasterSync");
                Method declaredMethod = cls.getDeclaredMethod("getPMCFarmerDetailsFromServer", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(cls.newInstance(), null);
            }
        } catch (Exception e) {
            PLog.e(TAG, e.toString(), "getPMCFarmerDetailsFromServer", this.response);
            this.isSyncing = false;
            this.SyncAssignmentDataExpenses = false;
        }
        Log.i("segmentation end Time", Calendar.getInstance().getTime().toString());
    }

    private void sendAcktoServer() {
        Log.i(TAG, "sendAcktoServer");
        Log.i("segm ack start Time", Calendar.getInstance().getTime().toString());
        try {
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            Gson gson = new Gson();
            this.objAck.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
            String json = gson.toJson(this.objAck);
            Log.d("getAckReceiptOBJ", json + "");
            String str = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSendACK();
            this.urlString = str;
            String sendRequestwithToken = this.webServices.sendRequestwithToken(json, str, wcfToken);
            this.response = sendRequestwithToken;
            if (sendRequestwithToken != null) {
                sendRequestwithToken.contains(this.context.getResources().getString(R.string.success_message));
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
        Log.i("segm ack end Time", Calendar.getInstance().getTime().toString());
    }

    private void sendSDTVAcktoServer() {
        try {
            Gson gson = new Gson();
            this.objAckSDTv.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
            String sendRequest = WebService.getInstance().sendRequest(gson.toJson(this.objAckSDTv), ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSTDAck());
            ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(sendRequest), ResponseModel.class);
            JSONObject jSONObject = new JSONObject(sendRequest);
            if (responseModel.getStatus().equals("AUTHORISED")) {
                if (jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) == null || jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).length() <= 3) {
                    this.isSyncing = false;
                }
            } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                new GetToken(this.context, 2).StartGetToken();
                Class<?> cls = Class.forName("com.conceptglobal.pmc.LoginActivity");
                Method declaredMethod = cls.getDeclaredMethod("sendAcktoServer", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(cls.newInstance(), null);
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    public void getPMCSVFarmerDetailsFromServer() {
        Log.i(TAG, "getPMCSVFarmerDetailsFromServer");
        try {
            GetSVFarmerDetails getSVFarmerDetails = new GetSVFarmerDetails();
            Gson gson = new Gson();
            getSVFarmerDetails.setPdaid(ConstantsPMC.getInstance().getDeviceID().toString());
            getSVFarmerDetails.setUsertype(ConstantsPMC.getInstance().getRoleID().toString());
            String json = gson.toJson(getSVFarmerDetails);
            String str = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetSVFarmerDetails();
            this.urlString = str;
            String sendRequest = this.webServices.sendRequest(json, str);
            this.response = sendRequest;
            if (sendRequest != null && sendRequest.length() > 12) {
                new Gson();
            } else {
                this.isSyncing = false;
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
            this.isSyncing = false;
        }
    }

    private void sendSVAcktoServer() {
        Log.i(TAG, "sendSVAcktoServer");
        try {
            Gson gson = new Gson();
            this.objAcksv.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
            String json = gson.toJson(this.objAcksv);
            Log.d("getsvAckReceiptOBJ", json + "");
            String str = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSVSendACK();
            this.urlString = str;
            this.response = this.webServices.sendRequest(json, str);
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    private void sendSVApprovalFarmersRequest() {
        Log.i(TAG, "sendSVApprovalFarmersRequest");
        try {
            GetSVFarmerDetails getSVFarmerDetails = new GetSVFarmerDetails();
            Gson gson = new Gson();
            getSVFarmerDetails.setPdaid(ConstantsPMC.getInstance().getDeviceID().toString());
            getSVFarmerDetails.setUsertype(ConstantsPMC.getInstance().getRoleID().toString());
            String json = gson.toJson(getSVFarmerDetails);
            String str = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetSVFarmerApproval();
            this.urlString = str;
            String sendRequest = this.webServices.sendRequest(json, str);
            this.response = sendRequest;
            if (sendRequest != null && sendRequest.length() > 12) {
                new Gson();
            } else {
                this.isSyncing = false;
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
            this.isSyncing = false;
        }
    }

    private void sendSVApprovalAcktoServer() {
        Log.i(TAG, "sendSVApprovalAcktoServer");
        try {
            Gson gson = new Gson();
            this.objAcksvforApproval.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
            String json = gson.toJson(this.objAcksvforApproval);
            String str = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSyncSendApprovalACK();
            this.urlString = str;
            this.response = this.webServices.sendRequest(json, str);
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    private void getSVAssignPendingFromServer() {
        Log.i(TAG, "getSVAssignPendingFromServer");
        try {
            SVAssignAFCount sVAssignAFCount = new SVAssignAFCount();
            Gson gson = new Gson();
            sVAssignAFCount.setSvpdaid(ConstantsPMC.getInstance().getDeviceID().toString());
            String json = gson.toJson(sVAssignAFCount);
            String str = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetAssignPendingDetails();
            this.urlString = str;
            String sendRequest = this.webServices.sendRequest(json, str);
            this.response = sendRequest;
            if (sendRequest != null && sendRequest.length() > 12) {
                List list = (List) new Gson().fromJson(new StringReader(this.response), new TypeToken<List<FOPendingStatus>>() { // from class: com.conceptglobal.pmc.sync.MasterSync.2
                }.getType());
                if (list.size() > 0) {
                    InsertDataIntoDB.insertAssignFarmerActivityPendingCountDetails(list);
                }
            } else {
                this.isSyncing = false;
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
            this.isSyncing = false;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:(6:8|9|10|11|12|13)|(2:14|15)|16|(4:17|18|(2:19|20)|21)|(2:25|(3:305|306|(2:310|(1:312)))(2:27|(16:31|32|33|34|36|37|39|40|41|42|43|44|(1:289)(3:48|(4:80|81|82|(1:278)(5:86|(5:90|(5:93|94|(5:96|(16:99|100|101|102|103|104|105|106|107|(6:109|110|111|112|113|114)(1:148)|115|116|117|(8:119|120|121|122|123|124|125|126)(2:137|138)|127|97)|160|161|162)(5:164|(13:167|168|(1:170)|171|172|173|174|(4:176|177|178|179)(1:190)|(1:181)|182|183|184|165)|197|198|199)|163|91)|200|87|88)|201|202|(1:276)(11:206|207|208|(8:214|215|(4:217|218|219|220)(1:237)|221|223|224|209|210)|241|242|(3:244|(5:247|(4:250|(2:252|253)(1:255)|254|248)|256|257|245)|258)|260|261|5|6)))(4:50|51|52|(6:56|57|58|59|60|61))|75)|68|5|6)))|316|36|37|39|40|41|42|43|44|(1:46)|289|68|5|6) */
    /* JADX WARN: Can't wrap try/catch for region: R(28:8|9|10|11|12|13|(2:14|15)|16|17|18|19|20|21|(2:25|(3:305|306|(2:310|(1:312)))(2:27|(16:31|32|33|34|36|37|39|40|41|42|43|44|(1:289)(3:48|(4:80|81|82|(1:278)(5:86|(5:90|(5:93|94|(5:96|(16:99|100|101|102|103|104|105|106|107|(6:109|110|111|112|113|114)(1:148)|115|116|117|(8:119|120|121|122|123|124|125|126)(2:137|138)|127|97)|160|161|162)(5:164|(13:167|168|(1:170)|171|172|173|174|(4:176|177|178|179)(1:190)|(1:181)|182|183|184|165)|197|198|199)|163|91)|200|87|88)|201|202|(1:276)(11:206|207|208|(8:214|215|(4:217|218|219|220)(1:237)|221|223|224|209|210)|241|242|(3:244|(5:247|(4:250|(2:252|253)(1:255)|254|248)|256|257|245)|258)|260|261|5|6)))(4:50|51|52|(6:56|57|58|59|60|61))|75)|68|5|6)))|316|36|37|39|40|41|42|43|44|(1:46)|289|68|5|6) */
    /* JADX WARN: Can't wrap try/catch for region: R(29:8|9|10|11|12|13|14|15|16|17|18|19|20|21|(2:25|(3:305|306|(2:310|(1:312)))(2:27|(16:31|32|33|34|36|37|39|40|41|42|43|44|(1:289)(3:48|(4:80|81|82|(1:278)(5:86|(5:90|(5:93|94|(5:96|(16:99|100|101|102|103|104|105|106|107|(6:109|110|111|112|113|114)(1:148)|115|116|117|(8:119|120|121|122|123|124|125|126)(2:137|138)|127|97)|160|161|162)(5:164|(13:167|168|(1:170)|171|172|173|174|(4:176|177|178|179)(1:190)|(1:181)|182|183|184|165)|197|198|199)|163|91)|200|87|88)|201|202|(1:276)(11:206|207|208|(8:214|215|(4:217|218|219|220)(1:237)|221|223|224|209|210)|241|242|(3:244|(5:247|(4:250|(2:252|253)(1:255)|254|248)|256|257|245)|258)|260|261|5|6)))(4:50|51|52|(6:56|57|58|59|60|61))|75)|68|5|6)))|316|36|37|39|40|41|42|43|44|(1:46)|289|68|5|6) */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0817, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x0815, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x0833, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x0834, code lost:
    
        r4 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0819, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x081a, code lost:
    
        r4 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x0224, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x0225, code lost:
    
        r3 = r0;
        r4 = r13;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01b2 A[Catch: Exception -> 0x01f5, TRY_ENTER, TryCatch #10 {Exception -> 0x01f5, blocks: (B:18:0x0104, B:21:0x015b, B:23:0x015f, B:25:0x0165, B:27:0x01b2, B:29:0x01bc, B:31:0x01c6), top: B:17:0x0104 }] */
    /* JADX WARN: Removed duplicated region for block: B:305:0x018b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0295 A[Catch: Exception -> 0x0819, NullPointerException -> 0x0833, TryCatch #40 {NullPointerException -> 0x0833, Exception -> 0x0819, blocks: (B:40:0x022a, B:43:0x0283, B:46:0x0295, B:48:0x029c), top: B:39:0x022a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean doMasterSync(boolean r31) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 2172
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.sync.MasterSync.doMasterSync(boolean):boolean");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:(9:495|496|497|498|499|500|(14:504|505|506|507|508|509|(6:511|512|513|514|515|516)(1:552)|517|518|519|(8:521|522|523|524|526|527|528|529)(2:541|542)|530|501|502)|559|560)(23:56|57|58|(4:60|(14:63|64|65|66|67|68|69|70|71|72|73|(2:75|76)(2:78|(5:82|83|84|85|86))|77|61)|105|106)(20:202|203|(5:205|(11:208|209|210|211|212|213|214|215|(2:217|(5:219|220|221|222|223)(1:230))(1:231)|224|206)|240|241|242)(3:243|244|(4:246|(14:249|250|251|252|253|254|255|256|257|258|259|(2:261|262)(2:264|(5:268|269|270|271|272))|263|247)|291|292)(5:293|294|295|(5:297|(11:300|301|302|303|304|305|306|307|(2:309|(5:311|312|313|314|315)(1:322))(1:323)|316|298)|332|333|334)(3:336|337|(5:339|(14:342|343|344|345|346|347|348|349|350|351|352|(2:354|355)(2:357|(5:361|362|363|364|365))|356|340)|384|385|386)(10:387|388|(4:393|(19:396|397|398|399|400|401|402|403|404|405|406|407|408|409|(3:414|(2:420|421)(1:418)|419)|422|(2:424|425)(1:426)|419|394)|443|444)|446|447|(14:450|451|452|453|454|455|456|457|458|459|460|(2:462|463)(2:465|(5:469|470|471|472|473))|464|448)|492|493|494|108))|335))|109|110|112|113|114|115|116|117|118|(10:120|121|122|123|124|125|126|127|128|129)(1:189)|130|131|132|133|(1:135)(1:138)|136|137)|107|108|109|110|112|113|114|115|116|117|118|(0)(0)|130|131|132|133|(0)(0)|136|137)|112|113|114|115|116|117|118|(0)(0)|130|131|132|133|(0)(0)|136|137) */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0c06, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x0c07, code lost:
    
        r6 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0c0a, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x0c0b, code lost:
    
        r6 = r17;
        r2 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0c85, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0c86, code lost:
    
        r6 = r17;
        r2 = r29;
        r5 = r32;
        r10 = r33;
        r13 = r34;
     */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0baa A[Catch: Exception -> 0x0c06, all -> 0x0c7c, TRY_LEAVE, TryCatch #52 {Exception -> 0x0c06, blocks: (B:118:0x0ba3, B:120:0x0baa), top: B:117:0x0ba3 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0cbc  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0cbf  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0bfa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean doSpecificMasterSync(boolean r44) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 3847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.sync.MasterSync.doSpecificMasterSync(boolean):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x01ad A[Catch: Exception -> 0x0219, TRY_LEAVE, TryCatch #4 {Exception -> 0x0219, blocks: (B:37:0x01a9, B:41:0x01ad), top: B:36:0x01a9, outer: #6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean doGeoSpecificMasterSyncSDTV(boolean r22) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 749
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.sync.MasterSync.doGeoSpecificMasterSyncSDTV(boolean):boolean");
    }

    private void getDeleteData() {
        try {
            SendDetailsForFarmerDetails sendDetailsForFarmerDetails = new SendDetailsForFarmerDetails();
            Gson gson = new Gson();
            sendDetailsForFarmerDetails.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
            String json = gson.toJson(sendDetailsForFarmerDetails);
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            try {
                this.urlString = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetDelete();
                this.response = WebService.getInstance().sendRequestwithToken(json, this.urlString, wcfToken);
                ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(this.response), ResponseModel.class);
                JSONObject jSONObject = new JSONObject(this.response);
                if (responseModel.getStatus().equals("AUTHORISED")) {
                    String str = this.response;
                    if (str != null && !str.isEmpty()) {
                        if (jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) != null && jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).length() > 10) {
                            deleteDataAfterResponse(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE));
                        } else {
                            this.isSyncing = false;
                        }
                    }
                } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                    new GetToken(this.context, 2).StartGetToken();
                    Class<?> cls = Class.forName("com.conceptglobal.pmc.sync.MasterSync");
                    Method declaredMethod = cls.getDeclaredMethod("getDeleteData", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(cls.newInstance(), null);
                }
            } catch (Exception e) {
                PLog.e("Assignment Count", e.toString(), "getDeleteData", this.response);
            }
        } catch (Exception e2) {
            PLog.e(TAG, e2.toString(), "getDeleteData", this.response);
            this.isSyncing = false;
        }
    }

    private void deleteDataAfterResponse(String str) {
        try {
            try {
                Gson gson = new Gson();
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                UnaccessedMasterData unaccessedMasterData = (UnaccessedMasterData) gson.fromJson((Reader) new StringReader(str), UnaccessedMasterData.class);
                if (unaccessedMasterData.getAssignmentIds() != null && !unaccessedMasterData.getAssignmentIds().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getAssignmentIds(), "pmcAssignmentActivityDetails", "ActivityAssignmentId"), openDatabase);
                }
                if (unaccessedMasterData.getContactId() != null && !unaccessedMasterData.getContactId().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getContactId(), "DealerCompanyMapping ", "ContactId"), openDatabase);
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getContactId(), "DealerCropMapping", "ContactId"), openDatabase);
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getRespondentNo(), "DealerLandDetails", "ContactId"), openDatabase);
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getContactId(), "DealerMaster", "ContactId"), openDatabase);
                }
                if (unaccessedMasterData.getRespondentNo() != null && !unaccessedMasterData.getRespondentNo().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getRespondentNo(), "FarmerCropDetails", "RespondentNo"), openDatabase);
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getRespondentNo(), "FarmerLandDetails", "RespondentNo"), openDatabase);
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getRespondentNo(), "FarmerMaster", "RespondentNo"), openDatabase);
                }
                if (unaccessedMasterData.getPMCTerritoryFarmerMaster() != null && !unaccessedMasterData.getPMCTerritoryFarmerMaster().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getPMCTerritoryFarmerMaster(), "PMCTerritoryFarmerMaster", "FarmerID"), openDatabase);
                }
                if (unaccessedMasterData.getPMCTerritoryDealerMaster() != null && !unaccessedMasterData.getPMCTerritoryDealerMaster().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getPMCTerritoryDealerMaster(), "PMCTerritoryDealerMaster", "ContactId"), openDatabase);
                }
                if (unaccessedMasterData.getStateMaster() != null && !unaccessedMasterData.getStateMaster().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getStateMaster(), "StateMaster", "StateId"), openDatabase);
                }
                if (unaccessedMasterData.getDistrictMaster() != null && !unaccessedMasterData.getDistrictMaster().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getDistrictMaster(), "DistrictMaster", "DistrictId"), openDatabase);
                }
                if (unaccessedMasterData.getMandalMaster() != null && !unaccessedMasterData.getMandalMaster().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getMandalMaster(), "MandalMaster", "MandalId"), openDatabase);
                }
                if (unaccessedMasterData.getVillageMaster() != null && !unaccessedMasterData.getVillageMaster().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(unaccessedMasterData.getVillageMaster(), "VillageMaster", "VillageID"), openDatabase);
                }
                if (dbInstance.isDatabaseOpen()) {
                    dbInstance.closeDatabase();
                }
                senddeleteAck();
            } catch (Exception e) {
                PLog.e(TAG, e.toString(), "deleteDataAfterResponse", str);
                this.isSyncing = false;
                if (dbInstance.isDatabaseOpen()) {
                    dbInstance.closeDatabase();
                }
            }
        } catch (Throwable th) {
            if (dbInstance.isDatabaseOpen()) {
                dbInstance.closeDatabase();
            }
            throw th;
        }
    }

    private void senddeleteAck() {
        try {
            SendDetailsForFarmerDetails sendDetailsForFarmerDetails = new SendDetailsForFarmerDetails();
            Gson gson = new Gson();
            sendDetailsForFarmerDetails.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
            String json = gson.toJson(sendDetailsForFarmerDetails);
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            try {
                this.urlString = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetDeleteAck();
                this.response = WebService.getInstance().sendRequestwithToken(json, this.urlString, wcfToken);
                ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(this.response), ResponseModel.class);
                JSONObject jSONObject = new JSONObject(this.response);
                if (responseModel.getStatus().equals("AUTHORISED")) {
                    String str = this.response;
                    if (str != null && !str.isEmpty() && (jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) == null || jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).length() <= 10)) {
                        this.isSyncing = false;
                    }
                } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                    new GetToken(this.context, 2).StartGetToken();
                    Class<?> cls = Class.forName("com.conceptglobal.pmc.sync.MasterSync");
                    Method declaredMethod = cls.getDeclaredMethod("senddeleteAck", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(cls.newInstance(), null);
                }
            } catch (Exception e) {
                PLog.e("Assignment Count", e.toString(), "senddeleteAck", this.response);
            }
        } catch (Exception e2) {
            PLog.e(TAG, e2.toString(), "senddeleteAck", this.response);
            this.isSyncing = false;
        }
    }

    public class MasterSyncAsyncTask extends AsyncTask<Void, String, Void> {
        private CustomProgressDialog customProgressDialog;

        public MasterSyncAsyncTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            this.customProgressDialog = new CustomProgressDialog(MasterSync.this.context, CustomProgressDialog.progressbarType.COUNT_BAR, "GetMasterSyncData");
            if (MasterSync.this.isStatusBar) {
                this.customProgressDialog.showDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_syncMasterPWText()));
            }
            if (MasterSync.isSyncForRecovery && MasterSync.this.isStatusBar) {
                this.customProgressDialog.cancelll.setVisibility(8);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            ConstantsPMC.isRequestCancelled = isCancelled();
            MasterSync masterSync = MasterSync.this;
            masterSync.startMasterSync(masterSync.isStatusBar);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(String... strArr) {
            if (MasterSync.this.isStatusBar) {
                this.customProgressDialog.setProgressMsg(strArr[0]);
            }
            int parseInt = Integer.parseInt(strArr[2]);
            int parseInt2 = Integer.parseInt(strArr[1]);
            if (parseInt2 > parseInt) {
                parseInt2 = parseInt;
            }
            if (MasterSync.this.isStatusBar) {
                this.customProgressDialog.setProgress(parseInt2, parseInt);
            }
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            super.onCancelled();
            ConstantsPMC.isRequestCancelled = true;
            if (MasterSync.this.isStatusBar) {
                this.customProgressDialog.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r5) {
            CustomProgressDialog customProgressDialog;
            super.onPostExecute((MasterSyncAsyncTask) r5);
            if (MasterSync.this.isStatusBar && (customProgressDialog = this.customProgressDialog) != null && customProgressDialog.isShowing()) {
                Context baseContext = ((ContextWrapper) this.customProgressDialog.getContext()).getBaseContext();
                if (baseContext instanceof Activity) {
                    if (!((Activity) baseContext).isFinishing()) {
                        this.customProgressDialog.dismiss();
                    }
                } else {
                    this.customProgressDialog.dismiss();
                }
                if (((PMCApplication) baseContext.getApplicationContext()).isHomeFragmentActive()) {
                    try {
                        Bundle bundle = new Bundle();
                        bundle.putString("callbackActivity", "HomePageFragment");
                        ((OnResultReceiver) baseContext).onReceiveResult(1, bundle);
                    } catch (Exception unused) {
                    }
                }
            }
            MasterSync.isSyncForRecovery = false;
            if (UtilDeclarations.isOnline(MasterSync.this.context) && !ConstantsPMC.isRequestCancelled) {
                DbPatch dbPatch = new DbPatch(MasterSync.this.context, false);
                dbPatch.mTask = dbPatch.new DbPatchAsyncTask();
                dbPatch.mTask.execute(new String[0]);
            }
            ConstantsPMC.isRequestCancelled = false;
            if (((PMCApplication) MasterSync.this.context.getApplicationContext()).isHomeFragmentActive()) {
                HomePageFragment.setRefreshActionButtonState(false);
            }
        }

        public void showProgress(String str, String str2, String str3) {
            publishProgress(str, str2, str3);
        }
    }

    public static String decompressNew(String str) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(Base64.decode(str, 0));
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream, 4096);
            StringBuilder sb = new StringBuilder();
            byte[] bArr = new byte[4096];
            while (true) {
                int read = gZIPInputStream.read(bArr);
                if (read != -1) {
                    sb.append(new String(bArr, 0, read));
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return sb.toString();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private void getTargetVsActualCount() {
        try {
            Gson gson = new Gson();
            String str = "{\"PDAID\":\"" + ConstantsPMC.getInstance().getDeviceID() + "\"}";
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            try {
                this.urlString = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetTargetVsActualCount();
                this.response = WebService.getInstance().sendRequestwithToken(str, this.urlString, wcfToken);
                ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(this.response), ResponseModel.class);
                JSONObject jSONObject = new JSONObject(this.response);
                if (responseModel.getStatus().equals("AUTHORISED")) {
                    String str2 = this.response;
                    if (str2 != null && !str2.isEmpty()) {
                        if (jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) != null) {
                            updateTargetVsActualDetails(jSONObject);
                        } else {
                            this.isSyncing = false;
                        }
                    }
                } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                    new GetToken(this.context, 2).StartGetToken();
                    Class<?> cls = Class.forName("com.conceptglobal.pmc.sync.MasterSync");
                    Method declaredMethod = cls.getDeclaredMethod("getDeleteData", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(cls.newInstance(), null);
                }
            } catch (Exception e) {
                PLog.e("Assignment Count", e.toString(), "getDeleteData", this.response);
            }
        } catch (Exception e2) {
            PLog.e(TAG, e2.toString(), "getDeleteData", this.response);
            this.isSyncing = false;
        }
    }

    private void updateTargetVsActualDetails(JSONObject jSONObject) {
        String str;
        String obj;
        StringBuilder sb;
        String str2 = "(";
        try {
            try {
                new Gson();
                dbInstance.openDatabase();
                JSONArray jSONArray = jSONObject.getJSONArray(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                int i = 0;
                while (i < jSONArray.length()) {
                    SyncErrorLogModel syncErrorLogModel = new SyncErrorLogModel();
                    StringBuilder sb2 = new StringBuilder();
                    StringBuilder sb3 = new StringBuilder();
                    StringBuilder sb4 = new StringBuilder();
                    this.arrQueries = new ArrayList();
                    sb2.append("insert or replace into ActivitySummaryDetails ");
                    sb4.append(str2);
                    sb3.append(str2);
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        try {
                            obj = keys.next().toString();
                            sb = new StringBuilder();
                            sb.append(obj);
                            str = str2;
                        } catch (Exception e) {
                            e = e;
                            str = str2;
                        }
                        try {
                            sb.append(",");
                            sb3.append(sb.toString());
                            sb4.append("'" + jSONObject2.getString(obj) + "',");
                        } catch (Exception e2) {
                            e = e2;
                            PLog.e(TAG, e);
                            str2 = str;
                        }
                        str2 = str;
                    }
                    String str3 = str2;
                    String sb5 = sb3.toString();
                    String sb6 = sb4.toString();
                    String str4 = sb5.substring(0, sb5.length() - 1) + ")";
                    String str5 = sb6.substring(0, sb6.length() - 1) + ")";
                    sb2.append(str4);
                    sb2.append("values");
                    sb2.append(str5);
                    syncErrorLogModel.setQuery(sb2.toString());
                    try {
                        SQLiteDatabase openDatabase = DataBaseHandler.getInstance().openDatabase();
                        try {
                            openDatabase.execSQL(sb2.toString());
                            MasterSyncAsyncTask masterSyncAsyncTask = this.mTask;
                            if (masterSyncAsyncTask != null) {
                                masterSyncAsyncTask.showProgress("Getting Summary Details  - ", "" + this.arrQueries.size() + 1, "" + jSONArray.length());
                            }
                        } catch (Exception e3) {
                            try {
                                openDatabase.execSQL(Queries.getInstance().insertIntoSyncErrorLog(syncErrorLogModel.getColumnName().replaceAll("'", ""), syncErrorLogModel.getSourceID(), syncErrorLogModel.getTableName().replaceAll("'", ""), e3, syncErrorLogModel.getQuery().replaceAll("'", ""), "GetTargetVsActualCount"));
                            } catch (Exception e4) {
                                PLog.e(TAG, e4);
                            }
                            PLog.e(TAG, e3);
                        }
                    } catch (Exception e5) {
                        PLog.e(TAG, e5.toString());
                    }
                    this.arrQueries.add(syncErrorLogModel);
                    Log.d(TAG, sb2.toString());
                    i++;
                    str2 = str3;
                }
                this.arrQueries.clear();
                if (!dbInstance.isDatabaseOpen()) {
                    return;
                }
            } catch (Throwable th) {
                if (dbInstance.isDatabaseOpen()) {
                    dbInstance.closeDatabase();
                }
                throw th;
            }
        } catch (Exception e6) {
            PLog.e(TAG, e6.toString(), "deleteDataAfterResponse", this.response);
            this.isSyncing = false;
            if (!dbInstance.isDatabaseOpen()) {
                return;
            }
        }
        dbInstance.closeDatabase();
    }

    private void getMandiPricesList() {
        String str = ConstantsPMC.getInstance().getMandiPricesServiceUrl() + "?PdaId=" + ConstantsPMC.getInstance().getDeviceID() + "&ViewType=mobile";
        this.urlString = str;
        try {
            this.response = this.webServices.sendGetRequest(str);
            String string = new JSONObject(this.response).getString("Data");
            PriceslistModel priceslistModel = (PriceslistModel) new Gson().fromJson((Reader) new StringReader(string), PriceslistModel.class);
            if (string != null && !string.isEmpty() && !string.equalsIgnoreCase("{}") && priceslistModel.getTable().size() > 0) {
                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeletePricesData());
                InsertDataIntoDB.insertMadiPricesIntoDb(priceslistModel.getTable());
            }
            Log.d("response", this.response);
        } catch (Exception e) {
            e.getMessage();
        }
    }

    private void getApprovalData() {
        try {
            List<String> list = GetDataFromDB.getInstance().getList(Queries.getInstance().getActivityAssignmentIds());
            List<String> list2 = GetDataFromDB.getInstance().getList(Queries.getInstance().getTransIds());
            if (list != null) {
                if ((list.isEmpty() && list2 == null) || list2.isEmpty()) {
                    return;
                }
                try {
                    Gson gson = new Gson();
                    new ApprovlStatusExpensesModel();
                    String str = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getActivityApproval();
                    ActivityApprovalModel activityApprovalModel = new ActivityApprovalModel();
                    activityApprovalModel.setTransids(UtilDeclarations.ListToString(list2));
                    activityApprovalModel.setActivityassignmentids(UtilDeclarations.ListToString(list));
                    activityApprovalModel.setPDAID(ConstantsPMC.getInstance().getDeviceID());
                    JSONObject jSONObject = new JSONObject(WebService.getInstance().sendRequest(new Gson().toJson(activityApprovalModel), str));
                    if (!jSONObject.getString("status").equals("AUTHORISED") || jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) == null || jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).length() <= 10) {
                        return;
                    }
                    ExpensesRespMOdel expensesRespMOdel = (ExpensesRespMOdel) gson.fromJson((Reader) new StringReader(decompressNew(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE))), ExpensesRespMOdel.class);
                    for (int i = 0; i < expensesRespMOdel.getApprovlStatusExpensesModels().size(); i++) {
                        GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().getUpdateActivityDetails(expensesRespMOdel.getApprovlStatusExpensesModels().get(i).getTransId(), expensesRespMOdel.getApprovlStatusExpensesModels().get(i).getIsApproved(), expensesRespMOdel.getApprovlStatusExpensesModels().get(i).getActivityassignmentid() + ""));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
