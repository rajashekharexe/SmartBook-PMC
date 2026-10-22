package com.conceptglobal.pmc.service;

import android.app.IntentService;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.util.Log;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.asynctask.SendPmcDbAsynctask;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fragments.HomePageFragment;
import com.conceptglobal.pmc.model.ApplyLeaveModel;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.AssignmentVisitDetails;
import com.conceptglobal.pmc.model.AttendanceModel;
import com.conceptglobal.pmc.model.ComplaintInfoModel;
import com.conceptglobal.pmc.model.DealerCompanyMapping;
import com.conceptglobal.pmc.model.DealerCropMapping;
import com.conceptglobal.pmc.model.DealerLandDetails;
import com.conceptglobal.pmc.model.DealerMaster;
import com.conceptglobal.pmc.model.ExpensesAssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.ExpensesAssignmentVisitDetails;
import com.conceptglobal.pmc.model.FarmerCropMapping;
import com.conceptglobal.pmc.model.FarmerLandDetails;
import com.conceptglobal.pmc.model.FarmerMasterSyncModel;
import com.conceptglobal.pmc.model.FarmerMultiAttributeDetails;
import com.conceptglobal.pmc.model.FavouriteFarmer;
import com.conceptglobal.pmc.model.FeedbackAssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.FeedbackAssignmentVisitDetails;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.Log4Net;
import com.conceptglobal.pmc.model.PMCAttendanceModel;
import com.conceptglobal.pmc.model.PMCTSTAssignmentActivityDetails;
import com.conceptglobal.pmc.model.RefreshAcknowledge;
import com.conceptglobal.pmc.model.ResignationDetails;
import com.conceptglobal.pmc.model.ResponseModel;
import com.conceptglobal.pmc.model.RetailerMultiAttributeDetails;
import com.conceptglobal.pmc.model.SendFarmerDetailsModel;
import com.conceptglobal.pmc.model.SurveyAssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.SurveyAssignmentVisitDetails;
import com.conceptglobal.pmc.model.SyncErrorLogModel;
import com.conceptglobal.pmc.model.TSTAssignmentVisitDetails;
import com.conceptglobal.pmc.sync.GetToken;
import com.conceptglobal.pmc.utils.CompressHelper;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.FileZipping;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.facebook.network.connectionclass.ConnectionClassManager;
import com.facebook.network.connectionclass.DeviceBandwidthSampler;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SyncDataService extends IntentService {
    private static final String TAG = "SyncDataService";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    List<ApplyLeaveModel> ApplyLeaveModel;
    List<SurveyAssignmentActivityDetailsModel> SurveyAssignmentActivitiesModel;
    List<SurveyAssignmentVisitDetails> SurveyAssignmentVisitModel;
    List<AssignmentActivityDetailsModel> assignmentActivitiesModel;
    List<AssignmentVisitDetails> assignmentVisitModel;
    List<AttendanceModel> attendanceModel;
    Bundle bundle;
    private String callbackActivity;
    List<ComplaintInfoModel> complaintInfoModel;
    List<DealerCompanyMapping> dealerCompanyModel;
    List<DealerCropMapping> dealerCropMappingModel;
    List<DealerLandDetails> dealerLandModel;
    List<DealerMaster> dealersModel;
    List<AssignmentActivityDetailsModel> discardAssignmentActivities;
    private int errLogsCount;
    List<ExpensesAssignmentActivityDetailsModel> expensesAssignmentActivityDetails;
    List<ExpensesAssignmentVisitDetails> expensesAssignmentVisitDetails;
    List<PMCAttendanceModel> faattendanceModel;
    List<FarmerCropMapping> farmerCropmappingModel;
    List<FarmerLandDetails> farmerLandModel;
    List<FarmerMasterSyncModel> farmersModel;
    List<FavouriteFarmer> favouriteFarmerList;
    private List<Log4Net> log4net;
    private ConnectionClassManager mConnectionClassManager;
    private DeviceBandwidthSampler mDeviceBandwidthSampler;
    List<FarmerMultiAttributeDetails> mFarmerMultiAttributeDetailsModel;
    List<FeedbackAssignmentActivityDetailsModel> mFeedbackAssignmentActivitiesModel;
    List<FeedbackAssignmentVisitDetails> mFeedbackAssignmentVisitModel;
    List<PMCTSTAssignmentActivityDetails> mPMCTSTAssignmentModel;
    List<RetailerMultiAttributeDetails> mRetailerMultiAttributeDetails;
    private String msg;
    private int pendingPicutureRecordsCount;
    private int pendingRecordsCount;
    private ResultReceiver receiver;
    List<ResignationDetails> resignationDetails;
    private List<SyncErrorLogModel> syncErrorLog;
    private boolean syncStatus;
    private int totalPendingDataCount;
    List<TSTAssignmentVisitDetails> tstAssignmentVisitModel;

    private void syncVideoDataToServer() {
    }

    public SyncDataService() {
        super(TAG);
        this.assignmentActivitiesModel = new ArrayList();
        this.resignationDetails = new ArrayList();
        this.farmersModel = new ArrayList();
        this.farmerCropmappingModel = new ArrayList();
        this.farmerLandModel = new ArrayList();
        this.dealerLandModel = new ArrayList();
        this.attendanceModel = new ArrayList();
        this.faattendanceModel = new ArrayList();
        this.dealersModel = new ArrayList();
        this.dealerCompanyModel = new ArrayList();
        this.assignmentVisitModel = new ArrayList();
        this.tstAssignmentVisitModel = new ArrayList();
        this.dealerCropMappingModel = new ArrayList();
        this.discardAssignmentActivities = new ArrayList();
        this.mPMCTSTAssignmentModel = new ArrayList();
        this.mFarmerMultiAttributeDetailsModel = new ArrayList();
        this.mRetailerMultiAttributeDetails = new ArrayList();
        this.SurveyAssignmentActivitiesModel = new ArrayList();
        this.SurveyAssignmentVisitModel = new ArrayList();
        this.mFeedbackAssignmentActivitiesModel = new ArrayList();
        this.mFeedbackAssignmentVisitModel = new ArrayList();
        this.favouriteFarmerList = new ArrayList();
        this.ApplyLeaveModel = new ArrayList();
        this.complaintInfoModel = new ArrayList();
        this.expensesAssignmentActivityDetails = new ArrayList();
        this.expensesAssignmentVisitDetails = new ArrayList();
        this.syncErrorLog = new ArrayList();
        this.log4net = new ArrayList();
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
                    syncDataToServer();
                } else {
                    updateUIIfNeccessary(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_internetIsTurnedOffToast()));
                }
            }
        }
    }

    private void clearAllObjects() {
        List<AssignmentActivityDetailsModel> list = this.assignmentActivitiesModel;
        if (list != null) {
            list.clear();
        }
        List<ResignationDetails> list2 = this.resignationDetails;
        if (list2 != null) {
            list2.clear();
        }
        List<SurveyAssignmentActivityDetailsModel> list3 = this.SurveyAssignmentActivitiesModel;
        if (list3 != null) {
            list3.clear();
        }
        List<SurveyAssignmentVisitDetails> list4 = this.SurveyAssignmentVisitModel;
        if (list4 != null) {
            list4.clear();
        }
        List<ExpensesAssignmentActivityDetailsModel> list5 = this.expensesAssignmentActivityDetails;
        if (list5 != null) {
            list5.clear();
        }
        List<ExpensesAssignmentVisitDetails> list6 = this.expensesAssignmentVisitDetails;
        if (list6 != null) {
            list6.clear();
        }
        List<FarmerCropMapping> list7 = this.farmerCropmappingModel;
        if (list7 != null) {
            list7.clear();
        }
        List<FarmerLandDetails> list8 = this.farmerLandModel;
        if (list8 != null) {
            list8.clear();
        }
        List<DealerLandDetails> list9 = this.dealerLandModel;
        if (list9 != null) {
            list9.clear();
        }
        List<AttendanceModel> list10 = this.attendanceModel;
        if (list10 != null) {
            list10.clear();
        }
        List<PMCAttendanceModel> list11 = this.faattendanceModel;
        if (list11 != null) {
            list11.clear();
        }
        List<FarmerMasterSyncModel> list12 = this.farmersModel;
        if (list12 != null) {
            list12.clear();
        }
        List<DealerMaster> list13 = this.dealersModel;
        if (list13 != null) {
            list13.clear();
        }
        List<DealerCompanyMapping> list14 = this.dealerCompanyModel;
        if (list14 != null) {
            list14.clear();
        }
        List<DealerCompanyMapping> list15 = this.dealerCompanyModel;
        if (list15 != null) {
            list15.clear();
        }
        List<AssignmentVisitDetails> list16 = this.assignmentVisitModel;
        if (list16 != null) {
            list16.clear();
        }
        List<TSTAssignmentVisitDetails> list17 = this.tstAssignmentVisitModel;
        if (list17 != null) {
            list17.clear();
        }
        List<FeedbackAssignmentVisitDetails> list18 = this.mFeedbackAssignmentVisitModel;
        if (list18 != null) {
            list18.clear();
        }
        List<ComplaintInfoModel> list19 = this.complaintInfoModel;
        if (list19 != null) {
            list19.clear();
        }
        List<SyncErrorLogModel> list20 = this.syncErrorLog;
        if (list20 != null) {
            list20.clear();
        }
        List<Log4Net> list21 = this.log4net;
        if (list21 != null) {
            list21.clear();
        }
        List<FarmerMultiAttributeDetails> list22 = this.mFarmerMultiAttributeDetailsModel;
        if (list22 != null) {
            list22.clear();
        }
        List<RetailerMultiAttributeDetails> list23 = this.mRetailerMultiAttributeDetails;
        if (list23 != null) {
            list23.clear();
        }
        List<ApplyLeaveModel> list24 = this.ApplyLeaveModel;
        if (list24 != null) {
            list24.clear();
        }
    }

    private void preparePendingData() throws Exception {
        this.farmersModel = GetDataFromDB.getInstance().getListOfFarmers(Queries.getInstance().getFarmerMasterDataQry());
        this.farmerCropmappingModel = GetDataFromDB.getInstance().getFarmerCropMappingDetails(Queries.getInstance().getSelectFarmerCropMapping());
        this.farmerLandModel = GetDataFromDB.getInstance().getFarmerLandDetails(Queries.getInstance().getSelectFarmerLandDetails());
        this.dealerLandModel = GetDataFromDB.getInstance().getDealerLandDetails(Queries.getInstance().getselectDealerLandDetails());
        this.attendanceModel = GetDataFromDB.getInstance().getAttendanceDetails(Queries.getInstance().getSelectAttendanceDetails());
        this.resignationDetails = GetDataFromDB.getInstance().getResignationDetails(Queries.getInstance().getSelectResignationDetailsSync());
        this.faattendanceModel = GetDataFromDB.getInstance().getPMCAttendanceDetails(Queries.getInstance().getSelectPMCAttendanceDetails());
        this.dealersModel = GetDataFromDB.getInstance().getListOfDealers(Queries.getInstance().getDealerMasterDataQry());
        this.dealerCompanyModel = GetDataFromDB.getInstance().getDealerCompanyDetails(Queries.getInstance().getDealerCompanyDataQry());
        this.assignmentVisitModel = GetDataFromDB.getInstance().getAssignmentVisitDetails(Queries.getInstance().getSelectAssignmentVisitDetails());
        this.tstAssignmentVisitModel = GetDataFromDB.getInstance().getTSTAssignmentVisitDetails(Queries.getInstance().getSelectTSTAssignmentVisitDetails());
        this.mFeedbackAssignmentVisitModel = GetDataFromDB.getInstance().getFBFAssignmentVisitDetails(Queries.getInstance().getSelectFBFAssignmentVisitDetails());
        this.assignmentActivitiesModel = GetDataFromDB.getInstance().getFarmerActivityDetails(Queries.getInstance().getSelectAssignmentActivityDetails());
        this.mPMCTSTAssignmentModel = GetDataFromDB.getInstance().getPMCTSTAssignmentActivityDetails(Queries.getInstance().getSelectPMCTSTAssignmentActivityDetails());
        this.mFeedbackAssignmentActivitiesModel = GetDataFromDB.getInstance().getPMCFBFAssignmentActivityDetails(Queries.getInstance().getSelectPMCFBFAssignmentActivityDetails());
        this.mFarmerMultiAttributeDetailsModel = GetDataFromDB.getInstance().getFarmerMultiAttributeDetails(Queries.getInstance().getGetFarmerMultiAttributeDetails());
        this.mRetailerMultiAttributeDetails = GetDataFromDB.getInstance().getDealerMultiAttributeDetails(Queries.getInstance().getGetDealerMultiAttributeDetails());
        this.SurveyAssignmentActivitiesModel = GetDataFromDB.getInstance().getSurveyActivityDetails(Queries.getInstance().getSurveyAssignmentActivityDetails());
        this.SurveyAssignmentVisitModel = GetDataFromDB.getInstance().getSurveyAssignmentVisitDetails(Queries.getInstance().getSurveyAssignmentVisitDetails());
        this.complaintInfoModel = GetDataFromDB.getInstance().getFBFComplaintResolutionDetails(Queries.getInstance().getFBFComplaintResolutionDetails());
        this.favouriteFarmerList = GetDataFromDB.getInstance().getFavouriteFarmerDetails(Queries.getInstance().getSelectFavouriteFarmer());
        this.ApplyLeaveModel = GetDataFromDB.getInstance().getApplyLeaveDetails(Queries.getInstance().getSelectApplyLeaveDetailsDetails());
        this.expensesAssignmentActivityDetails = GetDataFromDB.getInstance().getpmcExpenseAssignmentActivityDetails(Queries.getInstance().getExpenseAssignmentActivityDetails());
        this.expensesAssignmentVisitDetails = GetDataFromDB.getInstance().getExpensesAssignmentVisitDetails(Queries.getInstance().getExpenseAssignmentVisitDetails());
    }

    private void prepareLogsData() throws Exception {
        this.syncErrorLog = GetDataFromDB.getInstance().getSyncErrorLogsData(Queries.getInstance().getSelectSyncErrorLogData());
        this.log4net = GetDataFromDB.getInstance().getLog4NetData(Queries.getInstance().getSelectLog4NetData());
    }

    private void syncDataToServer() {
        clearAllObjects();
        try {
            this.mConnectionClassManager = ConnectionClassManager.getInstance();
            this.mDeviceBandwidthSampler = DeviceBandwidthSampler.getInstance();
            this.pendingRecordsCount = GetDataFromDB.getInstance().getTotalPendingRecordsCount();
            this.pendingPicutureRecordsCount = GetDataFromDB.getInstance().getTotalPictureReportingRecords();
            int logsCount = GetDataFromDB.getInstance().getLogsCount();
            this.errLogsCount = logsCount;
            int i = this.pendingRecordsCount;
            int i2 = this.pendingPicutureRecordsCount + i + logsCount;
            this.totalPendingDataCount = i2;
            if (i2 > 0) {
                if (i > 0) {
                    if (i > 1000) {
                        sendTableWiseDataToServer();
                    } else {
                        try {
                            preparePendingData();
                        } catch (Exception unused) {
                        }
                        syncTransactionDataToServer(false);
                    }
                }
                if (this.pendingPicutureRecordsCount > 0) {
                    sendPicturesToServer();
                    sendVideoToServer();
                }
                if (GetDataFromDB.getInstance().getIsRecordExists(Queries.getInstance().getProfilePicStatus())) {
                    sendProfilePictureToServer();
                }
                if (this.errLogsCount > 0) {
                    syncTransactionDataToServer(true);
                }
                if (UtilDeclarations.getCountForFOTrackerSync() > 0 && UtilDeclarations.isOnline(getApplicationContext()) && !UtilDeclarations.isServiceRunning(getApplicationContext(), com.conceptglobal.pmc.fotracker.sync.SyncDataService.class)) {
                    startService(new Intent(getApplicationContext(), (Class<?>) com.conceptglobal.pmc.fotracker.sync.SyncDataService.class));
                }
            }
        } catch (Exception unused2) {
            this.syncStatus = false;
        }
        if (this.totalPendingDataCount == 0) {
            this.msg = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noPendDataToServerToast());
        } else if (!this.syncStatus) {
            this.msg = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_sendDataPicToServerFailedAlert());
        } else {
            this.msg = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_sentSuccessfullDialogText());
        }
        updateUIIfNeccessary(this.msg);
    }

    private void sendProfilePictureToServer() {
        try {
            String webApiToken = ConstantsPMC.getInstance().getWebApiToken();
            if (checkIsPictureExists(ConstantsPMC.profilePicPath)) {
                String sendRequestMultipartwithWebApiToken = WebService.getInstance().sendRequestMultipartwithWebApiToken(prepareMultiPart(), ConstantsPMC.getInstance().getUrlPMCServiceProfileImages(), webApiToken);
                Log.i("Image multiPart ", sendRequestMultipartwithWebApiToken + "");
                if (sendRequestMultipartwithWebApiToken == null || sendRequestMultipartwithWebApiToken.length() <= 2) {
                    return;
                }
                if (!sendRequestMultipartwithWebApiToken.equalsIgnoreCase("Unauthorized") && !sendRequestMultipartwithWebApiToken.equalsIgnoreCase("Unauthorised")) {
                    String string = new JSONArray(sendRequestMultipartwithWebApiToken).getJSONObject(0).getString("Status");
                    if (string.equalsIgnoreCase("null") || string.equalsIgnoreCase("") || string == null) {
                        return;
                    }
                    if (!string.equalsIgnoreCase("null") && !string.equalsIgnoreCase("") && string != null && string.equalsIgnoreCase("1")) {
                        Log.e(TAG, "Profile Pic Updated @ server");
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getUpdateProfileImageDetails());
                    }
                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteImageActDetails(Long.parseLong(string)));
                    return;
                }
                new GetToken(null, 1).StartGetToken();
                Class<?> cls = Class.forName("com.conceptglobal.pmc.service.SyncDataService");
                Method declaredMethod = cls.getDeclaredMethod("sendProfilePictureToServer", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(cls.newInstance(), null);
            }
        } catch (Exception e) {
            PLog.e(TAG, e.toString(), "sendProfilePictureToServer", "");
        }
    }

    private void syncTransactionDataToServer(boolean z) {
        SendFarmerDetailsModel sendFarmerDetailsModel = new SendFarmerDetailsModel();
        if (z) {
            try {
                if (this.errLogsCount < 1000) {
                    prepareLogsData();
                    sendFarmerDetailsModel.setLog4net(this.log4net);
                    sendFarmerDetailsModel.setSyncErrorLog(this.syncErrorLog);
                    submitDataToServer(ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodLog4Net(), sendFarmerDetailsModel);
                } else {
                    sendTableByTableDataToServer("SyncErrorLog");
                    sendTableByTableDataToServer("log4net");
                }
                return;
            } catch (Exception unused) {
                return;
            }
        }
        sendFarmerDetailsModel.setAssignmentActivitiesModel(this.assignmentActivitiesModel);
        sendFarmerDetailsModel.setFarmersModel(this.farmersModel);
        sendFarmerDetailsModel.setFarmerCropmappingModel(this.farmerCropmappingModel);
        sendFarmerDetailsModel.setFarmerLandModel(this.farmerLandModel);
        sendFarmerDetailsModel.setDealerLandModel(this.dealerLandModel);
        sendFarmerDetailsModel.setAttendanceModel(this.attendanceModel);
        sendFarmerDetailsModel.setResignationDetails(this.resignationDetails);
        sendFarmerDetailsModel.setPmcattendanceModel(this.faattendanceModel);
        sendFarmerDetailsModel.setDealersModel(this.dealersModel);
        sendFarmerDetailsModel.setDealerCompanyModel(this.dealerCompanyModel);
        sendFarmerDetailsModel.setDealerCropModel(this.dealerCropMappingModel);
        sendFarmerDetailsModel.setAssignmentVisitModel(this.assignmentVisitModel);
        sendFarmerDetailsModel.setTstAssignmentVisitModel(this.tstAssignmentVisitModel);
        sendFarmerDetailsModel.setFeedbackAssignmentVisitDetails(this.mFeedbackAssignmentVisitModel);
        sendFarmerDetailsModel.settestimonialModel(this.mPMCTSTAssignmentModel);
        sendFarmerDetailsModel.setFeedbackAssignmentActivityDetailsModels(this.mFeedbackAssignmentActivitiesModel);
        sendFarmerDetailsModel.setFarmerAttributeDetails(this.mFarmerMultiAttributeDetailsModel);
        sendFarmerDetailsModel.setDealerAttributeDetails(this.mRetailerMultiAttributeDetails);
        sendFarmerDetailsModel.setSurveyAssignmentActivitiesModel(this.SurveyAssignmentActivitiesModel);
        sendFarmerDetailsModel.setSurveyAssignmentVisitModel(this.SurveyAssignmentVisitModel);
        sendFarmerDetailsModel.setComplaintInfoModel(this.complaintInfoModel);
        sendFarmerDetailsModel.setApplyLeave(this.ApplyLeaveModel);
        sendFarmerDetailsModel.setExpensesAssignmentActivityDetailsModel(this.expensesAssignmentActivityDetails);
        sendFarmerDetailsModel.setExpensesAssignmentVisitDetails(this.expensesAssignmentVisitDetails);
        submitDataToServer(ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSyncPMCData(), sendFarmerDetailsModel);
    }

    private void submitDataToServer(String str, SendFarmerDetailsModel sendFarmerDetailsModel) {
        this.syncStatus = true;
        try {
            Gson create = new GsonBuilder().disableHtmlEscaping().create();
            String json = create.toJson(sendFarmerDetailsModel);
            WebService webService = WebService.getInstance();
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            this.mDeviceBandwidthSampler.startSampling();
            try {
                InsertDataIntoDB.insertLog4Trace("APICallsTimeDetails", "", "", "", "Refresh Data start  --" + UtilDeclarations.getDateTime(), false);
            } catch (Exception unused) {
            }
            String sendRequestwithToken = webService.sendRequestwithToken(json, str, wcfToken);
            this.mDeviceBandwidthSampler.stopSampling();
            try {
                InsertDataIntoDB.insertLog4Trace("NetworkStatus", "", "", "", "Transaction sync--" + this.mConnectionClassManager.getCurrentBandwidthQuality().toString(), false);
                InsertDataIntoDB.insertLog4Trace("APICallsTimeDetails", "", "", "", "Refresh Data end  --" + UtilDeclarations.getDateTime(), false);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (sendRequestwithToken == null || sendRequestwithToken.equals("")) {
                this.syncStatus = false;
            } else {
                ResponseModel responseModel = (ResponseModel) create.fromJson((Reader) new StringReader(sendRequestwithToken), ResponseModel.class);
                JSONObject jSONObject = new JSONObject(sendRequestwithToken);
                if (responseModel.getStatus().equals("AUTHORISED")) {
                    if (responseModel.getData() != null && !jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).isEmpty()) {
                        deleteDataAfterResponse(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE));
                    }
                } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                    new GetToken(null, 2).StartGetToken();
                    Class<?> cls = Class.forName("com.conceptglobal.pmc.service.SyncDataService");
                    Method declaredMethod = cls.getDeclaredMethod("syncDataToServer", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(cls.newInstance(), null);
                }
                this.syncStatus = true;
            }
            Log.i(TAG, json + "");
            Log.i(TAG, sendRequestwithToken + "");
        } catch (Exception unused2) {
            this.syncStatus = false;
        }
    }

    private void deleteDataAfterResponse(String str) {
        try {
            try {
                Gson gson = new Gson();
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                RefreshAcknowledge refreshAcknowledge = (RefreshAcknowledge) gson.fromJson((Reader) new StringReader(str), RefreshAcknowledge.class);
                if (refreshAcknowledge.getAssignmentActivitiesList() != null && !refreshAcknowledge.getAssignmentActivitiesList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(refreshAcknowledge.getAssignmentActivitiesList(), "pmcAssignmentActivityDetails", "detailsID"), openDatabase);
                }
                if (refreshAcknowledge.getAssignmentVisitList() != null && !refreshAcknowledge.getAssignmentVisitList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(refreshAcknowledge.getAssignmentVisitList(), "pmcAssignmentVisit", "visitId"), openDatabase);
                }
                if (refreshAcknowledge.getExpenseassignmentActivitiesList() != null && !refreshAcknowledge.getExpenseassignmentActivitiesList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getExpenseassignmentActivitiesList(), "pmcExpenseAssignmentActivityDetails", "detailsID"), openDatabase);
                }
                if (refreshAcknowledge.getExpenseassignmentVisitList() != null && !refreshAcknowledge.getExpenseassignmentVisitList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getExpenseassignmentVisitList(), "pmcExpenseAssignmentVisit", "visitId"), openDatabase);
                }
                if (refreshAcknowledge.getDealerCompanyList() != null && !refreshAcknowledge.getDealerCompanyList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getDealerCompanyList(), "DealerCompanyMapping ", "MappingId"), openDatabase);
                }
                if (refreshAcknowledge.getDealerLandList() != null && !refreshAcknowledge.getDealerLandList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getDealerLandList(), "DealerLandDetails", "DetailsID"), openDatabase);
                }
                if (refreshAcknowledge.getDealerMasterList() != null && !refreshAcknowledge.getDealerMasterList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getDealerMasterList(), "DealerMaster", "ContactId"), openDatabase);
                }
                if (refreshAcknowledge.getDealerCropList() != null && !refreshAcknowledge.getDealerCropList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getDealerCropList(), "DealerCropMapping", "MappingId"), openDatabase);
                }
                if (refreshAcknowledge.getFarmerCropList() != null && !refreshAcknowledge.getFarmerCropList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getFarmerCropList(), "FarmerCropDetails", "DetailsID"), openDatabase);
                }
                if (refreshAcknowledge.getFarmerLandList() != null && !refreshAcknowledge.getFarmerLandList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getFarmerLandList(), "FarmerLandDetails", "DetailsID"), openDatabase);
                }
                if (refreshAcknowledge.getFarmerMasterList() != null && !refreshAcknowledge.getFarmerMasterList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getFarmerMasterList(), "FarmerMaster", "RespondentNo"), openDatabase);
                }
                if (refreshAcknowledge.getFAAttendanceList() != null && !refreshAcknowledge.getFAAttendanceList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getFAAttendanceList(), "AttendanceDetails", "AttendanceID"), openDatabase);
                }
                if (refreshAcknowledge.getLog4netList() != null && !refreshAcknowledge.getLog4netList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(refreshAcknowledge.getLog4netList(), "Log4Net", "id"), openDatabase);
                }
                if (refreshAcknowledge.getSyncErrorLogList() != null && !refreshAcknowledge.getSyncErrorLogList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(refreshAcknowledge.getSyncErrorLogList(), "SyncErrorLog", "id"), openDatabase);
                }
                if (refreshAcknowledge.getResignationList() != null && !refreshAcknowledge.getResignationList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getResignationList(), "ResignedUsers", "ID"), openDatabase);
                }
                if (refreshAcknowledge.getUserLeaveList() != null && !refreshAcknowledge.getUserLeaveList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getUserLeaveList(), "ApplyLeave", "AttendanceID"), openDatabase);
                }
                if (refreshAcknowledge.getFACoreAttendanceList() != null && !refreshAcknowledge.getFACoreAttendanceList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(refreshAcknowledge.getFACoreAttendanceList(), "PMCAttendanceDetails", "TransId"), openDatabase);
                }
                if (refreshAcknowledge.getFarmerAttributeDetails() != null && !refreshAcknowledge.getFarmerAttributeDetails().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getFarmerAttributeDetails(), "FarmerMultiAttributeDetails", "LineId"), openDatabase);
                }
                if (refreshAcknowledge.getDealerAttributeDetails() != null && !refreshAcknowledge.getDealerAttributeDetails().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getDealerAttributeDetails(), "DealerMultiAttributeDetails", "LineId"), openDatabase);
                }
                if (refreshAcknowledge.getTSTassignmentActivitiesList() != null && !refreshAcknowledge.getTSTassignmentActivitiesList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(refreshAcknowledge.getTSTassignmentActivitiesList(), "pmcTSTAssignmentActivityDetails", "detailsID"), openDatabase);
                }
                if (refreshAcknowledge.getFBFassignmentActivitiesList() != null && !refreshAcknowledge.getFBFassignmentActivitiesList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getFBFassignmentActivitiesList(), "pmcFBFAssignmentActivityDetails ", "detailsID"), openDatabase);
                }
                if (refreshAcknowledge.getSurveyassignmentActivitiesList() != null && !refreshAcknowledge.getSurveyassignmentActivitiesList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getSurveyassignmentActivitiesList(), "pmcSurveyAssignmentActivityDetails ", "detailsID"), openDatabase);
                }
                if (refreshAcknowledge.getTSTassignmentVisitList() != null && !refreshAcknowledge.getTSTassignmentVisitList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().getDeleteDetailsbyID(refreshAcknowledge.getTSTassignmentVisitList(), "pmcTSTAssignmentVisit", "visitId"), openDatabase);
                }
                if (refreshAcknowledge.getFBFassignmentVisitList() != null && !refreshAcknowledge.getFBFassignmentVisitList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getFBFassignmentVisitList(), "pmcFBFAssignmentVisit ", "visitId"), openDatabase);
                }
                if (refreshAcknowledge.getSurveyassignmentVisitList() != null && !refreshAcknowledge.getSurveyassignmentVisitList().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getSurveyassignmentVisitList(), "pmcSurveyAssignmentVisit ", "visitId"), openDatabase);
                }
                if (refreshAcknowledge.getComplaintInfo() != null && !refreshAcknowledge.getComplaintInfo().equalsIgnoreCase("")) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().UpdateDetailsbyID(refreshAcknowledge.getComplaintInfo(), "FBFActivityResolveTrack ", "TransId"), openDatabase);
                }
                if (!dbInstance.isDatabaseOpen()) {
                    return;
                }
            } catch (Exception unused) {
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

    public void sendPicturesToServer() {
        String webApiToken = ConstantsPMC.getInstance().getWebApiToken();
        try {
            List<ImageDetails> imageDetailsForSync = GetDataFromDB.getInstance().getImageDetailsForSync(Queries.getInstance().getImageDetailsQryForSync());
            if (imageDetailsForSync.size() > 0) {
                for (int i = 0; i < imageDetailsForSync.size(); i++) {
                    MultipartEntity prepareMultiPart = prepareMultiPart(imageDetailsForSync.get(i));
                    WebService webService = WebService.getInstance();
                    String urlPMCServiceImages = ConstantsPMC.getInstance().getUrlPMCServiceImages();
                    imageDetailsForSync.get(i).getPicturePath();
                    this.mDeviceBandwidthSampler.startSampling();
                    try {
                        InsertDataIntoDB.insertLog4Trace("APICallsTimeDetails", "", "", "", "Image  start  --" + UtilDeclarations.getDateTime(), false);
                    } catch (Exception unused) {
                    }
                    String sendRequestMultipartwithWebApiToken = webService.sendRequestMultipartwithWebApiToken(prepareMultiPart, urlPMCServiceImages, webApiToken);
                    this.mDeviceBandwidthSampler.stopSampling();
                    try {
                        InsertDataIntoDB.insertLog4Trace("NetworkStatus", "", "", "", "Images sync--" + this.mConnectionClassManager.getCurrentBandwidthQuality().toString(), false);
                        InsertDataIntoDB.insertLog4Trace("APICallsTimeDetails", "", "", "", "Image  end  --" + UtilDeclarations.getDateTime(), false);
                    } catch (Exception unused2) {
                    }
                    Log.i("Image multiPart ", sendRequestMultipartwithWebApiToken + "");
                    if (sendRequestMultipartwithWebApiToken != null && sendRequestMultipartwithWebApiToken.length() > 2) {
                        if (sendRequestMultipartwithWebApiToken.contains("Authorization has been denied for this request")) {
                            new GetToken(null, 1).StartGetToken();
                            Class<?> cls = Class.forName("com.conceptglobal.pmc.service.SyncDataService");
                            Method declaredMethod = cls.getDeclaredMethod("sendPicturesToServer", null);
                            declaredMethod.setAccessible(true);
                            declaredMethod.invoke(cls.newInstance(), null);
                        } else {
                            String string = new JSONArray(sendRequestMultipartwithWebApiToken).getJSONObject(0).getString("Status");
                            if (!string.equalsIgnoreCase("null") && !string.equalsIgnoreCase("") && string != null) {
                                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getUpdateImageActDetails(string));
                                ImageDetails imageDetail = GetDataFromDB.getInstance().getImageDetail(Queries.getInstance().getImageDetailQueryBYImageId(string));
                                if (imageDetail != null) {
                                    File file = new File(imageDetail.getPicturePath());
                                    if (file.exists()) {
                                        file.delete();
                                    }
                                }
                                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteImageActDetails(Long.parseLong(string)));
                            }
                        }
                    }
                }
            }
        } catch (Exception unused3) {
            this.syncStatus = false;
        }
    }

    public void sendVideoToServer() {
        String webApiToken = ConstantsPMC.getInstance().getWebApiToken();
        try {
            List<ImageDetails> imageDetailsForSync = GetDataFromDB.getInstance().getImageDetailsForSync(Queries.getInstance().getVideoDetailsQryForSync());
            if (imageDetailsForSync.size() > 0) {
                for (int i = 0; i < imageDetailsForSync.size(); i++) {
                    MultipartEntity prepareMultiPart = prepareMultiPart(imageDetailsForSync.get(i));
                    WebService webService = WebService.getInstance();
                    String urlPMCServiceVideos = ConstantsPMC.getInstance().getUrlPMCServiceVideos();
                    imageDetailsForSync.get(i).getPicturePath();
                    this.mDeviceBandwidthSampler.startSampling();
                    try {
                        InsertDataIntoDB.insertLog4Trace("APICallsTimeDetails", "", "", "", "video  start  --" + UtilDeclarations.getDateTime(), false);
                    } catch (Exception unused) {
                    }
                    String sendRequestMultipartwithWebApiToken = webService.sendRequestMultipartwithWebApiToken(prepareMultiPart, urlPMCServiceVideos, webApiToken);
                    this.mDeviceBandwidthSampler.stopSampling();
                    try {
                        InsertDataIntoDB.insertLog4Trace("NetworkStatus", "", "", "", "Viodes sync--" + this.mConnectionClassManager.getCurrentBandwidthQuality().toString(), false);
                        InsertDataIntoDB.insertLog4Trace("APICallsTimeDetails", "", "", "", "video  end  --" + UtilDeclarations.getDateTime(), false);
                    } catch (Exception unused2) {
                    }
                    Log.i("Video multipart", sendRequestMultipartwithWebApiToken + "");
                    if (sendRequestMultipartwithWebApiToken != null && sendRequestMultipartwithWebApiToken.length() > 2) {
                        if (sendRequestMultipartwithWebApiToken.contains("Authorization has been denied for this request")) {
                            new GetToken(null, 1).StartGetToken();
                            Class<?> cls = Class.forName("com.conceptglobal.pmc.service.SyncDataService");
                            Method declaredMethod = cls.getDeclaredMethod("SendVideosToServer", null);
                            declaredMethod.setAccessible(true);
                            declaredMethod.invoke(cls.newInstance(), null);
                        } else {
                            String string = new JSONArray(sendRequestMultipartwithWebApiToken).getJSONObject(0).getString("Status");
                            if (!string.equalsIgnoreCase("null") && !string.equalsIgnoreCase("") && string != null) {
                                GetDataFromDB.getInstance().getImageDetail(Queries.getInstance().getImageDetailQueryBYImageId(string));
                                if (!string.equalsIgnoreCase("null") && !string.equalsIgnoreCase("") && string != null) {
                                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getUpdateImageActDetails(string));
                                    ImageDetails imageDetail = GetDataFromDB.getInstance().getImageDetail(Queries.getInstance().getImageDetailQueryBYImageId(string));
                                    if (imageDetail != null) {
                                        File file = new File(imageDetail.getPicturePath());
                                        if (file.exists()) {
                                            file.delete();
                                        }
                                    }
                                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteImageActDetails(Long.parseLong(string)));
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            PLog.e(TAG, e.toString(), "sendVideosToServer", "");
        }
    }

    private boolean checkIsPictureExists(String str) {
        return new File(str).exists();
    }

    private MultipartEntity prepareMultiPart(ImageDetails imageDetails) throws IOException {
        MultipartEntity multipartEntity;
        FileNotFoundException e;
        MultipartEntity multipartEntity2 = null;
        try {
            multipartEntity = new MultipartEntity();
            try {
                Charset forName = Charset.forName("UTF-8");
                FileZipping fileZipping = new FileZipping(getApplicationContext());
                File file = new File(new CompressHelper().getCompressLoaction(getApplicationContext()) + "ZipFile.zip");
                fileZipping.zip_File(imageDetails.getPicturePath(), file.getAbsolutePath());
                File file2 = new File(file.getAbsolutePath());
                multipartEntity.addPart("imageId", new StringBody(String.valueOf(imageDetails.getImageId()), forName));
                multipartEntity.addPart("assignmentId", new StringBody(String.valueOf(imageDetails.getAssignmentId()), forName));
                multipartEntity.addPart("activityId", new StringBody(String.valueOf(imageDetails.getActivityId()), forName));
                multipartEntity.addPart("AttributeId", new StringBody(String.valueOf(imageDetails.getAttributeId()), forName));
                multipartEntity.addPart("Subject", new StringBody(imageDetails.getSubject(), forName));
                multipartEntity.addPart("Comments", new StringBody(imageDetails.getComments(), forName));
                if (imageDetails.getRemarks() != null) {
                    multipartEntity.addPart("Remarks", new StringBody(imageDetails.getRemarks(), forName));
                } else {
                    multipartEntity.addPart("Remarks", new StringBody(""));
                }
                multipartEntity.addPart("FarmerId", new StringBody(String.valueOf(imageDetails.getFarmerId()), forName));
                multipartEntity.addPart("picturePath", new FileBody(file2));
                multipartEntity.addPart("pdaID", new StringBody(String.valueOf(imageDetails.getPdaID()), forName));
                multipartEntity.addPart("createdBy", new StringBody(imageDetails.getCreatedBy(), forName));
                multipartEntity.addPart("ctreatedDate", new StringBody(imageDetails.getCtreatedDate(), forName));
                multipartEntity.addPart("updatedBy", new StringBody(imageDetails.getUpdatedBy(), forName));
                multipartEntity.addPart("updatedDate", new StringBody(imageDetails.getUpdatedDate(), forName));
                multipartEntity.addPart("referenceId", new StringBody(imageDetails.getReferenceId() != null ? imageDetails.getReferenceId() : "", forName));
                multipartEntity.addPart("referenceType", new StringBody(imageDetails.getReferenceType(), forName));
                multipartEntity.addPart("eventTypeId", new StringBody(String.valueOf(imageDetails.getEventTypeId()), forName));
                multipartEntity.addPart("ContentTypeId", new StringBody(String.valueOf(imageDetails.getContentTypeId()), forName));
                multipartEntity.addPart("IdTransid", new StringBody(String.valueOf(imageDetails.getIdTransid()), forName));
                return multipartEntity;
            } catch (FileNotFoundException e2) {
                e = e2;
                try {
                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteImageActDetails(imageDetails.getImageId()));
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                PLog.e(TAG, e, 0);
                return multipartEntity;
            } catch (Exception e4) {
                e = e4;
                multipartEntity2 = multipartEntity;
                e.printStackTrace();
                return multipartEntity2;
            }
        } catch (FileNotFoundException e5) {
            multipartEntity = null;
            e = e5;
        } catch (Exception e6) {
            e = e6;
        }
    }

    private MultipartEntity prepareMultiPart() {
        MultipartEntity multipartEntity = null;
        try {
            MultipartEntity multipartEntity2 = new MultipartEntity();
            try {
                Charset forName = Charset.forName("UTF-8");
                FileZipping fileZipping = new FileZipping(getApplicationContext());
                File file = new File(new CompressHelper().getCompressLoaction(getApplicationContext()) + "ZipFile.zip");
                fileZipping.zip_File(ConstantsPMC.profilePicPath, file.getAbsolutePath());
                File file2 = new File(file.getAbsolutePath());
                multipartEntity2.addPart("imageId", new StringBody(""));
                multipartEntity2.addPart("assignmentId", new StringBody(""));
                multipartEntity2.addPart("activityId", new StringBody(""));
                multipartEntity2.addPart("AttributeId", new StringBody(""));
                multipartEntity2.addPart("Subject", new StringBody(""));
                multipartEntity2.addPart("Comments", new StringBody(""));
                multipartEntity2.addPart("Remarks", new StringBody(""));
                multipartEntity2.addPart("FarmerId", new StringBody(""));
                multipartEntity2.addPart("picturePath", new FileBody(file2));
                multipartEntity2.addPart("pdaID", new StringBody(String.valueOf(ConstantsPMC.getInstance().getUserId()), forName));
                multipartEntity2.addPart("createdBy", new StringBody(""));
                multipartEntity2.addPart("ctreatedDate", new StringBody(""));
                multipartEntity2.addPart("updatedBy", new StringBody(""));
                multipartEntity2.addPart("updatedDate", new StringBody(""));
                multipartEntity2.addPart("referenceId", new StringBody(""));
                multipartEntity2.addPart("referenceType", new StringBody(""));
                multipartEntity2.addPart("eventTypeId", new StringBody(""));
                multipartEntity2.addPart("ContentTypeId", new StringBody(""));
                return multipartEntity2;
            } catch (FileNotFoundException e) {
                e = e;
                multipartEntity = multipartEntity2;
                PLog.e(TAG, e, 0);
                return multipartEntity;
            } catch (Exception e2) {
                e = e2;
                multipartEntity = multipartEntity2;
                e.printStackTrace();
                return multipartEntity;
            }
        } catch (FileNotFoundException e3) {
            e = e3;
        } catch (Exception e4) {
            e = e4;
        }
    }

    protected void sendTableWiseDataToServer() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("FarmerMaster");
        arrayList.add("pmcFarmerCropMapping");
        arrayList.add("DealerMaster");
        arrayList.add("DealerCompanyMapping");
        arrayList.add("DealerCropMapping");
        arrayList.add("pmcAssignmentActivityDetails");
        arrayList.add("pmcAssignmentVisit");
        arrayList.add("FarmerLandDetails");
        for (int i = 0; i < arrayList.size(); i++) {
            try {
                sendTableByTableDataToServer((String) arrayList.get(i));
            } catch (Exception unused) {
                this.syncStatus = false;
                return;
            }
        }
    }

    private void sendTableByTableDataToServer(String str) throws Exception {
        List<SyncErrorLogModel> syncErrorLogsData;
        List<Log4Net> log4NetData;
        List<FavouriteFarmer> favouriteFarmerDetails;
        List<AssignmentVisitDetails> assignmentVisitDetails;
        List<AssignmentActivityDetailsModel> farmerActivityDetails;
        List<DealerCropMapping> dealerCropDetails;
        List<DealerCompanyMapping> dealerCompanyDetails;
        List<DealerMaster> listDealersDetails;
        List<FarmerMasterSyncModel> listFarmereMasterDetails;
        List<FarmerCropMapping> farmerCropMappingDetails;
        SendFarmerDetailsModel sendFarmerDetailsModel = new SendFarmerDetailsModel();
        String str2 = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSyncPMCData();
        if (str.equalsIgnoreCase("pmcFarmerCropMapping")) {
            do {
                farmerCropMappingDetails = GetDataFromDB.getInstance().getFarmerCropMappingDetails(Queries.getInstance().getFarmerCropMappingByOffsetQry());
                if (farmerCropMappingDetails == null || farmerCropMappingDetails.size() <= 0) {
                    return;
                }
                sendFarmerDetailsModel.setFarmerCropmappingModel(this.farmerCropmappingModel);
                submitDataToServer(str2, sendFarmerDetailsModel);
                if (!this.syncStatus || farmerCropMappingDetails == null) {
                    return;
                }
            } while (farmerCropMappingDetails.size() > 0);
            return;
        }
        if (str.equalsIgnoreCase("FarmerMaster")) {
            do {
                listFarmereMasterDetails = GetDataFromDB.getInstance().getListFarmereMasterDetails(Queries.getInstance().getFarmerMasterDataByOffsetQry());
                if (listFarmereMasterDetails == null || listFarmereMasterDetails.size() <= 0) {
                    return;
                }
                sendFarmerDetailsModel.setFarmersModel(listFarmereMasterDetails);
                submitDataToServer(str2, sendFarmerDetailsModel);
                if (!this.syncStatus || listFarmereMasterDetails == null) {
                    return;
                }
            } while (listFarmereMasterDetails.size() > 0);
            return;
        }
        if (str.equalsIgnoreCase("DealerMaster")) {
            do {
                listDealersDetails = GetDataFromDB.getInstance().getListDealersDetails(Queries.getInstance().getDealerMasterDataByOffsetQry());
                if (listDealersDetails == null || listDealersDetails.size() <= 0) {
                    return;
                }
                sendFarmerDetailsModel.setDealersModel(listDealersDetails);
                submitDataToServer(str2, sendFarmerDetailsModel);
                if (!this.syncStatus || listDealersDetails == null) {
                    return;
                }
            } while (listDealersDetails.size() > 0);
            return;
        }
        if (str.equalsIgnoreCase("DealerCompanyMapping")) {
            do {
                dealerCompanyDetails = GetDataFromDB.getInstance().getDealerCompanyDetails(Queries.getInstance().getDealerCompanyDataByOffsetQry());
                if (dealerCompanyDetails == null || dealerCompanyDetails.size() <= 0) {
                    return;
                }
                sendFarmerDetailsModel.setDealerCompanyModel(dealerCompanyDetails);
                submitDataToServer(str2, sendFarmerDetailsModel);
                if (!this.syncStatus || dealerCompanyDetails == null) {
                    return;
                }
            } while (dealerCompanyDetails.size() > 0);
            return;
        }
        if (str.equalsIgnoreCase("DealerCropMapping")) {
            do {
                dealerCropDetails = GetDataFromDB.getInstance().getDealerCropDetails(Queries.getInstance().getDealerCropDataByOffsetQry());
                if (dealerCropDetails == null || dealerCropDetails.size() <= 0) {
                    return;
                }
                sendFarmerDetailsModel.setDealerCropModel(dealerCropDetails);
                submitDataToServer(str2, sendFarmerDetailsModel);
                if (!this.syncStatus || dealerCropDetails == null) {
                    return;
                }
            } while (dealerCropDetails.size() > 0);
            return;
        }
        if (str.equalsIgnoreCase("pmcAssignmentActivityDetails")) {
            do {
                farmerActivityDetails = GetDataFromDB.getInstance().getFarmerActivityDetails(Queries.getInstance().getSelectAssignmentActivityDetailsByOffSetQry());
                if (farmerActivityDetails == null || farmerActivityDetails.size() <= 0) {
                    return;
                }
                sendFarmerDetailsModel.setAssignmentActivitiesModel(farmerActivityDetails);
                submitDataToServer(str2, sendFarmerDetailsModel);
                if (!this.syncStatus || farmerActivityDetails == null) {
                    return;
                }
            } while (farmerActivityDetails.size() > 0);
            return;
        }
        if (str.equalsIgnoreCase("pmcAssignmentVisit")) {
            do {
                assignmentVisitDetails = GetDataFromDB.getInstance().getAssignmentVisitDetails(Queries.getInstance().getAssignmentVisitDetailsByOffsetQry());
                if (assignmentVisitDetails == null || assignmentVisitDetails.size() <= 0) {
                    return;
                }
                sendFarmerDetailsModel.setAssignmentVisitModel(assignmentVisitDetails);
                submitDataToServer(str2, sendFarmerDetailsModel);
                if (!this.syncStatus || assignmentVisitDetails == null) {
                    return;
                }
            } while (assignmentVisitDetails.size() > 0);
            return;
        }
        if (str.equalsIgnoreCase("FavouriteFarmer")) {
            do {
                favouriteFarmerDetails = GetDataFromDB.getInstance().getFavouriteFarmerDetails(Queries.getInstance().getFavouriteFarmerByOffsetQry());
                if (favouriteFarmerDetails == null || favouriteFarmerDetails.size() <= 0) {
                    return;
                }
                sendFarmerDetailsModel.setListFavouriteFarmer(favouriteFarmerDetails);
                submitDataToServer(str2, sendFarmerDetailsModel);
                if (!this.syncStatus || favouriteFarmerDetails == null) {
                    return;
                }
            } while (favouriteFarmerDetails.size() > 0);
            return;
        }
        if (str.equalsIgnoreCase("Log4Net")) {
            String str3 = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodLog4Net();
            do {
                log4NetData = GetDataFromDB.getInstance().getLog4NetData(Queries.getInstance().getLog4NetDataByOffsetQry());
                if (log4NetData == null || log4NetData.size() <= 0) {
                    return;
                }
                sendFarmerDetailsModel.setLog4net(log4NetData);
                submitDataToServer(str3, sendFarmerDetailsModel);
                if (!this.syncStatus || log4NetData == null) {
                    return;
                }
            } while (log4NetData.size() > 0);
            return;
        }
        if (str.equalsIgnoreCase("SyncErrorLog")) {
            String str4 = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodLog4Net();
            do {
                syncErrorLogsData = GetDataFromDB.getInstance().getSyncErrorLogsData(Queries.getInstance().getSyncErrorLogDataByOffsetQry());
                if (syncErrorLogsData == null || syncErrorLogsData.size() <= 0) {
                    return;
                }
                sendFarmerDetailsModel.setSyncErrorLog(syncErrorLogsData);
                submitDataToServer(str4, sendFarmerDetailsModel);
                if (!this.syncStatus || syncErrorLogsData == null) {
                    return;
                }
            } while (syncErrorLogsData.size() > 0);
        }
    }

    private void updateUIIfNeccessary(String str) {
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
        if (((PMCApplication) getApplication()).isHomeFragmentActive()) {
            HomePageFragment.setRefreshActionButtonState(false);
        }
        String str3 = this.callbackActivity;
        if (str3 == null || !str3.equals("REMOTEFLUSH")) {
            return;
        }
        new SendPmcDbAsynctask(getApplicationContext(), false, true).execute(new String[0]);
    }
}
