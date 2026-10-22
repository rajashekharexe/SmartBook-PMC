.class public Lcom/conceptglobal/pmc/service/SyncDataService;
.super Landroid/app/IntentService;
.source "SyncDataService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncDataService"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;


# instance fields
.field ApplyLeaveModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ApplyLeaveModel;",
            ">;"
        }
    .end annotation
.end field

.field SurveyAssignmentActivitiesModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field SurveyAssignmentVisitModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/SurveyAssignmentVisitDetails;",
            ">;"
        }
    .end annotation
.end field

.field assignmentActivitiesModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field assignmentVisitModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;",
            ">;"
        }
    .end annotation
.end field

.field attendanceModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttendanceModel;",
            ">;"
        }
    .end annotation
.end field

.field bundle:Landroid/os/Bundle;

.field private callbackActivity:Ljava/lang/String;

.field complaintInfoModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ComplaintInfoModel;",
            ">;"
        }
    .end annotation
.end field

.field dealerCompanyModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerCompanyMapping;",
            ">;"
        }
    .end annotation
.end field

.field dealerCropMappingModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerCropMapping;",
            ">;"
        }
    .end annotation
.end field

.field dealerLandModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerLandDetails;",
            ">;"
        }
    .end annotation
.end field

.field dealersModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerMaster;",
            ">;"
        }
    .end annotation
.end field

.field discardAssignmentActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private errLogsCount:I

.field expensesAssignmentActivityDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field expensesAssignmentVisitDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ExpensesAssignmentVisitDetails;",
            ">;"
        }
    .end annotation
.end field

.field faattendanceModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/PMCAttendanceModel;",
            ">;"
        }
    .end annotation
.end field

.field farmerCropmappingModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropMapping;",
            ">;"
        }
    .end annotation
.end field

.field farmerLandModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerLandDetails;",
            ">;"
        }
    .end annotation
.end field

.field farmersModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerMasterSyncModel;",
            ">;"
        }
    .end annotation
.end field

.field favouriteFarmerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FavouriteFarmer;",
            ">;"
        }
    .end annotation
.end field

.field private log4net:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Log4Net;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

.field private mDeviceBandwidthSampler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

.field mFarmerMultiAttributeDetailsModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerMultiAttributeDetails;",
            ">;"
        }
    .end annotation
.end field

.field mFeedbackAssignmentActivitiesModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FeedbackAssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field mFeedbackAssignmentVisitModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;",
            ">;"
        }
    .end annotation
.end field

.field mPMCTSTAssignmentModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;",
            ">;"
        }
    .end annotation
.end field

.field mRetailerMultiAttributeDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private pendingPicutureRecordsCount:I

.field private pendingRecordsCount:I

.field private receiver:Landroid/os/ResultReceiver;

.field resignationDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ResignationDetails;",
            ">;"
        }
    .end annotation
.end field

.field private syncErrorLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/SyncErrorLogModel;",
            ">;"
        }
    .end annotation
.end field

.field private syncStatus:Z

.field private totalPendingDataCount:I

.field tstAssignmentVisitModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/TSTAssignmentVisitDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/service/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 138
    const-string v0, "SyncDataService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->assignmentActivitiesModel:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->resignationDetails:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->farmersModel:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->farmerCropmappingModel:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->farmerLandModel:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealerLandModel:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->attendanceModel:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->faattendanceModel:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealersModel:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealerCompanyModel:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->assignmentVisitModel:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->tstAssignmentVisitModel:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealerCropMappingModel:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->discardAssignmentActivities:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mPMCTSTAssignmentModel:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mFarmerMultiAttributeDetailsModel:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mRetailerMultiAttributeDetails:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->SurveyAssignmentActivitiesModel:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->SurveyAssignmentVisitModel:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mFeedbackAssignmentActivitiesModel:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mFeedbackAssignmentVisitModel:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->favouriteFarmerList:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->ApplyLeaveModel:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->complaintInfoModel:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->expensesAssignmentActivityDetails:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->expensesAssignmentVisitDetails:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncErrorLog:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->log4net:Ljava/util/List;

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->pendingRecordsCount:I

    .line 128
    iput v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->pendingPicutureRecordsCount:I

    .line 129
    iput v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->errLogsCount:I

    .line 130
    iput v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->totalPendingDataCount:I

    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method private checkIsPictureExists(Ljava/lang/String;)Z
    .locals 1

    .line 949
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method private clearAllObjects()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->assignmentActivitiesModel:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->resignationDetails:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->SurveyAssignmentActivitiesModel:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 181
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->SurveyAssignmentVisitModel:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 184
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->expensesAssignmentActivityDetails:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 187
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->expensesAssignmentVisitDetails:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 190
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->farmerCropmappingModel:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 193
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    :cond_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->farmerLandModel:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 196
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    :cond_7
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealerLandModel:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 199
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 201
    :cond_8
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->attendanceModel:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 202
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 204
    :cond_9
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->faattendanceModel:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 205
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    :cond_a
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->farmersModel:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 208
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    :cond_b
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealersModel:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 211
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    :cond_c
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealerCompanyModel:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 214
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    :cond_d
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealerCompanyModel:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 217
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 219
    :cond_e
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->assignmentVisitModel:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 220
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    :cond_f
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->tstAssignmentVisitModel:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 223
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    :cond_10
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mFeedbackAssignmentVisitModel:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 226
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    :cond_11
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->complaintInfoModel:Ljava/util/List;

    if-eqz v0, :cond_12

    .line 229
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 231
    :cond_12
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncErrorLog:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 232
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    :cond_13
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->log4net:Ljava/util/List;

    if-eqz v0, :cond_14

    .line 235
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    :cond_14
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mFarmerMultiAttributeDetailsModel:Ljava/util/List;

    if-eqz v0, :cond_15

    .line 238
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    :cond_15
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mRetailerMultiAttributeDetails:Ljava/util/List;

    if-eqz v0, :cond_16

    .line 241
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    :cond_16
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->ApplyLeaveModel:Ljava/util/List;

    if-eqz v0, :cond_17

    .line 244
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_17
    return-void
.end method

.method private deleteDataAfterResponse(Ljava/lang/String;)V
    .locals 11

    .line 548
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 549
    sget-object v1, Lcom/conceptglobal/pmc/service/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 550
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;

    .line 551
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getAssignmentActivitiesList()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "detailsID"

    const-string v3, ""

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getAssignmentActivitiesList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getAssignmentActivitiesList()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pmcAssignmentActivityDetails"

    invoke-virtual {v4, v5, v6, v2}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 557
    :cond_0
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getAssignmentVisitList()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "visitId"

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getAssignmentVisitList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getAssignmentVisitList()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pmcAssignmentVisit"

    invoke-virtual {v5, v6, v7, v4}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 562
    :cond_1
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getExpenseassignmentActivitiesList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getExpenseassignmentActivitiesList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 565
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getExpenseassignmentActivitiesList()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pmcExpenseAssignmentActivityDetails"

    invoke-virtual {v5, v6, v7, v2}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 567
    :cond_2
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getExpenseassignmentVisitList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getExpenseassignmentVisitList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 570
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getExpenseassignmentVisitList()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pmcExpenseAssignmentVisit"

    invoke-virtual {v5, v6, v7, v4}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 572
    :cond_3
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerCompanyList()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "MappingId"

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerCompanyList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 574
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerCompanyList()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DealerCompanyMapping "

    invoke-virtual {v6, v7, v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 576
    :cond_4
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerLandList()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, "DetailsID"

    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerLandList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 578
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerLandList()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DealerLandDetails"

    invoke-virtual {v7, v8, v9, v6}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 580
    :cond_5
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerMasterList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerMasterList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 582
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerMasterList()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DealerMaster"

    const-string v10, "ContactId"

    invoke-virtual {v7, v8, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 584
    :cond_6
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerCropList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerCropList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 586
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerCropList()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DealerCropMapping"

    invoke-virtual {v7, v8, v9, v5}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 588
    :cond_7
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFarmerCropList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFarmerCropList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 590
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFarmerCropList()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FarmerCropDetails"

    invoke-virtual {v5, v7, v8, v6}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 592
    :cond_8
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFarmerLandList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFarmerLandList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 594
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFarmerLandList()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FarmerLandDetails"

    invoke-virtual {v5, v7, v8, v6}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 596
    :cond_9
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFarmerMasterList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFarmerMasterList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 598
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFarmerMasterList()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FarmerMaster"

    const-string v8, "RespondentNo"

    invoke-virtual {v5, v6, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 600
    :cond_a
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFAAttendanceList()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v5, "AttendanceID"

    if-eqz v0, :cond_b

    :try_start_5
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFAAttendanceList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 602
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFAAttendanceList()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AttendanceDetails"

    invoke-virtual {v6, v7, v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 604
    :cond_b
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getLog4netList()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v6, "id"

    if-eqz v0, :cond_c

    :try_start_6
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getLog4netList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 606
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getLog4netList()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Log4Net"

    invoke-virtual {v7, v8, v9, v6}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 608
    :cond_c
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getSyncErrorLogList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getSyncErrorLogList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 610
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getSyncErrorLogList()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SyncErrorLog"

    invoke-virtual {v7, v8, v9, v6}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 612
    :cond_d
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getResignationList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getResignationList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 615
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getResignationList()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ResignedUsers"

    const-string v9, "ID"

    invoke-virtual {v6, v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 617
    :cond_e
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getUserLeaveList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getUserLeaveList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 620
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getUserLeaveList()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ApplyLeave"

    invoke-virtual {v6, v7, v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 622
    :cond_f
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFACoreAttendanceList()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v5, "TransId"

    if-eqz v0, :cond_10

    :try_start_7
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFACoreAttendanceList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 624
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFACoreAttendanceList()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PMCAttendanceDetails"

    invoke-virtual {v6, v7, v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 626
    :cond_10
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFarmerAttributeDetails()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v6, "LineId"

    if-eqz v0, :cond_11

    :try_start_8
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFarmerAttributeDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 628
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFarmerAttributeDetails()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FarmerMultiAttributeDetails"

    invoke-virtual {v7, v8, v9, v6}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 630
    :cond_11
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerAttributeDetails()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerAttributeDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 632
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDealerAttributeDetails()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DealerMultiAttributeDetails"

    invoke-virtual {v7, v8, v9, v6}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 634
    :cond_12
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getTSTassignmentActivitiesList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getTSTassignmentActivitiesList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 636
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getTSTassignmentActivitiesList()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pmcTSTAssignmentActivityDetails"

    invoke-virtual {v6, v7, v8, v2}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 638
    :cond_13
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFBFassignmentActivitiesList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFBFassignmentActivitiesList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 641
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFBFassignmentActivitiesList()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pmcFBFAssignmentActivityDetails "

    invoke-virtual {v6, v7, v8, v2}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 643
    :cond_14
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getSurveyassignmentActivitiesList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getSurveyassignmentActivitiesList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 646
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getSurveyassignmentActivitiesList()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pmcSurveyAssignmentActivityDetails "

    invoke-virtual {v6, v7, v8, v2}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 648
    :cond_15
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getTSTassignmentVisitList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getTSTassignmentVisitList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 650
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getTSTassignmentVisitList()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pmcTSTAssignmentVisit"

    invoke-virtual {v2, v6, v7, v4}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 652
    :cond_16
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFBFassignmentVisitList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFBFassignmentVisitList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 655
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getFBFassignmentVisitList()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pmcFBFAssignmentVisit "

    invoke-virtual {v2, v6, v7, v4}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 657
    :cond_17
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getSurveyassignmentVisitList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getSurveyassignmentVisitList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 660
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getSurveyassignmentVisitList()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pmcSurveyAssignmentVisit "

    invoke-virtual {v2, v6, v7, v4}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 662
    :cond_18
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getComplaintInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getComplaintInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 665
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getComplaintInfo()Ljava/lang/String;

    move-result-object p1

    const-string v3, "FBFActivityResolveTrack "

    invoke-virtual {v2, p1, v3, v5}, Lcom/conceptglobal/pmc/common/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 684
    :cond_19
    sget-object p1, Lcom/conceptglobal/pmc/service/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 682
    :try_start_9
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 684
    sget-object p1, Lcom/conceptglobal/pmc/service/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 685
    :goto_0
    sget-object p1, Lcom/conceptglobal/pmc/service/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    :cond_1a
    return-void

    .line 684
    :goto_1
    sget-object v0, Lcom/conceptglobal/pmc/service/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 685
    sget-object v0, Lcom/conceptglobal/pmc/service/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 686
    :cond_1b
    throw p1
.end method

.method private deleteDataAfterSuccessfulResponse(Ljava/lang/String;)V
    .locals 5

    .line 692
    const-string v0, "SyncDataService"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 693
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 694
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    .line 695
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 696
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_a

    .line 698
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTblAssighmentActivityDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    if-eqz v3, :cond_0

    .line 700
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteFarmerActDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    .line 702
    :try_start_2
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    .line 703
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_1

    .line 705
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLCROPMAPPING()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    if-eqz v3, :cond_1

    .line 707
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdatefarmerCropmapping()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    .line 709
    :try_start_4
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    .line 710
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_1

    .line 712
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLASSIGNMENTVISITDETAILS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    if-eqz v3, :cond_2

    .line 714
    :try_start_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteAssignmentVisitDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v3

    .line 716
    :try_start_6
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    .line 717
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_1

    .line 719
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLLOG4NET()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    if-eqz v3, :cond_3

    .line 721
    :try_start_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getDeletelog4net()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v3

    .line 723
    :try_start_8
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    .line 724
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_1

    .line 726
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLSYNCERRORLOG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    if-eqz v3, :cond_4

    .line 728
    :try_start_9
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteSyncErrorLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v3

    .line 730
    :try_start_a
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    .line 731
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_1

    .line 733
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTblFarmerMaster()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    if-eqz v3, :cond_5

    .line 735
    :try_start_b
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerMaster()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v3

    .line 737
    :try_start_c
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    .line 738
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_1

    .line 740
    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTblDealerMaster()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    if-eqz v3, :cond_6

    .line 742
    :try_start_d
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateDealerrMaster()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v3

    .line 744
    :try_start_e
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    .line 745
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_1

    .line 747
    :cond_6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTblDealerCompanyMapping()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    if-eqz v3, :cond_7

    .line 749
    :try_start_f
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateDealerCompany()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v3

    .line 751
    :try_start_10
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    .line 752
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_1

    .line 754
    :cond_7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTblDealerCropMapping()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    if-eqz v3, :cond_8

    .line 756
    :try_start_11
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateDealerCrop()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_1

    :catch_8
    move-exception v3

    .line 758
    :try_start_12
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    .line 759
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_1

    .line 761
    :cond_8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLLOG4NET()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    if-eqz v3, :cond_9

    .line 763
    :try_start_13
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getDeletelog4net()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    goto :goto_1

    :catch_9
    move-exception v3

    .line 765
    :try_start_14
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    .line 766
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_1

    .line 768
    :cond_9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLSYNCERRORLOG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    if-eqz v3, :cond_a

    .line 770
    :try_start_15
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteSyncErrorLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    goto :goto_1

    :catch_a
    move-exception v3

    .line 772
    :try_start_16
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    .line 773
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    :cond_a
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_b
    move-exception p1

    .line 779
    invoke-static {v0, p1, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 780
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    :cond_b
    return-void
.end method

.method private prepareLogsData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 282
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectSyncErrorLogData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSyncErrorLogsData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncErrorLog:Ljava/util/List;

    .line 283
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectLog4NetData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLog4NetData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->log4net:Ljava/util/List;

    return-void
.end method

.method private prepareMultiPart()Lorg/apache/http/entity/mime/MultipartEntity;
    .locals 7

    .line 1013
    const-string v0, ""

    const/4 v1, 0x0

    .line 1015
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1016
    :try_start_1
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 1017
    new-instance v3, Lcom/conceptglobal/pmc/utils/FileZipping;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/conceptglobal/pmc/utils/FileZipping;-><init>(Landroid/content/Context;)V

    .line 1018
    new-instance v4, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v4}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 1019
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "ZipFile.zip"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1020
    sget-object v4, Lcom/conceptglobal/pmc/common/ConstantsPMC;->profilePicPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/conceptglobal/pmc/utils/FileZipping;->zip_File(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1021
    new-instance v3, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1022
    const-string v4, "imageId"

    new-instance v5, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1023
    const-string v4, "assignmentId"

    new-instance v5, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1024
    const-string v4, "activityId"

    new-instance v5, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1025
    const-string v4, "AttributeId"

    new-instance v5, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1026
    const-string v4, "Subject"

    new-instance v5, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1027
    const-string v4, "Comments"

    new-instance v5, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1028
    const-string v4, "Remarks"

    new-instance v5, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1029
    const-string v4, "FarmerId"

    new-instance v5, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1030
    const-string v4, "picturePath"

    new-instance v5, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v5, v3}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1031
    const-string v3, "pdaID"

    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1032
    const-string v1, "createdBy"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1033
    const-string v1, "ctreatedDate"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1034
    const-string v1, "updatedBy"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1035
    const-string v1, "updatedDate"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1036
    const-string v1, "referenceId"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1037
    const-string v1, "referenceType"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1038
    const-string v1, "eventTypeId"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 1039
    const-string v1, "ContentTypeId"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 1044
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    .line 1042
    :goto_1
    const-string v2, "SyncDataService"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_2
    move-object v2, v1

    :goto_3
    return-object v2
.end method

.method private prepareMultiPart(Lcom/conceptglobal/pmc/model/ImageDetails;)Lorg/apache/http/entity/mime/MultipartEntity;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 961
    :try_start_0
    new-instance v1, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 962
    :try_start_1
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 963
    new-instance v2, Lcom/conceptglobal/pmc/utils/FileZipping;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/conceptglobal/pmc/utils/FileZipping;-><init>(Landroid/content/Context;)V

    .line 964
    new-instance v3, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 965
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "ZipFile.zip"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/conceptglobal/pmc/utils/FileZipping;->zip_File(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 967
    new-instance v2, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 968
    const-string v3, "imageId"

    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 969
    const-string v3, "assignmentId"

    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getAssignmentId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 970
    const-string v3, "activityId"

    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getActivityId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 971
    const-string v3, "AttributeId"

    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getAttributeId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 972
    const-string v3, "Subject"

    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 973
    const-string v3, "Comments"

    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getComments()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 974
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getRemarks()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, ""

    const-string v5, "Remarks"

    if-eqz v3, :cond_0

    .line 975
    :try_start_2
    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getRemarks()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v5, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_0

    .line 977
    :cond_0
    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, v4}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 979
    :goto_0
    const-string v3, "FarmerId"

    new-instance v5, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getFarmerId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v3, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 980
    const-string v3, "picturePath"

    new-instance v5, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v5, v2}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v3, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 981
    const-string v2, "pdaID"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPdaID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 982
    const-string v2, "createdBy"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getCreatedBy()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 983
    const-string v2, "ctreatedDate"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getCtreatedDate()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 984
    const-string v2, "updatedBy"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getUpdatedBy()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 985
    const-string v2, "updatedDate"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getUpdatedDate()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 986
    const-string v2, "referenceId"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getReferenceId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getReferenceId()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-direct {v3, v4, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 987
    const-string v2, "referenceType"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getReferenceType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 988
    const-string v2, "eventTypeId"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 989
    const-string v2, "ContentTypeId"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getContentTypeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 990
    const-string v2, "IdTransid"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getIdTransid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1001
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 995
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteImageActDetails(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 997
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 999
    :goto_3
    const-string p1, "SyncDataService"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_4
    return-object v1
.end method

.method private preparePendingData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerMasterDataQry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getListOfFarmers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->farmersModel:Ljava/util/List;

    .line 251
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectFarmerCropMapping()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerCropMappingDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->farmerCropmappingModel:Ljava/util/List;

    .line 252
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectFarmerLandDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerLandDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->farmerLandModel:Ljava/util/List;

    .line 253
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getselectDealerLandDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDealerLandDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealerLandModel:Ljava/util/List;

    .line 254
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectAttendanceDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAttendanceDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->attendanceModel:Ljava/util/List;

    .line 255
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectResignationDetailsSync()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getResignationDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->resignationDetails:Ljava/util/List;

    .line 256
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectPMCAttendanceDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCAttendanceDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->faattendanceModel:Ljava/util/List;

    .line 257
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getDealerMasterDataQry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getListOfDealers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealersModel:Ljava/util/List;

    .line 258
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getDealerCompanyDataQry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDealerCompanyDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealerCompanyModel:Ljava/util/List;

    .line 259
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectAssignmentVisitDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAssignmentVisitDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->assignmentVisitModel:Ljava/util/List;

    .line 260
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectTSTAssignmentVisitDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTSTAssignmentVisitDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->tstAssignmentVisitModel:Ljava/util/List;

    .line 261
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectFBFAssignmentVisitDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFAssignmentVisitDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mFeedbackAssignmentVisitModel:Ljava/util/List;

    .line 262
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectAssignmentActivityDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerActivityDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->assignmentActivitiesModel:Ljava/util/List;

    .line 265
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectPMCTSTAssignmentActivityDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCTSTAssignmentActivityDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mPMCTSTAssignmentModel:Ljava/util/List;

    .line 266
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectPMCFBFAssignmentActivityDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCFBFAssignmentActivityDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mFeedbackAssignmentActivitiesModel:Ljava/util/List;

    .line 267
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getGetFarmerMultiAttributeDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerMultiAttributeDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mFarmerMultiAttributeDetailsModel:Ljava/util/List;

    .line 268
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getGetDealerMultiAttributeDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDealerMultiAttributeDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mRetailerMultiAttributeDetails:Ljava/util/List;

    .line 269
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSurveyAssignmentActivityDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyActivityDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->SurveyAssignmentActivitiesModel:Ljava/util/List;

    .line 270
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSurveyAssignmentVisitDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSurveyAssignmentVisitDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->SurveyAssignmentVisitModel:Ljava/util/List;

    .line 271
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getFBFComplaintResolutionDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFBFComplaintResolutionDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->complaintInfoModel:Ljava/util/List;

    .line 273
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectFavouriteFarmer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFavouriteFarmerDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->favouriteFarmerList:Ljava/util/List;

    .line 274
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectApplyLeaveDetailsDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getApplyLeaveDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->ApplyLeaveModel:Ljava/util/List;

    .line 275
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getExpenseAssignmentActivityDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getpmcExpenseAssignmentActivityDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->expensesAssignmentActivityDetails:Ljava/util/List;

    .line 276
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getExpenseAssignmentVisitDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getExpensesAssignmentVisitDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->expensesAssignmentVisitDetails:Ljava/util/List;

    return-void
.end method

.method private sendProfilePictureToServer()V
    .locals 8

    .line 378
    const-string v0, "null"

    const-string v1, "sendProfilePictureToServer"

    const-string v2, "SyncDataService"

    const-string v3, ""

    .line 380
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebApiToken()Ljava/lang/String;

    move-result-object v4

    .line 381
    sget-object v5, Lcom/conceptglobal/pmc/common/ConstantsPMC;->profilePicPath:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/conceptglobal/pmc/service/SyncDataService;->checkIsPictureExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 383
    invoke-direct {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->prepareMultiPart()Lorg/apache/http/entity/mime/MultipartEntity;

    move-result-object v5

    .line 385
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v6

    .line 386
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCServiceProfileImages()Ljava/lang/String;

    move-result-object v7

    .line 388
    invoke-virtual {v6, v5, v7, v4}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestMultipartwithWebApiToken(Lorg/apache/http/entity/mime/MultipartEntity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 389
    const-string v5, "Image multiPart "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    .line 390
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_3

    .line 391
    const-string v5, "Unauthorized"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "Unauthorised"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 403
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 404
    const-string v5, "Status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 405
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    .line 407
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v4, :cond_1

    const-string v0, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    const-string v0, "Profile Pic Updated @ server"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateProfileImageDetails()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 411
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteImageActDetails(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    goto :goto_1

    .line 393
    :cond_2
    :goto_0
    new-instance v0, Lcom/conceptglobal/pmc/sync/GetToken;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v5, v4}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 394
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 396
    const-string v0, "com.conceptglobal.pmc.service.SyncDataService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 397
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 398
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 399
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 400
    invoke-virtual {v6, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 418
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private sendTableByTableDataToServer(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1077
    new-instance v0, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;-><init>()V

    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSyncPMCData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1080
    const-string v3, "pmcFarmerCropMapping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1083
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerCropMappingByOffsetQry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerCropMappingDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1084
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1085
    iget-object v2, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->farmerCropmappingModel:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setFarmerCropmappingModel(Ljava/util/List;)V

    .line 1086
    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;)V

    .line 1091
    iget-boolean v2, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto/16 :goto_0

    .line 1092
    :cond_1
    const-string v3, "FarmerMaster"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1095
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerMasterDataByOffsetQry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getListFarmereMasterDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1096
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1097
    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setFarmersModel(Ljava/util/List;)V

    .line 1098
    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;)V

    .line 1103
    iget-boolean v2, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_2

    goto/16 :goto_0

    .line 1104
    :cond_3
    const-string v3, "DealerMaster"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1107
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getDealerMasterDataByOffsetQry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getListDealersDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1109
    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setDealersModel(Ljava/util/List;)V

    .line 1110
    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;)V

    .line 1115
    iget-boolean v2, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_4

    goto/16 :goto_0

    .line 1116
    :cond_5
    const-string v3, "DealerCompanyMapping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1119
    :cond_6
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getDealerCompanyDataByOffsetQry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDealerCompanyDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1121
    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setDealerCompanyModel(Ljava/util/List;)V

    .line 1122
    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;)V

    .line 1127
    iget-boolean v2, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_6

    goto/16 :goto_0

    .line 1128
    :cond_7
    const-string v3, "DealerCropMapping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1131
    :cond_8
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getDealerCropDataByOffsetQry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDealerCropDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1133
    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setDealerCropModel(Ljava/util/List;)V

    .line 1134
    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;)V

    .line 1139
    iget-boolean v2, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_8

    goto/16 :goto_0

    .line 1140
    :cond_9
    const-string v3, "pmcAssignmentActivityDetails"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1143
    :cond_a
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getSelectAssignmentActivityDetailsByOffSetQry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerActivityDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1145
    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setAssignmentActivitiesModel(Ljava/util/List;)V

    .line 1146
    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;)V

    .line 1151
    iget-boolean v2, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_a

    goto/16 :goto_0

    .line 1152
    :cond_b
    const-string v3, "pmcAssignmentVisit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1155
    :cond_c
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getAssignmentVisitDetailsByOffsetQry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAssignmentVisitDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1157
    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setAssignmentVisitModel(Ljava/util/List;)V

    .line 1158
    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;)V

    .line 1163
    iget-boolean v2, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_c

    goto/16 :goto_0

    .line 1165
    :cond_d
    const-string v3, "FavouriteFarmer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1168
    :cond_e
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getFavouriteFarmerByOffsetQry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFavouriteFarmerDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1169
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1170
    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setListFavouriteFarmer(Ljava/util/List;)V

    .line 1171
    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;)V

    .line 1176
    iget-boolean v2, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_e

    goto/16 :goto_0

    .line 1177
    :cond_f
    const-string v1, "Log4Net"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodLog4Net()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1181
    :cond_10
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getLog4NetDataByOffsetQry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLog4NetData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1182
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1183
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setLog4net(Ljava/util/List;)V

    .line 1184
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;)V

    .line 1189
    iget-boolean v2, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    if-eqz v2, :cond_13

    if-eqz v1, :cond_13

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_10

    goto :goto_0

    .line 1190
    :cond_11
    const-string v1, "SyncErrorLog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodLog4Net()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1194
    :cond_12
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getSyncErrorLogDataByOffsetQry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSyncErrorLogsData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1195
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1196
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setSyncErrorLog(Ljava/util/List;)V

    .line 1197
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;)V

    .line 1202
    iget-boolean v2, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    if-eqz v2, :cond_13

    if-eqz v1, :cond_13

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_12

    :cond_13
    :goto_0
    return-void
.end method

.method private submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;)V
    .locals 23

    move-object/from16 v1, p0

    .line 481
    const-string v2, "data"

    const-string v3, "SyncDataService"

    .line 0
    const-string v0, "Refresh Data end  --"

    const-string v4, "Transaction sync--"

    const-string v5, "Refresh Data start  --"

    const/4 v6, 0x1

    .line 482
    iput-boolean v6, v1, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    const/4 v7, 0x0

    .line 484
    :try_start_0
    new-instance v8, Lcom/google/gson/GsonBuilder;

    invoke-direct {v8}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v8

    move-object/from16 v9, p2

    .line 485
    invoke-virtual {v8, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 486
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v10

    .line 487
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v11

    .line 488
    iget-object v12, v1, Lcom/conceptglobal/pmc/service/SyncDataService;->mDeviceBandwidthSampler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    invoke-virtual {v12}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->startSampling()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 490
    :try_start_1
    const-string v13, "APICallsTimeDetails"

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object/from16 v5, p1

    .line 494
    :try_start_2
    invoke-virtual {v10, v9, v5, v11}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 495
    iget-object v10, v1, Lcom/conceptglobal/pmc/service/SyncDataService;->mDeviceBandwidthSampler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    invoke-virtual {v10}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->stopSampling()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 497
    :try_start_3
    iget-object v10, v1, Lcom/conceptglobal/pmc/service/SyncDataService;->mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

    invoke-virtual {v10}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getCurrentBandwidthQuality()Lcom/facebook/network/connectionclass/ConnectionQuality;

    move-result-object v10

    invoke-virtual {v10}, Lcom/facebook/network/connectionclass/ConnectionQuality;->toString()Ljava/lang/String;

    move-result-object v10

    .line 498
    const-string v11, "NetworkStatus"

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 499
    const-string v17, "APICallsTimeDetails"

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 502
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 504
    :goto_0
    const-string v0, ""

    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 505
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v10, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v8, v4, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 507
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AUTHORISED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 509
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 510
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/service/SyncDataService;->deleteDataAfterResponse(Ljava/lang/String;)V

    goto :goto_1

    .line 512
    :cond_0
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v8, "UNAUTHORISED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Invalid Token"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    new-instance v2, Lcom/conceptglobal/pmc/sync/GetToken;

    const/4 v4, 0x2

    const/4 v8, 0x0

    invoke-direct {v2, v8, v4}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 516
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 518
    const-string v2, "com.conceptglobal.pmc.service.SyncDataService"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 519
    const-string v4, "syncDataToServer"

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 520
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 521
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 522
    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_1
    :goto_1
    iput-boolean v6, v1, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    goto :goto_2

    .line 533
    :cond_2
    iput-boolean v7, v1, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    .line 535
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 538
    :catch_2
    iput-boolean v7, v1, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    :goto_3
    return-void
.end method

.method private syncDataToServer()V
    .locals 4

    .line 289
    invoke-direct {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->clearAllObjects()V

    const/4 v0, 0x0

    .line 291
    :try_start_0
    invoke-static {}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getInstance()Lcom/facebook/network/connectionclass/ConnectionClassManager;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

    .line 292
    invoke-static {}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->getInstance()Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mDeviceBandwidthSampler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    .line 293
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTotalPendingRecordsCount()I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->pendingRecordsCount:I

    .line 298
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTotalPictureReportingRecords()I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->pendingPicutureRecordsCount:I

    .line 302
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLogsCount()I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->errLogsCount:I

    .line 318
    iget v2, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->pendingRecordsCount:I

    iget v3, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->pendingPicutureRecordsCount:I

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    iput v3, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->totalPendingDataCount:I

    if-lez v3, :cond_5

    if-lez v2, :cond_1

    const/16 v1, 0x3e8

    if-le v2, v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->sendTableWiseDataToServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 326
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->preparePendingData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 330
    :catch_0
    :try_start_2
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->syncTransactionDataToServer(Z)V

    .line 334
    :cond_1
    :goto_0
    iget v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->pendingPicutureRecordsCount:I

    if-lez v1, :cond_2

    .line 337
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->sendPicturesToServer()V

    .line 339
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->sendVideoToServer()V

    .line 342
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getProfilePicStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIsRecordExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 343
    invoke-direct {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->sendProfilePictureToServer()V

    .line 346
    :cond_3
    iget v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->errLogsCount:I

    if-lez v1, :cond_4

    const/4 v1, 0x1

    .line 347
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/service/SyncDataService;->syncTransactionDataToServer(Z)V

    .line 349
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getCountForFOTrackerSync()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 350
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/service/SyncDataService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 357
    :catch_1
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    .line 361
    :cond_5
    :goto_1
    iget v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->totalPendingDataCount:I

    if-nez v0, :cond_6

    .line 362
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noPendDataToServerToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->msg:Ljava/lang/String;

    goto :goto_2

    .line 363
    :cond_6
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    if-nez v0, :cond_7

    .line 364
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_sendDataPicToServerFailedAlert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->msg:Ljava/lang/String;

    goto :goto_2

    .line 366
    :cond_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_sentSuccessfullDialogText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->msg:Ljava/lang/String;

    .line 368
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->msg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->updateUIIfNeccessary(Ljava/lang/String;)V

    return-void
.end method

.method private syncTransactionDataToServer(Z)V
    .locals 4

    .line 427
    new-instance v0, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;-><init>()V

    .line 428
    const-string v1, "/"

    if-eqz p1, :cond_1

    .line 430
    :try_start_0
    iget p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->errLogsCount:I

    const/16 v2, 0x3e8

    if-ge p1, v2, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->prepareLogsData()V

    .line 433
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->log4net:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setLog4net(Ljava/util/List;)V

    .line 434
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncErrorLog:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setSyncErrorLog(Ljava/util/List;)V

    .line 435
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodLog4Net()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;)V

    goto/16 :goto_0

    .line 439
    :cond_0
    const-string p1, "SyncErrorLog"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/service/SyncDataService;->sendTableByTableDataToServer(Ljava/lang/String;)V

    .line 440
    const-string p1, "log4net"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/service/SyncDataService;->sendTableByTableDataToServer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 446
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->assignmentActivitiesModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setAssignmentActivitiesModel(Ljava/util/List;)V

    .line 447
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->farmersModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setFarmersModel(Ljava/util/List;)V

    .line 448
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->farmerCropmappingModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setFarmerCropmappingModel(Ljava/util/List;)V

    .line 449
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->farmerLandModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setFarmerLandModel(Ljava/util/List;)V

    .line 450
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealerLandModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setDealerLandModel(Ljava/util/List;)V

    .line 451
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->attendanceModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setAttendanceModel(Ljava/util/List;)V

    .line 452
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->resignationDetails:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setResignationDetails(Ljava/util/List;)V

    .line 453
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->faattendanceModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setPmcattendanceModel(Ljava/util/List;)V

    .line 454
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealersModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setDealersModel(Ljava/util/List;)V

    .line 455
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealerCompanyModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setDealerCompanyModel(Ljava/util/List;)V

    .line 456
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->dealerCropMappingModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setDealerCropModel(Ljava/util/List;)V

    .line 457
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->assignmentVisitModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setAssignmentVisitModel(Ljava/util/List;)V

    .line 458
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->tstAssignmentVisitModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setTstAssignmentVisitModel(Ljava/util/List;)V

    .line 459
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mFeedbackAssignmentVisitModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setFeedbackAssignmentVisitDetails(Ljava/util/List;)V

    .line 460
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mPMCTSTAssignmentModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->settestimonialModel(Ljava/util/List;)V

    .line 461
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mFeedbackAssignmentActivitiesModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setFeedbackAssignmentActivityDetailsModels(Ljava/util/List;)V

    .line 462
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mFarmerMultiAttributeDetailsModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setFarmerAttributeDetails(Ljava/util/List;)V

    .line 463
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->mRetailerMultiAttributeDetails:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setDealerAttributeDetails(Ljava/util/List;)V

    .line 464
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->SurveyAssignmentActivitiesModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setSurveyAssignmentActivitiesModel(Ljava/util/List;)V

    .line 465
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->SurveyAssignmentVisitModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setSurveyAssignmentVisitModel(Ljava/util/List;)V

    .line 466
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->complaintInfoModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setComplaintInfoModel(Ljava/util/List;)V

    .line 467
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->ApplyLeaveModel:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setApplyLeave(Ljava/util/List;)V

    .line 468
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->expensesAssignmentActivityDetails:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setExpensesAssignmentActivityDetailsModel(Ljava/util/List;)V

    .line 469
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->expensesAssignmentVisitDetails:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setExpensesAssignmentVisitDetails(Ljava/util/List;)V

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSyncPMCData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/service/SyncDataService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;)V

    :catch_0
    :goto_0
    return-void
.end method

.method private syncVideoDataToServer()V
    .locals 0

    return-void
.end method

.method private updateUIIfNeccessary(Ljava/lang/String;)V
    .locals 4

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncDataService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->bundle:Landroid/os/Bundle;

    const-string v2, "respMsg"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->receiver:Landroid/os/ResultReceiver;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1213
    const-string p1, "sending back "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->callbackActivity:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1215
    iget-object v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->bundle:Landroid/os/Bundle;

    const-string v2, "callbackActivity"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->receiver:Landroid/os/ResultReceiver;

    iget-object v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1220
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/PMCApplication;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/PMCApplication;->isHomeFragmentActive()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1221
    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setRefreshActionButtonState(Z)V

    .line 1223
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->callbackActivity:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v2, "REMOTEFLUSH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1224
    new-instance p1, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v2, v3, v0}, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;-><init>(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "callbackActivity--"

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    const-string v1, "SyncDataService"

    const-string v2, "onHandleIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->checkDataBase()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    const-string v1, "receiver"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->receiver:Landroid/os/ResultReceiver;

    .line 150
    const-string v1, "callbackActivity"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "callbackActivity"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->callbackActivity:Ljava/lang/String;

    .line 154
    :cond_0
    const-string p1, "SyncDataService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->callbackActivity:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->receiver:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_1

    .line 157
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/service/SyncDataService;->syncDataToServer()V

    goto :goto_0

    .line 163
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_internetIsTurnedOffToast()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/service/SyncDataService;->updateUIIfNeccessary(Ljava/lang/String;)V

    .line 166
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendPicturesToServer()V
    .locals 20

    move-object/from16 v0, p0

    .line 786
    const-string v1, ""

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebApiToken()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 788
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQryForSync()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsForSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 789
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    .line 790
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 792
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-direct {v0, v6}, Lcom/conceptglobal/pmc/service/SyncDataService;->prepareMultiPart(Lcom/conceptglobal/pmc/model/ImageDetails;)Lorg/apache/http/entity/mime/MultipartEntity;

    move-result-object v6

    .line 795
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v7

    .line 796
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCServiceImages()Ljava/lang/String;

    move-result-object v8

    .line 797
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    .line 802
    iget-object v9, v0, Lcom/conceptglobal/pmc/service/SyncDataService;->mDeviceBandwidthSampler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    invoke-virtual {v9}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->startSampling()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 804
    :try_start_1
    const-string v10, "APICallsTimeDetails"

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Image  start  --"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 807
    :catch_0
    :try_start_2
    invoke-virtual {v7, v6, v8, v2}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestMultipartwithWebApiToken(Lorg/apache/http/entity/mime/MultipartEntity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 808
    iget-object v7, v0, Lcom/conceptglobal/pmc/service/SyncDataService;->mDeviceBandwidthSampler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    invoke-virtual {v7}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->stopSampling()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 810
    :try_start_3
    iget-object v7, v0, Lcom/conceptglobal/pmc/service/SyncDataService;->mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

    invoke-virtual {v7}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getCurrentBandwidthQuality()Lcom/facebook/network/connectionclass/ConnectionQuality;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/network/connectionclass/ConnectionQuality;->toString()Ljava/lang/String;

    move-result-object v7

    .line 811
    const-string v8, "NetworkStatus"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Images sync--"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 812
    const-string v14, "APICallsTimeDetails"

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Image  end  --"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 815
    :catch_1
    :try_start_4
    const-string v7, "Image multiPart "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_2

    .line 816
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_2

    .line 817
    const-string v7, "Authorization has been denied for this request"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 819
    new-instance v6, Lcom/conceptglobal/pmc/sync/GetToken;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 820
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 822
    const-string v6, "com.conceptglobal.pmc.service.SyncDataService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 823
    const-string v9, "sendPicturesToServer"

    invoke-virtual {v6, v9, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 824
    invoke-virtual {v9, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 825
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 826
    invoke-virtual {v9, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 828
    :cond_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 830
    const-string v7, "Status"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 831
    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v6, :cond_2

    .line 832
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateImageActDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 833
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailQueryBYImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 835
    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 837
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 840
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteImageActDetails(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 854
    :catch_2
    iput-boolean v3, v0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    :cond_3
    return-void
.end method

.method protected sendTableWiseDataToServer()V
    .locals 4

    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    const-string v1, "FarmerMaster"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    const-string v1, "pmcFarmerCropMapping"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    const-string v1, "DealerMaster"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    const-string v1, "DealerCompanyMapping"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    const-string v1, "DealerCropMapping"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    const-string v1, "pmcAssignmentActivityDetails"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    const-string v1, "pmcAssignmentVisit"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    const-string v1, "FarmerLandDetails"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1064
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1065
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/service/SyncDataService;->sendTableByTableDataToServer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1069
    :catch_0
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/SyncDataService;->syncStatus:Z

    :cond_0
    return-void
.end method

.method public sendVideoToServer()V
    .locals 21

    move-object/from16 v1, p0

    .line 861
    const-string v0, "null"

    const-string v2, ""

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebApiToken()Ljava/lang/String;

    move-result-object v3

    .line 863
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/Queries;->getVideoDetailsQryForSync()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsForSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 864
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 865
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 866
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-direct {v1, v7}, Lcom/conceptglobal/pmc/service/SyncDataService;->prepareMultiPart(Lcom/conceptglobal/pmc/model/ImageDetails;)Lorg/apache/http/entity/mime/MultipartEntity;

    move-result-object v7

    .line 868
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v8

    .line 869
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCServiceVideos()Ljava/lang/String;

    move-result-object v9

    .line 870
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    .line 871
    iget-object v10, v1, Lcom/conceptglobal/pmc/service/SyncDataService;->mDeviceBandwidthSampler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    invoke-virtual {v10}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->startSampling()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 873
    :try_start_1
    const-string v11, "APICallsTimeDetails"

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "video  start  --"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 876
    :catch_0
    :try_start_2
    invoke-virtual {v8, v7, v9, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestMultipartwithWebApiToken(Lorg/apache/http/entity/mime/MultipartEntity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 877
    iget-object v8, v1, Lcom/conceptglobal/pmc/service/SyncDataService;->mDeviceBandwidthSampler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    invoke-virtual {v8}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->stopSampling()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 879
    :try_start_3
    iget-object v8, v1, Lcom/conceptglobal/pmc/service/SyncDataService;->mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

    invoke-virtual {v8}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getCurrentBandwidthQuality()Lcom/facebook/network/connectionclass/ConnectionQuality;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/network/connectionclass/ConnectionQuality;->toString()Ljava/lang/String;

    move-result-object v8

    .line 880
    const-string v9, "NetworkStatus"

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Viodes sync--"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 881
    const-string v15, "APICallsTimeDetails"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "video  end  --"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 884
    :catch_1
    :try_start_4
    const-string v8, "Video multipart"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_2

    .line 885
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_2

    .line 886
    const-string v8, "Authorization has been denied for this request"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 887
    new-instance v7, Lcom/conceptglobal/pmc/sync/GetToken;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 888
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 890
    const-string v7, "com.conceptglobal.pmc.service.SyncDataService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 892
    const-string v10, "SendVideosToServer"

    invoke-virtual {v7, v10, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 893
    invoke-virtual {v10, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 894
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 895
    invoke-virtual {v10, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 897
    :cond_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 899
    const-string v8, "Status"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 902
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 903
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v7, :cond_2

    .line 913
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    .line 914
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailQueryBYImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/ImageDetails;

    .line 916
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v7, :cond_2

    .line 917
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateImageActDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 918
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailQueryBYImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 920
    new-instance v9, Ljava/io/File;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 922
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 925
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteImageActDetails(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 939
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sendVideosToServer"

    const-string v4, "SyncDataService"

    invoke-static {v4, v0, v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
