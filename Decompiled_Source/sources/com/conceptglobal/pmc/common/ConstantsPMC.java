package com.conceptglobal.pmc.common;

import android.content.Context;
import android.util.Log;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.FileUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class ConstantsPMC {
    public static final String ACTION_FINISH = "Action.Finish";
    public static final String ACTION_MSG = "Finish";
    public static final String ALL = "All";
    public static final String DB_MIGRATION_STATUS = "DB_MIGRATION_STATUS";
    public static final int DISCARD = 3;
    public static final int DRAFT = 2;
    public static final String FAVOURITES = "Favourites";
    public static final String FELLOW_FARMER = "Fellow Farmer";
    public static final String LOCATION_START_TIME = "locationStartTime";
    public static final String MOBILE_SEARCH = "MobileSearch";
    public static final int NOTIFICATION_ID_FOREGROUND_SERVICE = 8466503;
    public static final String PREFERANCE_LOCATION = "location";
    public static final String PREF_KEY_RESIGNATION_STATUS_SYNC_TIME = "RESIGNATION_STATUS_SYNC_TIME";
    public static final int PRICE_TRACKING = 8;
    public static final String SARATH = "SARATH";
    public static final int SERVICE_STATUS_FINISHED = 1;
    public static final int SERVICE_STATUS_FINISHED1 = 2;
    public static final int SERVICE_STATUS_RUNNING = 0;
    public static final String TG = "TG";
    public static final String TYPE_Distributor = "Distributor";
    public static final String TYPE_FARMER = "Farmer";
    public static final String TYPE_Retailer = "Retailer";
    public static final int VISIT_COMPLETE = 1;
    private static ConstantsPMC instance = null;
    public static boolean isRequestCancelled = false;
    private int GPSMaxWaitTime;
    private String GeoDisplayName;
    private Context HomepageFragmentContext;
    private String deviceID;
    private int issupervisor;
    private String mobileNumber;
    private Context pictureReportingContext;
    private String roleId;
    private String teritoryId;
    private String userId;
    private String wcfToken;
    private String webApiToken;
    public static String[] tablesToBeDeletedAfterTraining = {"Farmermaster", "FarmerCropdetails", "DealerMaster", "DealerCompanyMapping", "DealerCropMapping", "pmcAssignmentVisit", "pmcAssignmentActivitydetails", "Activityimagedetails", "pmcUserdetails", "pmcUserRolemapping", "pmcLastVisitDetails", "TerritoryMaster"};
    public static final String profilePicPath = FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + "/" + ConstantDeclarations.getInstance().getRootFolderName() + "/.ProfilePic.JPEG";
    private int isTrainingORLive = 2;
    private int whichLanguage = 1;
    private String methodActivatePMC = "ActivatePMC";
    private String methodActivatePMCBioStadt = "ActivatePMCEmail";
    private String changePassword = "ChangePassword";
    private String methodResignedUserStatus = "GetResignedUserStatus";
    private String methodUserIMEIActiveDetails = "GetUserIMEIActiveDetails";
    private String methodForgotPassword = "ForgotPassword";
    private String methodLiveOrClearDB = "GetDynamicPin";
    private String methodGetDealerList = "GetDealerList";
    private String methodGetSegmentationDetails = "GetSegmentationDetails";
    private String methodGetSegmentationDetailsGeneric = "GetSegmentationDetailsGeneric";
    private String methodGetUserLeaveDetails = "GetUserLeaveDetails";
    private String methodGetSegmentationDetailsCount = "GetSegmentationDetailsCount";
    private String methodGetSVFarmerDetails = "GetSVFarmerDetails";
    private String methodGetSVFarmerApproval = "GetSVFarmerDetailsForApproval";
    private String methodGetSVViewStatus = "GetSVViewStatus";
    private String methodGetDelete = "GetUnaccessedMasterData";
    private String methodGetTargetVsActualCount = "GetTargetVsActualCount";
    private String methodGetTestimonialConsentOTP = "GetTestimonialConsentOTP";
    private String expensesApproval = "GetExpensesApprovalStatus";
    private String activityApproval = "GetActivityApprovalStatus";
    private String expensesListBack = "GetSegmentationDetailsGenericForExpenses";
    private String methodSendFarmerOTP = "SendFarmerOTP";
    private String methodGetDeleteAck = "AcknowledgementUnaccessedMasterData";
    private Hashtable<String, String> htFoLabels = new Hashtable<>();
    private String methodGetAssignPendingDetails = "FOPendingStatus";
    private String methodSTDV = "GetGeography";
    private String methodsaveHomeLocation = "SaveHomeLocation";
    private String methodSTDAck = "DataAcknowledgementSDTV";
    private String methodIMEIActiveAck = "DataAcknowledgementIMEIActiveStatus";
    private String methodGetDataBaseDownloadURL = "GetDataBaseDownloadURL";
    private String methodsyncPMC = "RefreshData";
    private String methodSendACK = "DataAcknowledgement";
    private String methodSVSendACK = "DataAcknowledgementSV";
    private String methodsyncsv = "RefreshDataSV";
    private String methodImagesync = "InsertActivityImageDetails";
    private String methodSyncSendApprovalACK = "DataAcknowledgementSVApproval";
    private String methodGetSpecificMasters = "GetSpecificMasters";
    private String methodGetSpecificMastersGeneric = "GetSpecificMastersGeneric";
    private String methodGetSpecificMastersCount = "GetSpecificMastersCount";
    private String methodGetNotificationKey = "SendNotificationKey";
    private String methodSendNotificationEnabledStatus = "EnableNotificationStatus";
    private String getPDFURL = "GetPDFURL";
    private String methodgetToken = "ValidateUserLogin";
    private String getLiveApkUrl = "GetLiveApkURL";
    private String methodAppPatch = "GetApplicationPatchingDetails";
    private String methodMasterSync = "GetMasterSyncTableData";
    private String methodMasterSyncNew = "GetMasterSyncTableDataAddOn";
    private String methodMasterSyncNewCount = "GetMasterSyncTableCountCheck";
    private String methodLog4Net = "SendLog4Net";
    private String methodDMLPatches = "GetDMLPatches";
    private String methodUpdateDMLPatch = "UpdateDMLPatchStatus";
    private String methodSyncDebugTraceLogger = "SyncDebugTraceLogger";
    private String methodSyncTableSummary = "SyncTableSummaryCounts";
    private String orderActivityID = "";
    private String complaintActivityID = "";

    public static class ACTION {
        public static final String MAIN_ACTION = "test.action.main";
        public static final String START_ACTION = "test.action.start";
        public static final String STOP_ACTION = "test.action.stop";
    }

    public static class STATE_SERVICE {
        public static final int CONNECTED = 10;
        public static final int NOT_CONNECTED = 0;
    }

    public static ConstantsPMC getInstance() {
        if (instance == null) {
            instance = new ConstantsPMC();
        }
        return instance;
    }

    public String getMethodGetTargetVsActualCount() {
        return this.methodGetTargetVsActualCount;
    }

    public String getMethodGetDeleteAck() {
        return this.methodGetDeleteAck;
    }

    public void setMethodGetDeleteAck(String str) {
        this.methodGetDeleteAck = str;
    }

    public String getMethodGetSegmentationDetailsGeneric() {
        return this.methodGetSegmentationDetailsGeneric;
    }

    public void setMethodGetSegmentationDetailsGeneric(String str) {
        this.methodGetSegmentationDetailsGeneric = str;
    }

    public String getMethodGetSpecificMastersGeneric() {
        return this.methodGetSpecificMastersGeneric;
    }

    public void setMethodGetSpecificMastersGeneric(String str) {
        this.methodGetSpecificMastersGeneric = str;
    }

    public String getChangePassword() {
        return this.changePassword;
    }

    public String getMethodGetDelete() {
        return this.methodGetDelete;
    }

    public void setMethodGetDelete(String str) {
        this.methodGetDelete = str;
    }

    public String getMethodResignedUserStatus() {
        return this.methodResignedUserStatus;
    }

    public String getMethodForgotPassword() {
        return this.methodForgotPassword;
    }

    public String getMethodLiveOrClearDB() {
        return this.methodLiveOrClearDB;
    }

    public String getMethodSTDAck() {
        return this.methodSTDAck;
    }

    public String getMethodIMEIActiveAck() {
        return this.methodIMEIActiveAck;
    }

    public void setMethodIMEIActiveAck(String str) {
        this.methodIMEIActiveAck = str;
    }

    public void setMethodSTDAck(String str) {
        this.methodSTDAck = str;
    }

    public String getMethodGetAssignPendingDetails() {
        return this.methodGetAssignPendingDetails;
    }

    public void setMethodGetAssignPendingDetails(String str) {
        this.methodGetAssignPendingDetails = str;
    }

    public String getMethodGetSVFarmerApproval() {
        return this.methodGetSVFarmerApproval;
    }

    public void setMethodGetSVFarmerApproval(String str) {
        this.methodGetSVFarmerApproval = str;
    }

    public String getMethodGetSVFarmerDetails() {
        return this.methodGetSVFarmerDetails;
    }

    public void setMethodGetSVFarmerDetails(String str) {
        this.methodGetSVFarmerDetails = str;
    }

    public String getMethodsyncsv() {
        return this.methodsyncsv;
    }

    public void setMethodsyncsv(String str) {
        this.methodsyncsv = str;
    }

    public String getMethodSVSendACK() {
        return this.methodSVSendACK;
    }

    public void setMethodSVSendACK(String str) {
        this.methodSVSendACK = str;
    }

    public static void reset() {
        instance = new ConstantsPMC();
    }

    public String getBaseUrlTraining() {
        return "https://smartbook.pmc.ai/Training/";
    }

    public String getBaseUrlLive() {
        return "https://smartbook.pmc.ai/Live/";
    }

    public String getUrlPMCCMService(int i) {
        if (i != 2) {
            return getBaseUrlTraining() + "PMCCMService/Service.svc";
        }
        return getBaseUrlLive() + "PMCCMService/Service.svc";
    }

    public String getUrlPMCService(int i) {
        if (i != 2) {
            return getBaseUrlTraining() + "pdaservice/PMCService.svc";
        }
        return getBaseUrlLive() + "pdaservice/PMCService.svc";
    }

    public String getUrlPMCServiceImages() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "FileApi/API/PostReports";
        }
        return getBaseUrlLive() + "FileApi/API/PostReports";
    }

    public String getUrlPMCServiceVideos() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "FileAPI/api/Content/Upload";
        }
        return getBaseUrlLive() + "FileAPI/api/Content/Upload";
    }

    public String getUrlPMCServiceProfileImages() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "FileApi/API/ProfileUpload";
        }
        return getBaseUrlLive() + "FileApi/API/ProfileUpload";
    }

    public String getUrlLastVisitHistory() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/LastVisit/Index";
        }
        return getBaseUrlLive() + "PMCMobile/LastVisit/Index";
    }

    public String getDBUploadURL() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "FileApi/API/DBUpload";
        }
        return getBaseUrlLive() + "FileApi/API/DBUpload";
    }

    public String getTokenUrlWebApi() {
        getIsTrainingORLive();
        return "http://iconceptglobal.com/PMCAPI/TokenForPDA";
    }

    public String getTokenUrl() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCAPI/TokenForPDA";
        }
        return getBaseUrlLive() + "PMCAPI/TokenForPDA";
    }

    public String getMobileDetailsUrl() {
        getIsTrainingORLive();
        return "https://mliquidate.com/PMC2.0PI/PMCAPI/api/Farmer/Mobile";
    }

    public String getMobileDetailsUrlRetailer() {
        getIsTrainingORLive();
        return "https://mliquidate.com/PMC2.0PI/PMCAPI/api/Retailer/Mobile";
    }

    public String getWebViewUrlReports() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/ActivityPlanVsActual/Index?";
        }
        return getBaseUrlLive() + "PMCMobile/ActivityPlanVsActual/Index?";
    }

    public String getUrlPMCServicePdf() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "FileApi/API/PDFDownloader/GetFAActivityDetails/";
        }
        return getBaseUrlLive() + "FileApi/API/PDFDownloader/GetFAActivityDetails/";
    }

    public String getWebViewUrlPOG() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/RetailerVisit/ProductInventory/";
        }
        return getBaseUrlLive() + "PMCMobile/RetailerVisit/ProductInventory/";
    }

    public String getWebViewUrlFarmerTargetReports() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/Demandgenerationplan/FarmerTargetVSActualsummary/";
        }
        return getBaseUrlLive() + "PMCMobile/Demandgenerationplan/FarmerTargetVSActualsummary/";
    }

    public String getWebViewUrlPlaning(String str) {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/" + str + "/Index/";
        }
        return getBaseUrlLive() + "PMCMobile/" + str + "/Index/";
    }

    public String getWebViewUrlMDOLOcation() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/FoLocation/Index/";
        }
        return getBaseUrlLive() + "PMCMobile/FoLocation/Index/";
    }

    public String getWebViewUrlApproveResignations() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/ApproveResignations/Index/";
        }
        return getBaseUrlLive() + "PMCMobile/ApproveResignations/Index/";
    }

    public String getWebViewUrlAttendanceRegularization() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/AttendanceReport/Index/";
        }
        return getBaseUrlLive() + "PMCMobile/AttendanceReport/Index/";
    }

    public String getWebViewUrlRetailerReport() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/RetailersSummaryDetails/index/";
        }
        return getBaseUrlLive() + "PMCMobile/RetailersSummaryDetails/index/";
    }

    public String getWebViewUrlTaskAssign() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/ICJMTicketAssignment/index/";
        }
        return getBaseUrlLive() + "PMCMobile/ICJMTicketAssignment/index/";
    }

    public String getWebViewUrlApplyLeaveReports() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCmobile/leavebalreport/index/";
        }
        return getBaseUrlLive() + "PMCmobile/leavebalreport/index/";
    }

    public String getWebViewUrlAbscond() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/AbscondUser/Index/";
        }
        return getBaseUrlLive() + "PMCMobile/AbscondUser/Index/";
    }

    public String getWebViewUrlTaDaReports() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/TravelSubmission/Index/";
        }
        return getBaseUrlLive() + "PMCMobile/TravelSubmission/Index/";
    }

    public String getWebViewUrlUserCreation() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/UserCreation/Index/";
        }
        return getBaseUrlLive() + "PMCMobile/UserCreation/Index/";
    }

    public String getWebViewUrlDistributorSalesPlan() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/DistributorSalesPlan/DistributorWiseSalesPlan/";
        }
        return getBaseUrlLive() + "PMCMobile/DistributorSalesPlan/DistributorWiseSalesPlan/";
    }

    public String getWebViewUrlDistributorVisit() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/DistributorSalesPlan/Index/";
        }
        return getBaseUrlLive() + "PMCMobile/DistributorSalesPlan/Index/";
    }

    public String getWebViewUrlReportsNew() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/Demandgenerationplan/summary/";
        }
        return getBaseUrlLive() + "PMCMobile/Demandgenerationplan/summary/";
    }

    public String getWebViewUrlFODaywiseReport() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/FODayWiseActivityReport/index/";
        }
        return getBaseUrlLive() + "PMCMobile/FODayWiseActivityReport/index/";
    }

    public String getWebViewUrlWeeklyPlan() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/Demandgenerationplan/DistributorWeeklyPlan/";
        }
        return getBaseUrlLive() + "PMCMobile/Demandgenerationplan/DistributorWeeklyPlan/";
    }

    public String getWebViewUrlRetailerVisit() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/RetailerVisit/Index/";
        }
        return getBaseUrlLive() + "PMCMobile/RetailerVisit/Index/";
    }

    public String getWebViewUrlDistributorVisitSV() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/DistributorSalesPlan/DistributorSalesPlanSupervisory/";
        }
        return getBaseUrlLive() + "PMCMobile/DistributorSalesPlan/DistributorSalesPlanSupervisory/";
    }

    public String getWebViewUrlRetailerVisitSV() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/RetailerVisit/RetailerVisitSupervisory/";
        }
        return getBaseUrlLive() + "PMCMobile/RetailerVisit/RetailerVisitSupervisory/";
    }

    public String getWebViewUrlAttendanceReports() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/FAAttendenceDetails/Index/";
        }
        return getBaseUrlLive() + "PMCMobile/FAAttendenceDetails/Index/";
    }

    public String getWebViewUrlAttendanceReport() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/FAAttendanceReport/index/";
        }
        return getBaseUrlLive() + "PMCMobile/FAAttendanceReport/index/";
    }

    public String getWebViewUrlTargetAndPlan() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PMCMobile/DemandGenerationPlan/TargetnPlan/";
        }
        return getBaseUrlLive() + "PMCMobile/DemandGenerationPlan/TargetnPlan/";
    }

    public String getWebViewUrlTargetAndPlanSummary() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "pmcmobile/DemandGenerationPlan/Summary/";
        }
        return getBaseUrlLive() + "pmcmobile/DemandGenerationPlan/Summary/";
    }

    public String getWebViewFOTrackerReports() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "pmcmobile/FATrackReport/Index/";
        }
        return getBaseUrlLive() + "pmcmobile/FATrackReport/Index/";
    }

    public String getMandiPricesServiceUrl() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PortalApi/api/MandiPrice/GetPriceList";
        }
        return getBaseUrlLive() + "PortalApi/api/MandiPrice/GetPriceList";
    }

    public String getWebViewMandiPrices() {
        if (getIsTrainingORLive() != 2) {
            return getBaseUrlTraining() + "PortalAng/#/WebView/MandiPrice";
        }
        return getBaseUrlLive() + "PortalAng/#/WebView/MandiPrice";
    }

    public String getMethodsyncPMC() {
        return this.methodsyncPMC;
    }

    public String getMethodImagesync() {
        return this.methodImagesync;
    }

    public String getDeviceID() {
        String str = this.deviceID;
        if (str == null || str.equals("")) {
            try {
                String stringValue = GetDataFromDB.getInstance().getStringValue("SELECT pdaID from pmcUserDetails");
                this.deviceID = stringValue;
                if (stringValue != null && stringValue.length() > 0) {
                    getInstance().setDeviceID(this.deviceID);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        Log.i("PdaId", this.deviceID + "");
        return this.deviceID;
    }

    public String getGeoDisplayName() {
        String str = this.GeoDisplayName;
        if (str == null || str.equals("")) {
            try {
                String stringValue = GetDataFromDB.getInstance().getStringValue("SELECT address3 from pmcUserDetails");
                this.GeoDisplayName = stringValue;
                if (stringValue != null && stringValue.length() > 0) {
                    getInstance().setDeviceID(this.deviceID);
                }
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e("PdaId", e.toString());
            }
        }
        Log.i("PdaId", this.GeoDisplayName + "");
        return this.GeoDisplayName;
    }

    public String getRoleID() {
        try {
            String stringValue = GetDataFromDB.getInstance().getStringValue("SELECT roleid FROM pmcUserDetails");
            this.roleId = stringValue;
            if (stringValue != null && stringValue.length() > 0) {
                getInstance().setRoleID(this.roleId);
            } else {
                this.roleId = "0";
                getInstance().setRoleID(this.roleId);
            }
        } catch (Exception unused) {
            this.roleId = "0";
            getInstance().setRoleID(this.roleId);
        }
        return this.roleId;
    }

    public String getMobileNumber() {
        try {
            String stringValue = GetDataFromDB.getInstance().getStringValue("SELECT mobile FROM pmcUserDetails");
            this.mobileNumber = stringValue;
            if (stringValue != null && stringValue.length() > 0) {
                getInstance().setMobileNumber(this.mobileNumber);
            }
        } catch (Exception e) {
            PLog.e("Get mobile No", e, 0);
        }
        return this.mobileNumber;
    }

    public void setRoleID(String str) {
        this.roleId = str;
    }

    public String getTeritoryId() {
        if (this.teritoryId == null) {
            try {
                String stringValue = GetDataFromDB.getInstance().getStringValue("SELECT city from pmcUserDetails");
                this.teritoryId = stringValue;
                if (stringValue != null && stringValue.length() > 0) {
                    getInstance().setTeritoryId(this.teritoryId);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.teritoryId;
    }

    public void setTeritoryId(String str) {
        this.teritoryId = str;
    }

    public void setDeviceID(String str) {
        this.deviceID = str;
    }

    public String getMethodGetDataBaseDownloadURL() {
        return this.methodGetDataBaseDownloadURL;
    }

    public String getMethodActivatePMC() {
        return this.methodActivatePMC;
    }

    public String getMethodUserIMEIActiveDetails() {
        return this.methodUserIMEIActiveDetails;
    }

    public void setMethodUserIMEIActiveDetails(String str) {
        this.methodUserIMEIActiveDetails = str;
    }

    public String getGetPDFURL() {
        return this.getPDFURL;
    }

    public String getMethodActivatePMCBioStadt() {
        return this.methodActivatePMCBioStadt;
    }

    public String getMethodSTDV() {
        return this.methodSTDV;
    }

    public String getMethodsaveHomeLocation() {
        return this.methodsaveHomeLocation;
    }

    public void setMethodSTDV(String str) {
        this.methodSTDV = str;
    }

    public String getMethodGetDealerList() {
        return this.methodGetDealerList;
    }

    public String getMethodGetSegmentationDetails() {
        return this.methodGetSegmentationDetails;
    }

    public String getMethodSyncPMCData() {
        return this.methodsyncPMC;
    }

    public String getMethodSendACK() {
        return this.methodSendACK;
    }

    public String getMethodAppPatch() {
        return this.methodAppPatch;
    }

    public String getMethodMasterSync() {
        return this.methodMasterSync;
    }

    public String getMethodLog4Net() {
        return this.methodLog4Net;
    }

    public String getMethodDMLPatches() {
        return this.methodDMLPatches;
    }

    public String getMethodUpdateDMLPatch() {
        return this.methodUpdateDMLPatch;
    }

    public int getIsTrainingORLive() {
        return GetDataFromDB.getInstance().getTrainingORLive();
    }

    public void setIsTrainingORLive(int i) {
        this.isTrainingORLive = i;
    }

    public int getIssupervisor() {
        int i = this.issupervisor;
        if (i == 0 || i == 1) {
            try {
                this.issupervisor = Integer.parseInt(GetDataFromDB.getInstance().getStringValue("SELECT itemValue from ConfigurableLookup where itemKey='Supervisor' "));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.issupervisor;
    }

    public void setIssupervisor(int i) {
        this.issupervisor = i;
    }

    public String getMethodGetSVViewStatus() {
        return this.methodGetSVViewStatus;
    }

    public void setMethodGetSVViewStatus(String str) {
        this.methodGetSVViewStatus = str;
    }

    public String getMethodSyncSendApprovalACK() {
        return this.methodSyncSendApprovalACK;
    }

    public void setMethodSyncSendApprovalACK(String str) {
        this.methodSyncSendApprovalACK = str;
    }

    public Hashtable<String, String> getHtFoLabels() {
        return this.htFoLabels;
    }

    public String getMethodSyncData() {
        return this.methodImagesync;
    }

    public void setHtFoLabels(Hashtable<String, String> hashtable) {
        this.htFoLabels = hashtable;
    }

    public int getWhichLanguage() {
        return this.whichLanguage;
    }

    public void setWhichLanguage(int i) {
        this.whichLanguage = i;
    }

    public String getUserId() {
        if (this.userId == null) {
            try {
                String stringValue = GetDataFromDB.getInstance().getStringValue("SELECT userId from pmcUserDetails");
                this.userId = stringValue;
                if (stringValue != null && stringValue.length() > 0) {
                    getInstance().setUserId(this.userId);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.userId;
    }

    public int getGpsTime() {
        if (this.GPSMaxWaitTime == 0) {
            try {
                int intValue = GetDataFromDB.getInstance().getIntValue("SELECT ItemValue from ConfigurablelookupMaster where ItemKey='GPSMaxWaitTime'");
                this.GPSMaxWaitTime = intValue;
                if (intValue == 0) {
                    this.GPSMaxWaitTime = 20;
                }
                getInstance().setGPSMaxWaitTime(this.GPSMaxWaitTime);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.GPSMaxWaitTime * 1000;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setGPSMaxWaitTime(int i) {
        this.GPSMaxWaitTime = i;
    }

    public Context getPictureReportingContext() {
        return this.pictureReportingContext;
    }

    public void setPictureReportingContext(Context context) {
        this.pictureReportingContext = context;
    }

    public Context getHomepageFragmentContext() {
        return this.HomepageFragmentContext;
    }

    public void setHomepageFragmentContext(Context context) {
        this.HomepageFragmentContext = context;
    }

    public String getMethodGetSpecificMasters() {
        return this.methodGetSpecificMasters;
    }

    public void setMethodGetSpecificMasters(String str) {
        this.methodGetSpecificMasters = str;
    }

    public void getLanguageConfigurations(Context context) {
        try {
            new SharedPrefManager();
            try {
                GetDataFromDB.getInstance().getFOLables(Queries.getInstance().getStrings(SharedPrefManager.getPMCLanguage(context)));
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e("LanguageSelection", e);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            PLog.e("LanguageSelection", e2);
        }
    }

    public String getMethodSyncDebugTraceLogger() {
        return this.methodSyncDebugTraceLogger;
    }

    public void setMethodSyncDebugTraceLogger(String str) {
        this.methodSyncDebugTraceLogger = str;
    }

    public void setMobileNumber(String str) {
        this.mobileNumber = str;
    }

    public String getMethodMasterSyncNew() {
        return this.methodMasterSyncNew;
    }

    public String getMethodGetSegmentationDetailsCount() {
        return this.methodGetSegmentationDetailsCount;
    }

    public String getMethodMasterSyncNewCount() {
        return this.methodMasterSyncNewCount;
    }

    public String getMethodGetSpecificMastersCount() {
        return this.methodGetSpecificMastersCount;
    }

    public String getMethodSyncTableSummary() {
        return this.methodSyncTableSummary;
    }

    public void setMethodSyncTableSummary(String str) {
        this.methodSyncTableSummary = str;
    }

    public String getMethodGetNotificationKey() {
        return this.methodGetNotificationKey;
    }

    public void setMethodGetNotificationKey(String str) {
        this.methodGetNotificationKey = str;
    }

    public String getMethodSendNotificationEnabledStatus() {
        return this.methodSendNotificationEnabledStatus;
    }

    public void setMethodSendNotificationEnabledStatus(String str) {
        this.methodSendNotificationEnabledStatus = str;
    }

    public String getMethodgetToken() {
        return this.methodgetToken;
    }

    public void setMethodgetToken(String str) {
        this.methodgetToken = str;
    }

    public String getWcfToken() {
        String str = this.wcfToken;
        if (str == null || str.equals("")) {
            try {
                String stringValue = GetDataFromDB.getInstance().getStringValue("SELECT itemValue FROM ConfigurableLookup where itemKey = 'wcfToken'");
                this.wcfToken = stringValue;
                if (stringValue != null && stringValue.length() > 0) {
                    getInstance().setWcfToken(this.wcfToken);
                }
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e("PdaId", e.toString());
            }
        }
        Log.i("WcfToken", this.wcfToken + "");
        return this.wcfToken;
    }

    public void setWcfToken(String str) {
        this.wcfToken = str;
    }

    public String getWebApiToken() {
        String str = this.webApiToken;
        if (str == null || str.equals("")) {
            try {
                String stringValue = GetDataFromDB.getInstance().getStringValue("SELECT itemValue FROM ConfigurableLookup where itemKey = 'webToken'");
                this.webApiToken = stringValue;
                if (stringValue != null && stringValue.length() > 0) {
                    getInstance().setWebApiToken(this.webApiToken);
                }
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e("PdaId", e.toString());
            }
        }
        Log.i("WcfToken", this.wcfToken + "");
        return this.webApiToken;
    }

    public void setWebApiToken(String str) {
        this.webApiToken = str;
    }

    public String getGetLiveApkUrl() {
        return this.getLiveApkUrl;
    }

    public void setGetLiveApkUrl(String str) {
        this.getLiveApkUrl = str;
    }

    public String getOrderActivityID() {
        String str = this.orderActivityID;
        if (str == null || str.equals("")) {
            try {
                String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getItemValue("OrderActivityID"));
                this.orderActivityID = stringValue;
                if (stringValue != null) {
                    getInstance().setOrderActivityID(this.orderActivityID);
                }
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e("PdaId", e.toString());
            }
        }
        Log.i("orderActivityID", this.orderActivityID + "");
        return this.orderActivityID;
    }

    public void setOrderActivityID(String str) {
        this.orderActivityID = str;
    }

    public String getComplaintActivityID() {
        String str = this.complaintActivityID;
        if (str == null || str.equals("")) {
            try {
                String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getItemValue("ComplaintActivityID"));
                this.complaintActivityID = stringValue;
                if (stringValue != null) {
                    getInstance().setComplaintActivityID(this.complaintActivityID);
                }
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e("PdaId", e.toString());
            }
        }
        Log.i("complaintActivityID", this.complaintActivityID + "");
        return this.complaintActivityID;
    }

    public void setComplaintActivityID(String str) {
        this.complaintActivityID = str;
    }

    public String getMethodGetTestimonialConsentOTP() {
        return this.methodGetTestimonialConsentOTP;
    }

    public String getMethodExpensesApproval() {
        return this.expensesApproval;
    }

    public String getActivityApproval() {
        return this.activityApproval;
    }

    public String getExpensesListBack() {
        return this.expensesListBack;
    }

    public String getMethodSendFarmerOTP() {
        return this.methodSendFarmerOTP;
    }

    public String getMethodGetUserLeaveDetails() {
        return this.methodGetUserLeaveDetails;
    }

    public void setMethodGetUserLeaveDetails(String str) {
        this.methodGetUserLeaveDetails = str;
    }
}
