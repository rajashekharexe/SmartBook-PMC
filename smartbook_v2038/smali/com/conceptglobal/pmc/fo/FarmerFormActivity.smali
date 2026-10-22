.class public Lcom/conceptglobal/pmc/fo/FarmerFormActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "FarmerFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;
.implements Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;
.implements Lcom/conceptglobal/pmc/utils/CompressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/FarmerFormActivity$DecimalDigitsInputFilter;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final DATEDIALOGID_YEARLESS:I = 0x1

.field private static final GETATTRIBUTEDONE:I = 0x3

.field private static final GETCUSTOMER:I = 0x3

.field private static final GETNEWACTIVITY:I = 0x2

.field private static final GETRETAILERLIST:I = 0xa

.field private static final INITIALCROPID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FarmerFormActivity"

.field private static final TODO_TAG:Ljava/lang/String; = "TODO"

.field public static campaignID:Ljava/lang/String; = ""

.field public static context:Landroid/content/Context;

.field public static currentActivityAssignmentId:I


# instance fields
.field private GPSTimeStamp:Ljava/lang/String;

.field private activityAssignmentId:I

.field private activityId:I

.field private activityImage:Landroid/widget/ImageView;

.field private activityName:Ljava/lang/String;

.field private adapterActivities:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

.field private adapterCompany:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

.field private adapterCrops:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

.field private assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

.field private assignmentId:I

.field private attributesArry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DynamicFields;",
            ">;"
        }
    .end annotation
.end field

.field bindQuery:Ljava/lang/String;

.field private btnCustomerDetails:Landroid/widget/Button;

.field private btnDealer:Landroid/widget/Button;

.field private btnDiscription:Landroid/widget/Button;

.field private btnInactive:Landroid/widget/Button;

.field private btnLatLng:Landroid/widget/ImageView;

.field private btnSave:Landroid/widget/Button;

.field private btnTerritoryDetails:Landroid/widget/Button;

.field btnViewHistory:Landroid/widget/Button;

.field private btnVisit:Landroid/widget/Button;

.field camaigndata_receiver:Landroid/content/BroadcastReceiver;

.field campaignFarmersData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field private campaignIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private campaignStatus:Ljava/lang/String;

.field private consentflag:I

.field private custDetailsText:Landroid/widget/TextView;

.field private cv:Landroid/content/ContentValues;

.field protected d_remarks:Landroid/app/Dialog;

.field private datasaveReceiver:Landroid/content/BroadcastReceiver;

.field private dateDialogID:I

.field private datePos:I

.field datesListener:Landroid/view/View$OnClickListener;

.field datesListenerYearless:Landroid/view/View$OnClickListener;

.field dynamicColumnnames:Ljava/lang/StringBuilder;

.field private etCropAccr:Landroid/widget/EditText;

.field private etCropDos:Landroid/widget/EditText;

.field private etCropName:Landroid/widget/EditText;

.field private etCultivated:Landroid/widget/EditText;

.field private etDiscription:Landroid/widget/EditText;

.field private etDistrict:Landroid/widget/EditText;

.field private etFarmerAddress:Landroid/widget/EditText;

.field private etFarmerConumber:Landroid/widget/EditText;

.field private etFarmerFathername:Landroid/widget/EditText;

.field private etFarmerLandline:Landroid/widget/EditText;

.field private etFarmerLandmark:Landroid/widget/EditText;

.field private etFarmerMobile:Landroid/widget/EditText;

.field private etFarmerName:Landroid/widget/EditText;

.field private etFarmerSurname:Landroid/widget/EditText;

.field private etLeasedin:Landroid/widget/EditText;

.field private etLeasedout:Landroid/widget/EditText;

.field private etOwned:Landroid/widget/EditText;

.field private etState:Landroid/widget/EditText;

.field private etTaluka:Landroid/widget/EditText;

.field private etTotalLandHolding:Landroid/widget/EditText;

.field private etVillage:Landroid/widget/EditText;

.field fab2:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

.field private farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

.field private farmerID:Ljava/lang/String;

.field private farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

.field private fragmentsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private fullDetailsBtn:Landroid/widget/TextView;

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private gridView:Landroid/widget/GridView;

.field private hAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

.field private imageFile:Ljava/io/File;

.field private imageId:J

.field private imagePath:Ljava/lang/String;

.field private imagelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ImageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private imglstConfigId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private intentGetData:Landroid/content/Intent;

.field private isDisplayOthers:Z

.field private isDraftSave:Z

.field private isDynamicTableViewActivity:Z

.field private isFromDraft:I

.field private isImageDeleted:Z

.field private isMIActivity:Z

.field private isTableViewActivity:Z

.field private lastVisitData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/LastVisitModel;",
            ">;"
        }
    .end annotation
.end field

.field private lastVisitModelHash:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/LastVisitModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private layoutId:I

.field private listActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ActivityModel;",
            ">;"
        }
    .end annotation
.end field

.field private listAttributes_Assgnmt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field private listAttributes_Assgnmt_multiSelect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field private listDealerCompanies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DealerCompanyMapping;",
            ">;"
        }
    .end annotation
.end field

.field private listFarmerCrops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropMapping;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/conceptglobal/pmc/utils/CompressListener;

.field private llLastvisitBody:Landroid/widget/LinearLayout;

.field private llactAddress:Landroid/widget/LinearLayout;

.field private lladdActivities:Landroid/widget/LinearLayout;

.field private locationProvider:Ljava/lang/String;

.field private lvActivity:Landroid/widget/ListView;

.field private lvCrops:Landroid/widget/ListView;

.field private lvLastVisitData:Landroid/widget/ListView;

.field private mAddDynamicLinear:Landroid/widget/LinearLayout;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mEntryArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryArrIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryArrIds_Assgnmt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryArr_Assgnmt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mEntrySpinnerArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mFiledStr:Ljava/lang/String;

.field private mForDates:I

.field private mForOperations:I

.field mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private mMonth:I

.field private mOprDatesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoGridView:Landroid/widget/GridView;

.field private mVideoThumbNail:Lcom/conceptglobal/pmc/model/ImageDetails;

.field private mYear:I

.field private mattributesnamesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mentryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Landroid/content/BroadcastReceiver;

.field private miDraft:Landroid/view/MenuItem;

.field operationListener:Landroid/view/View$OnClickListener;

.field private packageId:I

.field private queries:Lcom/conceptglobal/pmc/common/Queries;

.field private remarkNames:[Ljava/lang/String;

.field private remarkids:[Ljava/lang/String;

.field private replacestring:Ljava/lang/String;

.field private sartiMoilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scrollView:Landroid/widget/ScrollView;

.field private segmentId:I

.field private segmentName:Ljava/lang/String;

.field private selCustomerId:Ljava/lang/String;

.field private selSegmentID:I

.field private slLastVistdata:Landroid/widget/ScrollView;

.field private tabHost:Landroid/widget/TabHost;

.field private tag:Ljava/lang/String;

.field private territoryDetailsText:Landroid/widget/TextView;

.field private timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

.field private total_CampaignIDs:Ljava/lang/String;

.field private tvAddCrop:Landroid/widget/TextView;

.field tvAlert:Landroid/widget/TextView;

.field private tvCropid:Landroid/widget/TextView;

.field private tvFarmer:Landroid/widget/TextView;

.field private tvIsBayerFarmer:Landroid/widget/TextView;

.field private tvLatitude:Landroid/widget/TextView;

.field private final tvLatitudeListener:Landroid/text/TextWatcher;

.field private tvLongitude:Landroid/widget/TextView;

.field private tvRetailers:Landroid/widget/TextView;

.field private tvVideos:Landroid/widget/TextView;

.field private tv_address:Landroid/widget/TextView;

.field private tvpictures:Landroid/widget/TextView;

.field private txt:Landroid/widget/TextView;

.field private updateDOS:Ljava/lang/String;

.field private videoAdapter:Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

.field private videoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ImageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

.field private webView:Landroid/webkit/WebView;

.field private zipFilePath:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 156
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 160
    const-string v0, "FarmerFormActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->dateDialogID:I

    .line 173
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    .line 174
    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->packageId:I

    .line 196
    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isFromDraft:I

    const/4 v2, 0x0

    .line 213
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->hAttributes:Ljava/util/HashMap;

    .line 215
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    .line 216
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->sartiMoilesList:Ljava/util/ArrayList;

    .line 217
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentName:Ljava/lang/String;

    .line 229
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    .line 232
    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->layoutId:I

    const/4 v3, -0x1

    .line 233
    iput v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mForOperations:I

    iput v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mForDates:I

    .line 242
    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->datePos:I

    .line 245
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mFiledStr:Ljava/lang/String;

    .line 246
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->updateDOS:Ljava/lang/String;

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt_multiSelect:Ljava/util/List;

    .line 278
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isMIActivity:Z

    .line 279
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isTableViewActivity:Z

    .line 280
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isDynamicTableViewActivity:Z

    .line 281
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->locationProvider:Ljava/lang/String;

    .line 285
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->GPSTimeStamp:Ljava/lang/String;

    .line 286
    new-instance v0, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 289
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignStatus:Ljava/lang/String;

    .line 291
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->total_CampaignIDs:Ljava/lang/String;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignIDList:Ljava/util/ArrayList;

    .line 299
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selCustomerId:Ljava/lang/String;

    .line 937
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLatitudeListener:Landroid/text/TextWatcher;

    .line 1374
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$5;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->operationListener:Landroid/view/View$OnClickListener;

    .line 2678
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$17;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$17;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->datesListener:Landroid/view/View$OnClickListener;

    .line 2688
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$18;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$18;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->datesListenerYearless:Landroid/view/View$OnClickListener;

    .line 3068
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$21;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$21;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    .line 3297
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$26;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$26;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 3330
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$27;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$27;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 3466
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$28;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->camaigndata_receiver:Landroid/content/BroadcastReceiver;

    .line 3563
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$29;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$29;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->message:Landroid/content/BroadcastReceiver;

    .line 3841
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$35;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$35;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->datasaveReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/List;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;J)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->captureImage(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;I)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setTab(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I
    .locals 0

    .line 156
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    return p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/view/MenuItem;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->miDraft:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Z
    .locals 0

    .line 156
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isMIActivity:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Z
    .locals 0

    .line 156
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isTableViewActivity:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Z
    .locals 0

    .line 156
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isDynamicTableViewActivity:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Ljava/lang/String;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I
    .locals 0

    .line 156
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    return p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropDos:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/List;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->videos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I
    .locals 0

    .line 156
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->dateDialogID:I

    return p0
.end method

.method static synthetic access$2002(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;I)I
    .locals 0

    .line 156
    iput p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->dateDialogID:I

    return p1
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/common/Queries;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvCropid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropAccr:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setListviewForAcreages()V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;J)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->captureVideo(J)V

    return-void
.end method

.method static synthetic access$3002(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;I)I
    .locals 0

    .line 156
    iput p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->datePos:I

    return p1
.end method

.method static synthetic access$3102(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->txt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setAdapter()V

    return-void
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;I)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->saveDataIntoDataBase(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I
    .locals 0

    .line 156
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mYear:I

    return p0
.end method

.method static synthetic access$3502(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;I)I
    .locals 0

    .line 156
    iput p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mYear:I

    return p1
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I
    .locals 0

    .line 156
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mMonth:I

    return p0
.end method

.method static synthetic access$3602(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;I)I
    .locals 0

    .line 156
    iput p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I
    .locals 0

    .line 156
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mDay:I

    return p0
.end method

.method static synthetic access$3702(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;I)I
    .locals 0

    .line 156
    iput p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mDay:I

    return p1
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->updateDisplay_yearless()V

    return-void
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignIDList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->sartiMoilesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Z)Z
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isImageDeleted:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showRemarkSelectionAlert()V

    return-void
.end method

.method static synthetic access$4400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->prepareAttributeData()V

    return-void
.end method

.method static synthetic access$4500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/List;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I
    .locals 0

    .line 156
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$4700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I
    .locals 0

    .line 156
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    return p0
.end method

.method static synthetic access$4800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I
    .locals 0

    .line 156
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->packageId:I

    return p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)[Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->remarkNames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->total_CampaignIDs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5102(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->total_CampaignIDs:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etDiscription:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->locationProvider:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->GPSTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5402(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->GPSTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tv_address:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Landroid/location/Location;Landroid/widget/TextView;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->bindAddress(Landroid/location/Location;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TabHost;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Z
    .locals 0

    .line 156
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isDisplayOthers:Z

    return p0
.end method

.method static synthetic access$902(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Z)Z
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isDisplayOthers:Z

    return p1
.end method

.method private addAudianceFarmerDetails(Ljava/util/List;Ljava/lang/String;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    .line 3950
    const-string v2, "\'"

    const-string v3, ""

    const-string v4, "1"

    const-string v5, "false"

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    .line 3951
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    move-object/from16 v9, p1

    .line 3952
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 3953
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3954
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3956
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3957
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3958
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3962
    :cond_1
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 3963
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 3964
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3965
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3966
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3967
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3968
    new-instance v13, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-direct {v13}, Lcom/conceptglobal/pmc/model/FarmerMaster;-><init>()V

    .line 3969
    const-string v14, "true"

    invoke-virtual {v13, v14}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setisNew(Ljava/lang/String;)V

    .line 3970
    invoke-virtual {v13, v5}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setServerupdatedstatus(Ljava/lang/String;)V

    .line 3971
    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v15

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setPdaid(Ljava/lang/String;)V

    .line 3972
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getPdaid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    move-object/from16 p1, v8

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setRespondentNo(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 3973
    invoke-virtual {v13, v7}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setStatus(I)V

    .line 3974
    invoke-virtual {v13, v4}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setTypeofFarmer(Ljava/lang/String;)V

    .line 3975
    invoke-virtual {v13, v4}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setFarmerTypeId(Ljava/lang/String;)V

    .line 3976
    const-string v8, "True"

    invoke-virtual {v13, v8}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setIsActive(Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 3977
    invoke-virtual {v13, v8}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setAudiencefarmer(I)V

    .line 3978
    invoke-virtual {v13, v5}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setServerupdatedstatus(Ljava/lang/String;)V

    .line 3979
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/conceptglobal/pmc/common/Queries;->getActivityShortCode(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3980
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateAudianceFarmer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setColumn5(Ljava/lang/String;)V

    .line 3982
    new-instance v8, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-direct {v8}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;-><init>()V

    .line 3983
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setRespondentNo(Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 3985
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_4

    move-object/from16 v15, p1

    .line 3986
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 3987
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-object/from16 v17, v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    move-object/from16 v18, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v6

    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getAudianceFarmerMappingID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3988
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingAudianceFramerObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getListAudianceData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/AudianceFarmer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3989
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FarmerMaster"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3990
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3991
    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3992
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Mobile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3993
    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/utils/Encryption;->encryptRemovenewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3996
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT Mobile FROM FarmerMaster where  Mobile = \'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v0

    .line 3997
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT Mobile FROM PMCTerritoryFarmerMaster where  Mobile =\'"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_6

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v4, :cond_3

    .line 4003
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FarmerCropDetails"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4004
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4005
    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v0, p3

    move-object/from16 p1, v15

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    goto/16 :goto_3

    :cond_4
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 p1, v6

    .line 4008
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 4009
    invoke-static {v13, v9, v10}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAudianceFarmerDetails(Lcom/conceptglobal/pmc/model/FarmerMaster;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4011
    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 4012
    invoke-static {v8, v11, v12}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAudianceFarmerCropDetails(Lcom/conceptglobal/pmc/model/FarmerCropMapping;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v0, p3

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 4017
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-void
.end method

.method private addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 909
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 910
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 911
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 912
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0xa

    const/4 v6, 0x4

    .line 913
    invoke-virtual {v2, v4, v6, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 914
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 918
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 919
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x3

    .line 921
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, -0x1000000

    .line 922
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 923
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 924
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 926
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 927
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 929
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setGravity(I)V

    const p2, 0x7f0800e2

    .line 930
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 931
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 932
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, p1, p2, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 933
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 934
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->llLastvisitBody:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addLastVisitAcitivityAttributes(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/LastVisitModel;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 896
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 897
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_FoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getFOName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_lastVisitDataText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_activityLastVisitText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_descriptioLastVisitText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getVisitDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 903
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 904
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    .line 621
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 622
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const v3, 0x7f0c0135

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090459

    .line 623
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 624
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090230

    .line 625
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 626
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 627
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 628
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const p2, 0x7f090414

    if-eqz p1, :cond_0

    .line 629
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_2

    .line 630
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f090415

    .line 631
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_2

    .line 632
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 634
    :try_start_0
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isMIActivity:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p2, 0x2000

    const/high16 p3, 0x20000

    const-string v1, "MODELCLASS"

    const/4 v2, 0x1

    const-string v3, "ActivityAssignmentId"

    const-string v5, "AssignmentId"

    const-string v6, "ACTIVITYNAME"

    const-string v7, "ISSELFASSIGN"

    const-string v8, "SEGMENTID"

    if-eqz p1, :cond_2

    .line 635
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    sget-object v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    const-class v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {p1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 636
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    iget v9, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityName:Ljava/lang/String;

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    iget v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    iget v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 646
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 647
    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 648
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 650
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_2

    .line 652
    :cond_2
    new-instance p1, Landroid/content/Intent;

    sget-object v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    const-class v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 654
    :try_start_2
    iget-boolean v9, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isTableViewActivity:Z

    if-eqz v9, :cond_3

    .line 655
    new-instance v9, Landroid/content/Intent;

    sget-object v10, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    const-class v11, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    move-object p1, v9

    goto :goto_1

    .line 656
    :cond_3
    iget-boolean v9, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isDynamicTableViewActivity:Z

    if-eqz v9, :cond_4

    .line 657
    new-instance v9, Landroid/content/Intent;

    sget-object v10, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    const-class v11, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    .line 660
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 662
    :cond_4
    :goto_1
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    iget v9, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 666
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityName:Ljava/lang/String;

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    iget v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    iget v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 669
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 670
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 672
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 673
    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 674
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 676
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 679
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 680
    const-string p2, "FarmerFormActivity"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 684
    :cond_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f090417

    .line 685
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_2

    .line 686
    :cond_6
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100240

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f090418

    .line 687
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_2

    .line 689
    :cond_7
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 691
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private bindAddress(Landroid/location/Location;Landroid/widget/TextView;)V
    .locals 4

    .line 3922
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getAddressWithLatLong(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object p1

    .line 3923
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3925
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private bindOperations()V
    .locals 11

    .line 1307
    const-string v0, "TerritoryMaster"

    const-string v1, "FarmerMaster"

    const-string v2, "DealerMaster"

    const-string v3, "FarmerFormActivity"

    :try_start_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->bindQuery:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerOrRetailerBindDataDynamic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mentryValues:Ljava/util/List;

    .line 1309
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    .line 1310
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1311
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropdown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1312
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1313
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v5, :cond_0

    .line 1315
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerShopName"

    const-string v9, "ContactId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v8, v2, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->getColumnValueWhereConditionBased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    .line 1317
    :try_start_2
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1318
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1320
    :cond_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v5, :cond_1

    .line 1322
    :try_start_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "FarmerName"

    const-string v9, "RespondentNo"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v8, v1, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->getColumnValueWhereConditionBased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 1324
    :try_start_4
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1325
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1327
    :cond_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v5, :cond_2

    .line 1329
    :try_start_5
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "territoryName"

    const-string v9, "territoryId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v8, v0, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->getColumnValueWhereConditionBased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    .line 1331
    :try_start_6
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1334
    :cond_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1337
    :cond_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .line 1342
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private captureImage(J)V
    .locals 5

    .line 3373
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    .line 3374
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->setPictureReportingContext(Landroid/content/Context;)V

    .line 3375
    const-string v0, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "Image Capture Click"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3376
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3377
    const-string v1, "activityId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3378
    const-string v1, "assignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3380
    :try_start_0
    const-string v1, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "ToDo"

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3382
    const-string v2, "FarmerFormActivity"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3383
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3385
    :goto_0
    iget v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setReferenceID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3386
    const-string v1, "attributeId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3387
    const-string v1, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3388
    const-string v1, "imageId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p1, 0x65

    .line 3389
    invoke-virtual {p0, v0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private captureVideo(J)V
    .locals 3

    .line 3794
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    const-class v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3795
    const-string p2, "activityId"

    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3796
    const-string p2, "assignmentId"

    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3798
    :try_start_0
    const-string p2, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "ToDo"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3800
    const-string v0, "FarmerFormActivity"

    invoke-static {v0, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3801
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3803
    :goto_0
    iget p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "setReferenceID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3804
    const-string p2, "attributeId"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3805
    const-string p2, "farmerId"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3806
    const-string p2, "imageId"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3807
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private checkAllMandatoryImages()Z
    .locals 8

    const/4 v0, 0x1

    .line 3900
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getAllImagesMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImagesPathDetail(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->imglstConfigId:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3901
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->imglstConfigId:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3902
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->imglstConfigId:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getItemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3903
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3904
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    int-to-long v6, v6

    invoke-virtual {v5, v3, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getImagesAvailableOrNotToDo(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 3906
    sget-object v3, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Please take photo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->imglstConfigId:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 3915
    const-string v2, "FarmerFormActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkCustomerDetails()Z
    .locals 6

    const/4 v0, 0x0

    .line 3731
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "ActivityCustomerSelection"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3732
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selCustomerId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selSegmentID:I

    if-nez v1, :cond_0

    .line 3733
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelectCustomerToast()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 3741
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private checkImagesMandatory()Z
    .locals 6

    const/4 v0, 0x0

    .line 3763
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getImageIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3764
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3765
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelectImageToast()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 3771
    const-string v2, "FarmerFormActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkTerritorydetails()Z
    .locals 4

    const/4 v0, 0x0

    .line 3750
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    const v2, 0x7f100001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3751
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelectTerritory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 3755
    const-string v2, "FarmerFormActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkVideoMandatory()Z
    .locals 6

    const/4 v0, 0x1

    .line 3779
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getVideoIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3780
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3781
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelectVideoToast()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 3787
    const-string v2, "FarmerFormActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private createOperationAttributes()V
    .locals 23

    move-object/from16 v15, p0

    const v0, 0x7f090335

    .line 1025
    invoke-virtual {v15, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    .line 1026
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->hAttributes:Ljava/util/HashMap;

    .line 1027
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mattributesnamesArr:Ljava/util/ArrayList;

    .line 1028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mOprDatesArr:Ljava/util/ArrayList;

    .line 1029
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    .line 1030
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntrySpinnerArr:Ljava/util/ArrayList;

    .line 1031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds:Ljava/util/ArrayList;

    .line 1033
    iget v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    const-string v1, "Dealer"

    const-string v2, "Farmer"

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/16 v12, 0x8

    const/4 v11, 0x1

    if-eq v0, v11, :cond_2

    if-ne v0, v12, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v13, :cond_1

    if-ne v0, v14, :cond_3

    .line 1036
    :cond_1
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    goto :goto_1

    .line 1034
    :cond_2
    :goto_0
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    .line 1039
    :cond_3
    :goto_1
    iget v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    if-eq v0, v11, :cond_7

    if-eq v0, v13, :cond_6

    if-eq v0, v14, :cond_5

    if-eq v0, v12, :cond_4

    goto :goto_2

    .line 1051
    :cond_4
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Planter"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 1048
    :cond_5
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Distributor"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 1045
    :cond_6
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 1042
    :cond_7
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    .line 1056
    :goto_2
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1059
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-lez v10, :cond_8

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_8

    .line 1063
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    .line 1064
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v8

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v16

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v17

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v18

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v19

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    iget-object v11, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsTransactionEditable()I

    move-result v20

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move v11, v9

    move/from16 v9, v16

    move/from16 v16, v10

    move/from16 v10, v17

    move/from16 v22, v11

    move/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v13, v21

    move/from16 v14, v20

    .line 1063
    invoke-virtual/range {v0 .. v14}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;I)V

    .line 1065
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    move/from16 v3, v22

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x1

    move/from16 v10, v16

    const/4 v11, 0x1

    const/16 v12, 0x8

    const/4 v13, 0x2

    const/4 v14, 0x3

    goto/16 :goto_3

    :cond_8
    move/from16 v16, v10

    if-gtz v16, :cond_9

    .line 1070
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_5

    .line 1073
    :cond_9
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1074
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1075
    iget v1, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    const-string v3, "\'"

    const-string v4, "select "

    if-eq v1, v2, :cond_c

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    .line 1078
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from DealerMaster where contactId =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->bindQuery:Ljava/lang/String;

    goto :goto_5

    .line 1076
    :cond_c
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from FarmerMaster where RespondentNo =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->bindQuery:Ljava/lang/String;

    :cond_d
    :goto_5
    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 3812
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3813
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 3816
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$34;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$34;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    const-string v2, "FarmerFormActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3836
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData()V
    .locals 5

    .line 701
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 702
    const-string v1, "MODELCLASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 703
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    .line 704
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    .line 706
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    .line 707
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityName:Ljava/lang/String;

    .line 708
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getActivityShortCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 713
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 716
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    .line 717
    sput v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->currentActivityAssignmentId:I

    .line 718
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    .line 719
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "PackageId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->packageId:I

    .line 720
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentName:Ljava/lang/String;

    .line 722
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v0

    const/4 v1, 0x2

    const-string v3, ")"

    const-string v4, " Details("

    if-eq v0, v1, :cond_1

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 727
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 730
    :goto_1
    new-instance v0, Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    .line 734
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {v1, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getLastvistFarmerData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLastVistData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitData:Ljava/util/List;

    .line 735
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 736
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 737
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 740
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 744
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setRespondentNo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 746
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setRespondentNo(Ljava/lang/String;)V

    .line 747
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 749
    :goto_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getAssignmentVisitDetail(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAssignmentVisitDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    const/4 v0, 0x1

    .line 751
    :try_start_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getQueryActivityType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 752
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isMIActivity:Z

    .line 754
    :cond_4
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getActivityDisplayType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 755
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 756
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isTableViewActivity:Z

    goto :goto_5

    :cond_5
    if-eqz v1, :cond_6

    .line 757
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 758
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isDynamicTableViewActivity:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    .line 762
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tag:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 769
    :cond_6
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getCampaignIDToDo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v1

    .line 771
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .line 773
    :goto_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 774
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 775
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignIDList:Ljava/util/ArrayList;

    .line 776
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 777
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignIDList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 782
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_7
    return-void
.end method

.method private initialization()V
    .locals 3

    .line 480
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->intentGetData:Landroid/content/Intent;

    .line 481
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 482
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->dynamicColumnnames:Ljava/lang/StringBuilder;

    const v0, 0x7f09041e

    .line 484
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->images:Ljava/util/List;

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->videos:Ljava/util/List;

    .line 490
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etLeasedin:Landroid/widget/EditText;

    .line 491
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etTotalLandHolding:Landroid/widget/EditText;

    .line 492
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etLeasedout:Landroid/widget/EditText;

    .line 493
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090197

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCultivated:Landroid/widget/EditText;

    .line 494
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvAddCrop:Landroid/widget/TextView;

    .line 495
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0902d8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lvCrops:Landroid/widget/ListView;

    .line 497
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09052b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvFarmer:Landroid/widget/TextView;

    .line 498
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09051c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnDealer:Landroid/widget/Button;

    .line 499
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090521

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnDiscription:Landroid/widget/Button;

    .line 500
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09019a

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etDiscription:Landroid/widget/EditText;

    .line 501
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090502

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvIsBayerFarmer:Landroid/widget/TextView;

    .line 502
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090575

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvRetailers:Landroid/widget/TextView;

    .line 505
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnSave:Landroid/widget/Button;

    const/16 v1, 0x8

    .line 506
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnInactive:Landroid/widget/Button;

    .line 509
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnVisit:Landroid/widget/Button;

    const v0, 0x7f0902de

    .line 510
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lvLastVisitData:Landroid/widget/ListView;

    const v0, 0x7f0902a7

    .line 511
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->llLastvisitBody:Landroid/widget/LinearLayout;

    const v0, 0x7f090409

    .line 512
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->slLastVistdata:Landroid/widget/ScrollView;

    .line 513
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnLatLng:Landroid/widget/ImageView;

    .line 514
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09054d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLatitude:Landroid/widget/TextView;

    .line 515
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090556

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLongitude:Landroid/widget/TextView;

    .line 516
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090352

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvpictures:Landroid/widget/TextView;

    .line 517
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0905ec

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvVideos:Landroid/widget/TextView;

    .line 518
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0904f9

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tv_address:Landroid/widget/TextView;

    const v0, 0x7f0902ca

    .line 519
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->llactAddress:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 520
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0905bd

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->custDetailsText:Landroid/widget/TextView;

    .line 523
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f090081

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnCustomerDetails:Landroid/widget/Button;

    .line 546
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0905c0

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    .line 547
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f090084

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnTerritoryDetails:Landroid/widget/Button;

    .line 549
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f090600

    .line 550
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->webView:Landroid/webkit/WebView;

    .line 560
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090239

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityImage:Landroid/widget/ImageView;

    .line 561
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->gridView:Landroid/widget/GridView;

    .line 562
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09021d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mVideoGridView:Landroid/widget/GridView;

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->imagelist:Ljava/util/ArrayList;

    .line 564
    new-instance v0, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mentryValues:Ljava/util/List;

    .line 566
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090445

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fullDetailsBtn:Landroid/widget/TextView;

    .line 567
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    const v0, 0x7f0903b9

    .line 568
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->scrollView:Landroid/widget/ScrollView;

    .line 569
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090553

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvAlert:Landroid/widget/TextView;

    .line 570
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnViewHistory:Landroid/widget/Button;

    .line 571
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnViewHistory:Landroid/widget/Button;

    const-string v1, "Show History"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 573
    const-string v0, ""

    sput-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;

    return-void
.end method

.method private insertPictureData()V
    .locals 8

    .line 3394
    const-string v0, "FarmerFormActivity"

    .line 3398
    new-instance v1, Lcom/conceptglobal/pmc/model/PictureReportingData;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/PictureReportingData;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 3399
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 3401
    :try_start_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getPictureIdCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    .line 3402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setImageId(J)V

    .line 3403
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "ToDo"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 3405
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3406
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3411
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 3413
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPicturePath(Ljava/lang/String;)V

    .line 3415
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPdaCreatedDate(Ljava/lang/String;)V

    .line 3416
    const-string v5, "false"

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setServerStatus(Ljava/lang/String;)V

    .line 3417
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPDAID(Ljava/lang/String;)V

    .line 3418
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedBy(Ljava/lang/String;)V

    .line 3419
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedDate(Ljava/lang/String;)V

    .line 3420
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedBy(Ljava/lang/String;)V

    .line 3421
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedDate(Ljava/lang/String;)V

    .line 3422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceType(Ljava/lang/String;)V

    .line 3423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setAssignmentId(Ljava/lang/String;)V

    .line 3424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 3427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceID(Ljava/lang/String;)V

    .line 3431
    :try_start_1
    sget-object v5, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertPictureDetails(Lcom/conceptglobal/pmc/model/PictureReportingData;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 3433
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3434
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    .line 1825
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1827
    const-string v0, "FarmerFormActivity"

    invoke-static {v0, p0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isValidData(Z)Z
    .locals 20

    move-object/from16 v1, p0

    .line 2750
    const-string v2, "dd-MM-yyyy"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 2766
    :cond_0
    const-string v0, ""

    const/4 v5, 0x1

    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v14, "FarmerFormActivity"

    if-ge v12, v0, :cond_18

    .line 2767
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2786
    :try_start_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x34f

    if-ne v3, v4, :cond_1

    .line 2787
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2789
    :cond_1
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x350

    if-ne v3, v4, :cond_2

    .line 2790
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2792
    :cond_2
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x351

    if-ne v3, v4, :cond_3

    .line 2793
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2795
    :cond_3
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x352

    if-ne v3, v4, :cond_4

    .line 2796
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2798
    :cond_4
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x320

    if-ne v3, v4, :cond_5

    .line 2799
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2801
    :cond_5
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x31d

    if-ne v3, v4, :cond_6

    .line 2802
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2804
    :cond_6
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x306

    if-ne v3, v4, :cond_7

    .line 2805
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2806
    :cond_7
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x35d

    if-ne v3, v4, :cond_8

    .line 2807
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2809
    :cond_8
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v4, "0"

    const-string v15, "TextBoxN"

    move-object/from16 v16, v4

    const-string v4, "TextBoxND"

    if-ne v3, v5, :cond_12

    .line 2810
    :try_start_1
    sget-object v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v3, :cond_9

    goto/16 :goto_6

    .line 2814
    :cond_9
    :try_start_2
    iget-boolean v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isTableViewActivity:Z

    if-eqz v3, :cond_a

    .line 2815
    sget-object v3, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/conceptglobal/pmc/interfaces/GetTableDataInterface;

    .line 2816
    invoke-interface {v3}, Lcom/conceptglobal/pmc/interfaces/GetTableDataInterface;->getValidationData()Ljava/util/ArrayList;

    move-result-object v3

    .line 2817
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_a

    goto/16 :goto_6

    .line 2822
    :catch_0
    :cond_a
    :try_start_3
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    :goto_1
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 2824
    :cond_b
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Dropdown"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Multiselect Dropdown"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_d

    goto :goto_1

    .line 2827
    :cond_d
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v5

    if-ge v3, v5, :cond_e

    const/4 v13, 0x0

    .line 2830
    :cond_e
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v3, :cond_f

    .line 2832
    :try_start_4
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    const/4 v13, 0x0

    .line 2837
    :cond_f
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_10
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v3

    const-wide/16 v17, 0x0

    cmp-long v5, v3, v17

    if-eqz v5, :cond_17

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_11
    move-object/from16 v4, v16

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14

    cmp-long v0, v3, v14

    if-gez v0, :cond_17

    goto/16 :goto_1

    .line 2842
    :cond_12
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_17

    .line 2843
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v5

    if-ge v3, v5, :cond_13

    const/4 v13, 0x0

    .line 2846
    :cond_13
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v3, :cond_14

    .line 2848
    :try_start_6
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    const/4 v13, 0x0

    .line 2853
    :cond_14
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_15
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v3

    const-wide/16 v17, 0x0

    cmp-long v5, v3, v17

    if-eqz v5, :cond_17

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_16

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_16
    move-object/from16 v4, v16

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    cmp-long v0, v3, v14

    if-gez v0, :cond_17

    goto/16 :goto_1

    :catch_3
    move-exception v0

    .line 2860
    invoke-static {v14, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_6
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_18
    if-nez v13, :cond_1a

    if-eqz p1, :cond_1a

    .line 2866
    :try_start_8
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isTableViewActivity:Z

    if-eqz v0, :cond_19

    .line 2867
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;

    const/4 v3, 0x1

    .line 2868
    invoke-interface {v0, v3}, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;->onValidate(Z)V

    goto :goto_7

    .line 2870
    :cond_19
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;

    const/4 v3, 0x1

    .line 2871
    invoke-interface {v0, v3}, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;->onValidate(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 2875
    invoke-static {v14, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2877
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_validationToast()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2878
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2881
    :cond_1a
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/common/Queries;->getIsLatLongMandatory(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1c

    .line 2882
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1c

    .line 2883
    :cond_1b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2884
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2885
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v3, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$20;

    invoke-direct {v3, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$20;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    const/4 v13, 0x0

    .line 2895
    :cond_1c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v0, v3, :cond_1d

    .line 2896
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "The start km reading should not be greater than the end km reading."

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v13, 0x0

    .line 2899
    :cond_1d
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2900
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 2901
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "Total Quantity Remain should be zero."

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x0

    goto :goto_8

    :cond_1e
    move v4, v13

    .line 2911
    :goto_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2913
    :try_start_9
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 2914
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 2915
    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->timeDifferenceInMinutes(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-gez v0, :cond_1f

    .line 2917
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "The Start Date should not be greater than the End Date."

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_5

    const/4 v4, 0x0

    goto :goto_9

    :catch_5
    move-exception v0

    .line 2921
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_1f
    :goto_9
    return v4

    .line 2751
    :cond_20
    :goto_a
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    const/4 v2, 0x0

    return v2
.end method

.method static synthetic lambda$setBottomViewPadding$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 3930
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const v1, 0x1020013

    .line 3933
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TabWidget;

    if-eqz p0, :cond_0

    .line 3936
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingLeft()I

    move-result v1

    .line 3937
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingTop()I

    move-result v2

    .line 3938
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingRight()I

    move-result v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 3935
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/TabWidget;->setPadding(IIII)V

    :cond_0
    return-object p1
.end method

.method private newChangesReadOnly()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etFarmerMobile:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 429
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etFarmerLandline:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 430
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etFarmerConumber:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 431
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etFarmerLandmark:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 432
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etOwned:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 433
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etLeasedin:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 434
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etTotalLandHolding:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 435
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etLeasedout:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 436
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvRetailers:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method private prepareAttributeData()V
    .locals 10

    .line 2597
    const-string v0, "Multiselect Dropdown"

    const-string v1, "Dropdown"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt_multiSelect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2598
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    if-nez v2, :cond_1

    .line 2599
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2602
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2604
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2605
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2606
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2607
    :cond_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2608
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const v6, 0x7f100001

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2609
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 2615
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 v4, 0x0

    .line 2617
    :goto_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 2618
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2620
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v7

    const-string v8, ""

    const/4 v9, 0x1

    if-ne v7, v9, :cond_5

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "test"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_4

    .line 2624
    :cond_6
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2625
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2626
    :cond_7
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2628
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 2629
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 2631
    array-length v7, v6

    if-lez v7, :cond_a

    .line 2632
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 2640
    :goto_3
    array-length v8, v6

    if-ge v7, v8, :cond_a

    .line 2641
    new-instance v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v8, v5}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 2642
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeId(I)V

    .line 2643
    aget-object v9, v6, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 2645
    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt_multiSelect:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2649
    :cond_8
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2650
    invoke-virtual {v5, v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_4

    .line 2652
    :cond_9
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    :cond_a
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2660
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 2661
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2662
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    .line 2663
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2664
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    if-eqz v4, :cond_c

    .line 2665
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_c

    .line 2666
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2672
    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt_multiSelect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_f

    .line 2673
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt_multiSelect:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    return-void
.end method

.method private saveDataInLocal(Ljava/lang/String;I)V
    .locals 0

    .line 3193
    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->saveDataIntoDataBase(I)V

    return-void
.end method

.method private saveDataInLocalAgree(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 3208
    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->saveDataIntoDataBase(I)V

    return-void
.end method

.method private saveDataIntoDataBase(I)V
    .locals 52

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 2247
    const-string v2, "Something went wrong please perform activity again."

    const-string v3, "  --  "

    const-string v4, "mandatory value empty "

    const-string v5, "SAattributesActivity"

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->insertPictureData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12

    const/4 v6, 0x0

    if-eqz v0, :cond_2c

    .line 2248
    const-string v7, "MBAACTIVITY"

    const-string v11, "Todo StaEnd --"

    const-string v14, ","

    const-string v15, "Completed"

    const-string v8, ""

    const v9, 0x7f100001

    const-string v10, "0"

    const-string v12, "FarmerFormActivity"

    const/4 v13, 0x1

    if-eq v0, v13, :cond_11

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_16

    .line 2254
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isCapaignCompleatedForDraftActivity:Z

    if-nez v0, :cond_2

    .line 2255
    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignStatus:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2256
    :cond_1
    const-string v0, "Farmer Attendance Campaign is in progress. First complete the campaign before save this activity in draft."

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAlertDialog(Ljava/lang/String;)V

    return-void

    .line 2263
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->prepareAttributeData()V

    .line 2264
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isTableViewActivity:Z

    if-eqz v0, :cond_3

    .line 2265
    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    goto :goto_0

    .line 2266
    :cond_3
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isDynamicTableViewActivity:Z

    if-eqz v0, :cond_4

    .line 2267
    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    goto :goto_0

    .line 2269
    :cond_4
    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    .line 2271
    :goto_0
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->saveTableAttributeData(I)Z

    .line 2272
    iput-boolean v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isDraftSave:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12

    .line 2274
    :try_start_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2275
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignIDList:Ljava/util/ArrayList;

    invoke-static {v14, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->total_CampaignIDs:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2278
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_12

    .line 2283
    :cond_5
    :goto_1
    :try_start_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 2284
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    iget v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    iget v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {v3, v4, v5, v13}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2286
    :cond_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    iget v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    iget v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    iget v14, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iget v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->packageId:I

    const/16 v24, 0x1

    const/16 v25, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move/from16 v23, v4

    move/from16 v26, v5

    move/from16 v27, v13

    move/from16 v31, v14

    move-object/from16 v32, v15

    move/from16 v33, v6

    invoke-static/range {v21 .. v33}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 2292
    :try_start_5
    invoke-static {v12, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2295
    :goto_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2296
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v10

    .line 2298
    :goto_3
    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    const/16 v4, 0x26

    if-eq v3, v4, :cond_9

    const/16 v4, 0x29

    if-eq v3, v4, :cond_9

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_9

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_9

    const/16 v4, 0x17

    if-ne v3, v4, :cond_8

    goto :goto_4

    .line 2308
    :cond_8
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-nez v3, :cond_c

    .line 2310
    :try_start_6
    const-string v21, ""

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    const-wide/16 v24, 0x0

    const/16 v22, 0x0

    move/from16 v23, v3

    move-object/from16 v26, v0

    invoke-static/range {v21 .. v26}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 2312
    :try_start_7
    invoke-static {v12, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2299
    :cond_9
    :goto_4
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selCustomerId:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selSegmentID:I

    if-nez v3, :cond_b

    :cond_a
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    if-nez v3, :cond_c

    .line 2301
    :cond_b
    :try_start_8
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selCustomerId:Ljava/lang/String;

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selSegmentID:I

    iget v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    const-wide/16 v24, 0x0

    move-object/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v26, v0

    invoke-static/range {v21 .. v26}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 2303
    :try_start_9
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    const/4 v0, 0x0

    .line 2318
    :goto_6
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->images:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 2320
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->images:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatusVisitDone(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    .line 2324
    :goto_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_e

    .line 2325
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->videos:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateVideoServerStatus(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 2329
    :cond_e
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    iget v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForActivities(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2330
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 2331
    iget v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    const-string v21, "0"

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->locationProvider:Ljava/lang/String;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->GPSTimeStamp:Ljava/lang/String;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileStartTime()Ljava/lang/String;

    move-result-object v24

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileEndTime()Ljava/lang/String;

    move-result-object v25

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSStartTime()Ljava/lang/String;

    move-result-object v26

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSEndTime()Ljava/lang/String;

    move-result-object v27

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->total_CampaignIDs:Ljava/lang/String;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tv_address:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v29

    const-wide/16 v19, 0x0

    move/from16 v18, v0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v28, v4

    invoke-static/range {v13 .. v29}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 2333
    :cond_f
    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v34

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    const-string v38, "0"

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->locationProvider:Ljava/lang/String;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->GPSTimeStamp:Ljava/lang/String;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileStartTime()Ljava/lang/String;

    move-result-object v41

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileEndTime()Ljava/lang/String;

    move-result-object v42

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSStartTime()Ljava/lang/String;

    move-result-object v43

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSEndTime()Ljava/lang/String;

    move-result-object v44

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->total_CampaignIDs:Ljava/lang/String;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tv_address:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v46

    const-wide/16 v36, 0x0

    move/from16 v30, v0

    move-object/from16 v31, v2

    move/from16 v35, v3

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    move-object/from16 v45, v6

    invoke-static/range {v30 .. v46}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 2338
    :try_start_a
    invoke-static {v12, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_12

    .line 2341
    :goto_8
    :try_start_b
    const-string v2, "ActivityTimeDetails"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 2345
    :catch_5
    :try_start_c
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateLastVisitedDate(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2347
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 2350
    :catch_6
    :cond_10
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->finish()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_12

    goto/16 :goto_16

    .line 2356
    :cond_11
    :try_start_e
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/Queries;->getIsCampaignRequired()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 2357
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    iget v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {v9, v13}, Lcom/conceptglobal/pmc/common/Queries;->getCampaignConfiguration(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_12

    if-ne v0, v9, :cond_12

    .line 2358
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isCapaignCompleatedForDraftActivity:Z

    if-nez v0, :cond_12

    .line 2359
    const-string v0, "Farmer Attendance Campaign is mandatory to complete the activity."

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAlertDialog(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    return-void

    :catch_7
    move-exception v0

    .line 2364
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2367
    :cond_12
    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_13

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignStatus:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    sget-boolean v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isCapaignCompleatedForDraftActivity:Z

    if-nez v0, :cond_14

    .line 2368
    const-string v0, "Farmer Attendance Campaign is in progress. First complete the campaign before finishing this activity."

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAlertDialog(Ljava/lang/String;)V

    return-void

    .line 2372
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->prepareAttributeData()V

    .line 2373
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isTableViewActivity:Z

    if-eqz v0, :cond_15

    .line 2374
    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    goto :goto_9

    .line 2375
    :cond_15
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isDynamicTableViewActivity:Z

    if-eqz v0, :cond_16

    .line 2376
    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    goto :goto_9

    .line 2378
    :cond_16
    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_12

    .line 2385
    :goto_9
    :try_start_10
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isTableViewActivity:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    .line 2386
    :goto_a
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1b

    .line 2387
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2388
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v9

    const/4 v13, 0x1

    if-ne v9, v13, :cond_1a

    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 2389
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 2390
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 2393
    :try_start_11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    :catch_8
    const/4 v4, 0x0

    .line 2397
    :goto_b
    :try_start_12
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    const-string v13, "mandatory value empty dropdown "

    if-ge v4, v9, :cond_18

    .line 2398
    :try_start_13
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    const-string v14, "Multiselect Dropdown"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 2399
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showErrorAlertDialog(Ljava/lang/String;)V

    .line 2400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 2404
    :cond_18
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v9, "Dropdown"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Please reselect "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " again"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAlertDialog(Ljava/lang/String;)V

    .line 2406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 2407
    invoke-static {v0, v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setFieldDataEmpty(IZ)V

    goto :goto_c

    .line 2409
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Please enter  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAlertDialog(Ljava/lang/String;)V

    .line 2410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mandatory value empty entry field "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2411
    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setFieldDataEmpty(IZ)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    :goto_c
    return-void

    :cond_1a
    const/4 v6, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    .line 2423
    :cond_1b
    :try_start_14
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 2424
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignIDList:Ljava/util/ArrayList;

    invoke-static {v14, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->total_CampaignIDs:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 2427
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2429
    :cond_1c
    :goto_d
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 2430
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    iget v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2431
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->deleteLastVisitDetails(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2433
    :cond_1d
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    iget v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    iget v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iget v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->packageId:I

    const/16 v38, 0x1

    const/16 v39, 0x1

    const-wide/16 v42, 0x0

    const/16 v44, 0x1

    move-object/from16 v35, v0

    move-object/from16 v36, v2

    move/from16 v37, v3

    move/from16 v40, v4

    move/from16 v41, v5

    move/from16 v45, v6

    move-object/from16 v46, v9

    move/from16 v47, v13

    invoke-static/range {v35 .. v47}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V

    .line 2434
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 2435
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2436
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2437
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    iget v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    iget v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v28, 0x1

    const-wide/16 v30, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v27, v4

    move/from16 v29, v5

    move/from16 v32, v6

    invoke-static/range {v22 .. v32}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsWithSequenceId(Ljava/util/List;Ljava/lang/String;IIIIIIJI)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c

    .line 2440
    :cond_1e
    :try_start_16
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 2441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2442
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2443
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2444
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 2446
    :cond_1f
    iget v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-direct {v1, v0, v8, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->addAudianceFarmerDetails(Ljava/util/List;Ljava/lang/String;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    goto :goto_f

    :catch_a
    move-exception v0

    .line 2449
    :try_start_17
    invoke-static {v12, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2451
    :cond_20
    :goto_f
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v22

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    const-wide/16 v26, 0x0

    move-object/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v4

    invoke-virtual/range {v22 .. v27}, Lcom/conceptglobal/pmc/common/Queries;->getchildDetailsActivity(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->updateChildTransactionDetails(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2452
    :goto_10
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 2453
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->images:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_21
    const/4 v0, 0x0

    .line 2456
    :goto_11
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->videos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 2457
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->videos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :catch_b
    move-exception v0

    .line 2418
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showErrorAlertDialog(Ljava/lang/String;)V

    .line 2419
    invoke-static {v5, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    return-void

    :catch_c
    move-exception v0

    .line 2461
    :try_start_18
    invoke-static {v12, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2465
    :cond_22
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    const v2, 0x7f100001

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2466
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_23
    move-object v0, v10

    .line 2468
    :goto_12
    iget v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    const/16 v3, 0x26

    if-eq v2, v3, :cond_25

    const/16 v3, 0x29

    if-eq v2, v3, :cond_25

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_25

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_25

    const/16 v3, 0x17

    if-ne v2, v3, :cond_24

    goto :goto_13

    .line 2478
    :cond_24
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12

    if-nez v2, :cond_28

    .line 2480
    :try_start_19
    const-string v21, ""

    iget v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    const-wide/16 v24, 0x0

    const/16 v22, 0x0

    move/from16 v23, v2

    move-object/from16 v26, v0

    invoke-static/range {v21 .. v26}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d

    goto :goto_14

    :catch_d
    move-exception v0

    .line 2482
    :try_start_1a
    invoke-static {v12, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 2469
    :cond_25
    :goto_13
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selCustomerId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    iget v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selSegmentID:I

    if-nez v2, :cond_27

    :cond_26
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_12

    if-nez v2, :cond_28

    .line 2471
    :cond_27
    :try_start_1b
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selCustomerId:Ljava/lang/String;

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selSegmentID:I

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    const-wide/16 v24, 0x0

    move-object/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v26, v0

    invoke-static/range {v21 .. v26}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    .line 2473
    :try_start_1c
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_12

    .line 2489
    :cond_28
    :goto_14
    :try_start_1d
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_29

    .line 2490
    iget v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    const-string v21, "false"

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->locationProvider:Ljava/lang/String;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->GPSTimeStamp:Ljava/lang/String;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileStartTime()Ljava/lang/String;

    move-result-object v24

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileEndTime()Ljava/lang/String;

    move-result-object v25

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSStartTime()Ljava/lang/String;

    move-result-object v26

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSEndTime()Ljava/lang/String;

    move-result-object v27

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->total_CampaignIDs:Ljava/lang/String;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tv_address:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v29

    const-wide/16 v19, 0x0

    move/from16 v18, v0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v28, v4

    invoke-static/range {v13 .. v29}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 2492
    :cond_29
    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentId:I

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v38

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v39

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    const-string v43, "false"

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->locationProvider:Ljava/lang/String;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->GPSTimeStamp:Ljava/lang/String;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileStartTime()Ljava/lang/String;

    move-result-object v46

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileEndTime()Ljava/lang/String;

    move-result-object v47

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSStartTime()Ljava/lang/String;

    move-result-object v48

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSEndTime()Ljava/lang/String;

    move-result-object v49

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->total_CampaignIDs:Ljava/lang/String;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tv_address:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v51

    const-wide/16 v41, 0x0

    move/from16 v35, v0

    move-object/from16 v36, v2

    move/from16 v40, v3

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v50, v6

    invoke-static/range {v35 .. v51}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f

    goto :goto_15

    :catch_f
    move-exception v0

    .line 2496
    :try_start_1e
    invoke-static {v12, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2497
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_12

    .line 2500
    :goto_15
    :try_start_1f
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateLastVisitedDate(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2501
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 2502
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_10

    .line 2510
    :catch_10
    :cond_2a
    :try_start_20
    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2512
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2513
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Service initiated"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 2514
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 2515
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_12

    .line 2519
    :cond_2b
    :try_start_21
    const-string v2, "ActivityTimeDetails"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_11

    .line 2522
    :catch_11
    :try_start_22
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    .line 2523
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2524
    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->startActivity(Landroid/content/Intent;)V

    .line 2525
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->finish()V

    goto :goto_16

    .line 2250
    :cond_2c
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveNCloseDialogInUFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAlertCancel(Ljava/lang/String;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    .line 2533
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    return-void
.end method

.method private saveTableAttributeData(I)Z
    .locals 5

    .line 2556
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fragmentsList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2557
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isTableViewActivity:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2558
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fragmentsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2559
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fragmentsList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    if-ne p1, v1, :cond_0

    .line 2561
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->prepareDataDraft()V

    .line 2562
    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->testMethod(I)V

    goto :goto_1

    .line 2564
    :cond_0
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isDataValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2565
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->prepareDataDraft()V

    .line 2566
    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->testMethod(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2569
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return v2

    .line 2573
    :cond_2
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isDynamicTableViewActivity:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 2574
    :goto_2
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fragmentsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2575
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fragmentsList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;

    if-ne p1, v1, :cond_3

    .line 2577
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->prepareDataDraft()V

    .line 2578
    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->testMethod(I)V

    goto :goto_3

    .line 2580
    :cond_3
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->isDataValid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2581
    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->testMethod(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2584
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private setActionBar()V
    .locals 4

    .line 460
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 461
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 462
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 463
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 464
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 465
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090591

    .line 466
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090581

    .line 467
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 468
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerDetailsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAdapter()V
    .locals 6

    .line 3442
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->images:Ljava/util/List;

    .line 3443
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lez v0, :cond_0

    .line 3444
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->images:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->imagelist:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v4, v5}, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    .line 3445
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3446
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->gridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3447
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 3448
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvpictures:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3450
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 3451
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvpictures:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3453
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getVideoDetaisQry_assignment_testimonial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->videos:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3454
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3455
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    sget-object v3, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->videos:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->videoList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5}, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->videoAdapter:Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    .line 3456
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3457
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mVideoGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->videoAdapter:Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3458
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 3459
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 3461
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 3462
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setBottomViewPadding(Landroid/widget/TabHost;)V
    .locals 1

    const p1, 0x7f09041e

    .line 3929
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private setDate_yearless(I)V
    .locals 2

    .line 3360
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3361
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3363
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3365
    const-string v1, "FarmerFormActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3367
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3368
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 447
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 448
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 449
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 450
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setLayoutData()V
    .locals 10

    .line 794
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvFarmer:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pmcFarmerInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnDealer:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_prefDealerInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnDiscription:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitDescInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etDiscription:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDescInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnSave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnInactive:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnVisit:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitCompleteButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 801
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnVisit:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 802
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnVisit:Landroid/widget/Button;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 803
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnVisit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 805
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x7f100001

    const-wide/16 v3, 0x0

    const-string v5, ""

    if-eqz v0, :cond_1

    .line 806
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {v6, v7, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryDraftQuery(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etDiscription:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getVisitDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLatitude()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLongitude()D

    move-result-wide v6

    cmpl-double v0, v6, v8

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLatitude:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLongitude:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    if-eqz v0, :cond_check_outlet_done

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_check_outlet_done

    const-string v7, "n/a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_check_outlet_done

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_check_outlet_done

    const-string v7, "0.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_check_outlet_done

    const-string v7, "Latitude"

    invoke-static {v6, v7}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->addNanoJitter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_check_outlet_done

    const-string v7, "Longitude"

    invoke-static {v6, v7}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->addNanoJitter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_check_outlet_done
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 819
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryNamesListQuery(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 820
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 821
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/TerritoryMaster;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/TerritoryMaster;->getTerritoryName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/TerritoryMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TerritoryMaster;->getTerritoryId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {v2, v5, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getEcexutionSegmentIdDraftQuery(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 828
    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selSegmentID:I

    .line 829
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityAssignmentId:I

    invoke-virtual {v2, v5, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getEcexutionSegmentValueDraftQuery(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selCustomerId:Ljava/lang/String;

    .line 830
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selSegmentID:I

    invoke-virtual {v3, v0, v4}, Lcom/conceptglobal/pmc/common/Queries;->getCustomerNameBySegmentValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 831
    iget v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selSegmentID:I

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3

    const/16 v1, 0x8

    if-ne v2, v1, :cond_4

    .line 832
    :cond_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->custDetailsText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 834
    :cond_4
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->custDetailsText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 837
    const-string v1, "FarmerFormActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 1395
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1396
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnInactive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1397
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnVisit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1398
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvRetailers:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1399
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnLatLng:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1400
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1401
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fullDetailsBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1402
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1452
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->territoryDetailsText:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$7;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1462
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->custDetailsText:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$8;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$8;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setListviewForAcreages()V
    .locals 3

    .line 1355
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listFarmerCrops:Ljava/util/List;

    .line 1357
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getCropsandAcreages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCropSelectionData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listFarmerCrops:Ljava/util/List;

    .line 1358
    new-instance v0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listFarmerCrops:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->adapterCrops:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    .line 1359
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lvCrops:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1361
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lvCrops:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/ListviewFillToParent;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listDealerCompanies:Ljava/util/List;

    .line 1364
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getCompaniesAndSales(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCompanySelectionData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listDealerCompanies:Ljava/util/List;

    .line 1365
    new-instance v0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listDealerCompanies:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->adapterCompany:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

    .line 1366
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lvCrops:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1368
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lvCrops:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/ListviewFillToParent;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTab(I)V
    .locals 2

    .line 3859
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 3860
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 3862
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :goto_0
    return-void
.end method

.method private settingData()V
    .locals 4

    .line 848
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 849
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mYear:I

    const/4 v1, 0x2

    .line 850
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mMonth:I

    const/4 v1, 0x5

    .line 851
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mDay:I

    .line 883
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitData:Ljava/util/List;

    const v1, 0x7f0902bf

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 887
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->addLastVisitAcitivityAttributes(Ljava/util/List;)V

    goto :goto_0

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvAlert:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitDetNotAvailText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private settingTabs()V
    .locals 4

    .line 591
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    const/4 v2, 0x0

    .line 592
    invoke-virtual {v0, v2}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 593
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 594
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_lastVisitTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100240

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080108

    invoke-direct {p0, v0, v3, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 596
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-eq v0, v2, :cond_0

    .line 597
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_customerDetailsTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10023c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08010b

    invoke-direct {p0, v0, v3, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 605
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_activityLastVisitText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10023e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080112

    invoke-direct {p0, v0, v3, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 606
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_finishTabSelfAssignText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10023f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080166

    invoke-direct {p0, v0, v3, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 607
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 608
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fullDetailsBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fullDetailsBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
    .locals 9

    .line 1846
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1847
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0c0056

    .line 1848
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f090193

    .line 1849
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropAccr:Landroid/widget/EditText;

    const v2, 0x7f0900b2

    .line 1850
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0900a8

    .line 1851
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f090192

    .line 1852
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropName:Landroid/widget/EditText;

    const v4, 0x7f090194

    .line 1853
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropDos:Landroid/widget/EditText;

    const v4, 0x7f0905a7

    .line 1854
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvCropid:Landroid/widget/TextView;

    .line 1855
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropAccr:Landroid/widget/EditText;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1856
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropAccr:Landroid/widget/EditText;

    new-array v5, v1, [Landroid/text/InputFilter;

    new-instance v6, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$DecimalDigitsInputFilter;

    const/4 v7, 0x6

    const/4 v8, 0x2

    invoke-direct {v6, p0, v7, v8}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;II)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v4, -0x777778

    .line 1857
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    if-eqz p3, :cond_0

    .line 1859
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v4, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-nez p4, :cond_1

    .line 1862
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropAccr:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1863
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 1865
    :cond_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropAccr:Landroid/widget/EditText;

    invoke-virtual {p3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1866
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {p3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1868
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_2

    .line 1869
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropName:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1870
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvCropid:Landroid/widget/TextView;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1871
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropAccr:Landroid/widget/EditText;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1873
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropName:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1874
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropAccr:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1876
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropAccr:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$9;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$9;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1898
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropDos:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$10;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$10;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1909
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->etCropName:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$11;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$11;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1924
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvCropid:Landroid/widget/TextView;

    new-instance p2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1970
    new-instance p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2008
    new-instance p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$14;

    invoke-direct {p1, p0, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$14;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Landroid/widget/Button;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2021
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2022
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2023
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2024
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2025
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showAlertCancel(Ljava/lang/String;I)V
    .locals 3

    .line 3116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3117
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$23;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$23;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3135
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$22;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$22;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3142
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3143
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 3866
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3867
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$36;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$36;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3874
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3875
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3876
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDiscardAlert()V
    .locals 3

    .line 3593
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3597
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardSelfAssignConfirmDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3599
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$30;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$30;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3607
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelVisitCompleteDialogButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$31;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$31;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3616
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3617
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3618
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showErrorAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 3881
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3882
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<font color=\'#ff0000\'>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$37;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$37;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3890
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3891
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3892
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showGoBackDialog()V
    .locals 4

    .line 3214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3215
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addCustomerGoBackDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$24;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$24;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3228
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$25;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$25;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3236
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3237
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 2229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2230
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$16;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$16;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2236
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2237
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2238
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showRemarkSelectionAlert()V
    .locals 6

    .line 3626
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getRemarkValues()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 3628
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->remarkNames:[Ljava/lang/String;

    .line 3629
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->remarkids:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3631
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 3632
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->remarkids:[Ljava/lang/String;

    aget-object v4, v0, v2

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 3633
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->remarkNames:[Ljava/lang/String;

    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3635
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3637
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectReasonDiscardTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3638
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->remarkNames:[Ljava/lang/String;

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3696
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->d_remarks:Landroid/app/Dialog;

    .line 3697
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3698
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->d_remarks:Landroid/app/Dialog;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$33;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$33;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private updateDisplay_yearless()V
    .locals 2

    .line 3348
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mFiledStr:Ljava/lang/String;

    .line 3349
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3351
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3353
    const-string v1, "FarmerFormActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3355
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setDate_yearless(I)V

    return-void
.end method

.method private validateCustomerInfo()V
    .locals 6

    .line 1486
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->validation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1487
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->cv:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1488
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->cv:Landroid/content/ContentValues;

    const-string v1, "serverupdatedstatus"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1490
    iget v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    const/4 v2, 0x0

    const-string v3, "\'"

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/16 v5, 0x8

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 1494
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->cv:Landroid/content/ContentValues;

    const-string v4, "StatusReason"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->cv:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ContactId =\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DealerMaster"

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1491
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->cv:Landroid/content/ContentValues;

    const-string v5, "Status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1492
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->cv:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RespondentNo =\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FarmerMaster"

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private validation()Z
    .locals 18

    move-object/from16 v1, p0

    .line 1504
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->cv:Landroid/content/ContentValues;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1507
    :goto_0
    :try_start_0
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_36

    .line 1511
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsTransactionEditable()I

    move-result v6

    if-ne v6, v3, :cond_35

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 1513
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v7, "\') and MobileNumber is NOT NULL and CustomerTypeID="

    const-string v8, "SELECT MobileNumber FROM DealerMaster where ContactId NOT IN(\'"

    const-string v9, "Distributor"

    const-string v10, "\') and Mobile is NOT NULL and TypeofFarmer="

    const-string v11, "Retailer"

    const-string v12, "Planter"

    const-string v13, "Farmer"

    const-string v14, "MobileNumber"

    const-string v15, "Email"

    const-string v2, "Mobile"

    const-string v3, ""

    move/from16 v16, v5

    const-string v5, " "

    move-object/from16 v17, v15

    if-eqz v6, :cond_1a

    .line 1514
    :try_start_1
    sget-object v6, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_1e

    .line 1517
    :cond_0
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 1518
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_emptyEditText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    :cond_1
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_1c

    .line 1521
    :cond_2
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    if-eqz v6, :cond_c

    .line 1523
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 1547
    :cond_3
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    .line 1548
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 1549
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v3, 0x0

    const/16 v16, 0x0

    goto/16 :goto_8

    .line 1554
    :cond_4
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1524
    :cond_5
    :goto_3
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_c

    .line 1526
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    .line 1528
    :cond_6
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x1

    goto :goto_6

    .line 1529
    :cond_8
    :goto_4
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto :goto_6

    .line 1527
    :cond_9
    :goto_5
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT Mobile FROM PMCTerritoryFarmerMaster where RespondentNo NOT IN(\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1532
    :goto_6
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v7

    if-eqz v6, :cond_a

    .line 1535
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1538
    :cond_a
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_b

    .line 1539
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1543
    :cond_b
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_7
    const/4 v3, 0x1

    .line 1560
    :goto_8
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Dropdown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1561
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_d

    .line 1562
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    const/16 v16, 0x0

    goto :goto_9

    :cond_d
    if-eqz v3, :cond_e

    .line 1567
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1572
    :cond_e
    :goto_9
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_12

    .line 1573
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v15, v17

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1574
    sget-object v6, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_f

    .line 1575
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_a
    const/4 v3, 0x0

    const/16 v16, 0x0

    goto/16 :goto_b

    :cond_f
    if-eqz v3, :cond_12

    .line 1580
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 1584
    :cond_10
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1585
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1586
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1587
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1588
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1589
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_11

    .line 1590
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_11
    if-eqz v3, :cond_12

    .line 1595
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1600
    :cond_12
    :goto_b
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    if-lez v6, :cond_15

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v6

    if-lez v6, :cond_15

    .line 1601
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1602
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1603
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v7

    .line 1604
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    if-le v6, v7, :cond_14

    add-int/2addr v8, v9

    if-lt v6, v8, :cond_13

    goto :goto_c

    :cond_13
    if-eqz v3, :cond_19

    .line 1610
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1606
    :cond_14
    :goto_c
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1616
    :cond_15
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    if-lez v6, :cond_17

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v6

    if-gtz v6, :cond_17

    .line 1617
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1618
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1619
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v7

    if-ge v6, v7, :cond_16

    .line 1622
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/16 v16, 0x0

    goto/16 :goto_d

    :cond_16
    if-eqz v3, :cond_19

    .line 1627
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1633
    :cond_17
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v6

    if-lez v6, :cond_19

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    if-gtz v6, :cond_19

    .line 1634
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1635
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1636
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v7

    if-le v6, v7, :cond_18

    .line 1639
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    goto :goto_e

    :cond_18
    if-eqz v3, :cond_19

    .line 1644
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_19
    :goto_d
    move/from16 v5, v16

    .line 1651
    :goto_e
    :try_start_2
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v3

    if-lez v3, :cond_1

    .line 1652
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1653
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1654
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v6

    .line 1655
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1656
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1657
    invoke-virtual {v6, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1658
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v15, v17

    .line 1665
    :try_start_3
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_31

    .line 1666
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    if-eqz v6, :cond_24

    .line 1667
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_10

    .line 1692
    :cond_1b
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    .line 1693
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v6, :cond_1c

    .line 1694
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_f
    const/4 v9, 0x0

    const/16 v16, 0x0

    goto/16 :goto_15

    .line 1699
    :cond_1c
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 1668
    :cond_1d
    :goto_10
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_24

    .line 1670
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_12

    .line 1672
    :cond_1e
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_20

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    goto :goto_11

    :cond_1f
    const/4 v9, 0x1

    goto :goto_13

    .line 1673
    :cond_20
    :goto_11
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto :goto_13

    .line 1671
    :cond_21
    :goto_12
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT Mobile FROM FarmerMaster where RespondentNo NOT IN(\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 1675
    :goto_13
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    if-eqz v9, :cond_22

    .line 1678
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1681
    :cond_22
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v6, :cond_23

    .line 1682
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1687
    :cond_23
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_24
    :goto_14
    const/4 v9, 0x1

    .line 1706
    :goto_15
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_28

    .line 1707
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1708
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1710
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_16
    const/4 v9, 0x0

    const/16 v16, 0x0

    goto/16 :goto_17

    :cond_25
    if-eqz v9, :cond_28

    .line 1715
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 1719
    :cond_26
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1720
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1721
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1722
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1723
    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1724
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_27

    .line 1725
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    :cond_27
    if-eqz v9, :cond_28

    .line 1730
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1737
    :cond_28
    :goto_17
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v3

    if-lez v3, :cond_2b

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v3

    if-lez v3, :cond_2b

    .line 1738
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1739
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1740
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    .line 1741
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    if-le v3, v6, :cond_2a

    add-int/2addr v7, v8

    if-lt v3, v7, :cond_29

    goto :goto_18

    :cond_29
    if-eqz v9, :cond_30

    .line 1748
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1743
    :cond_2a
    :goto_18
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_19
    const/16 v16, 0x0

    goto/16 :goto_1a

    :cond_2b
    const/4 v8, 0x1

    .line 1754
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v3

    if-lez v3, :cond_2d

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v3

    if-gtz v3, :cond_2d

    .line 1755
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1756
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1757
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    if-ge v3, v6, :cond_2c

    .line 1760
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    :cond_2c
    if-eqz v9, :cond_30

    .line 1765
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1772
    :cond_2d
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v3

    if-lez v3, :cond_30

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v3

    if-gtz v3, :cond_30

    .line 1773
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1774
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1775
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v6

    if-le v3, v6, :cond_2e

    .line 1778
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_numberText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    goto :goto_1b

    :cond_2e
    if-eqz v9, :cond_30

    .line 1783
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1a

    :cond_2f
    move/from16 v5, v16

    goto/16 :goto_22

    :cond_30
    :goto_1a
    move/from16 v5, v16

    .line 1790
    :goto_1b
    :try_start_4
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v3

    if-lez v3, :cond_32

    .line 1791
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1792
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1793
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v6

    .line 1794
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1795
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1796
    invoke-virtual {v6, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1797
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_31
    const/4 v8, 0x1

    move/from16 v5, v16

    .line 1805
    :cond_32
    :goto_1c
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    .line 1806
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "FarmerName"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "ContactName"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "RetailerShopName"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_1d

    .line 1809
    :cond_33
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->cv:Landroid/content/ContentValues;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 1807
    :cond_34
    :goto_1d
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->cv:Landroid/content/ContentValues;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/utils/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1f

    :catch_0
    move-exception v0

    goto :goto_20

    :catch_1
    move-exception v0

    move-object v2, v0

    move/from16 v5, v16

    goto :goto_21

    :cond_35
    move/from16 v16, v5

    :goto_1e
    const/4 v8, 0x1

    move/from16 v5, v16

    :goto_1f
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_36
    move/from16 v16, v5

    goto :goto_22

    :catch_2
    move-exception v0

    move/from16 v16, v5

    :goto_20
    move-object v2, v0

    .line 1815
    :goto_21
    const-string v3, "FarmerFormActivity"

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_37
    :goto_22
    return v5
.end method


# virtual methods
.method public GetData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;",
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;",
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;)V"
        }
    .end annotation

    .line 3254
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listAttributes_Assgnmt:Ljava/util/List;

    .line 3255
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    .line 3256
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    return-void
.end method

.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p14

    .line 1087
    iget v7, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mForOperations:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mForOperations:I

    .line 1088
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1089
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1090
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v10, v12, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0xa

    const/4 v11, 0x4

    const/4 v13, 0x0

    .line 1091
    invoke-virtual {v10, v9, v11, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1092
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    .line 1094
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1097
    iget v10, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->layoutId:I

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1099
    new-instance v10, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-direct {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1104
    sget-object v11, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    const v14, 0x7f11015b

    invoke-virtual {v10, v11, v14}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1105
    invoke-virtual {v10, v9}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setGravity(I)V

    const/4 v9, 0x5

    .line 1106
    invoke-virtual {v10, v9, v13, v13, v13}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setPadding(IIII)V

    if-eqz v3, :cond_1

    .line 1109
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    const-string v11, "1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "true"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1111
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1114
    :cond_1
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    :goto_0
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1117
    iget v3, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mForDates:I

    add-int/2addr v3, v8

    iput v3, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mForDates:I

    .line 1127
    const-string v3, "Dropdown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v11, "Number"

    const-string v14, "Email"

    const-string v15, "Decimal"

    const-string v12, "Numeric Field"

    const-string v9, "Datepicker_MMDD"

    const-string v8, "Datepicker"

    const/16 v16, 0x0

    const-string v13, "textbox"

    if-eqz v3, :cond_3

    .line 1128
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1129
    const-string v3, "operation"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1130
    iget v3, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mForOperations:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    .line 1131
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v3, 0x7f080096

    .line 1132
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1133
    iget-object v3, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    .line 1134
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v5, 0x11

    .line 1135
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const v5, 0x7f0800d7

    .line 1136
    invoke-virtual {v1, v3, v3, v5, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_2

    .line 1138
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_2
    move-object v3, v1

    move-object/from16 p11, v7

    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v5, v1

    :goto_1
    move-object v6, v5

    :goto_2
    move-object v7, v6

    :goto_3
    move-object v9, v7

    goto/16 :goto_9

    .line 1141
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 p11, v7

    if-eqz v3, :cond_5

    .line 1142
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1143
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1145
    iget v1, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 1146
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 1147
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v1, 0x7f080096

    .line 1148
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1149
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1150
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v1, 0x1

    if-eq v6, v1, :cond_4

    .line 1153
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_4
    :goto_4
    move-object v5, v3

    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v6, v3

    goto :goto_2

    .line 1156
    :cond_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1157
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1158
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1159
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1160
    iget v1, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 1161
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f080096

    .line 1162
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 1163
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1164
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->datesListenerYearless:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1165
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 1167
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_4

    :cond_6
    const/4 v7, 0x1

    .line 1170
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v7, "b"

    if-eqz v3, :cond_8

    .line 1171
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1172
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1173
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1174
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1175
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v5, 0x2

    .line 1176
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1177
    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v7, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v7, v5, v3

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v3, 0x5

    .line 1178
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_7

    .line 1180
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_7
    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v3, v16

    :goto_5
    move-object v5, v3

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x1

    .line 1183
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_b

    .line 1184
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1185
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1186
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f080096

    .line 1187
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v3, 0x11

    .line 1188
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 1189
    const-string v3, "RespondentNo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1190
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 1191
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1192
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    move-object/from16 v17, v9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1194
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v17, v9

    const/16 v9, 0x32

    invoke-direct {v3, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v7, v1

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v1, 0x5

    .line 1195
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_6
    const/4 v1, 0x1

    if-eq v6, v1, :cond_a

    .line 1198
    invoke-direct {v0, v5}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_a
    move-object v6, v5

    :goto_7
    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v7, v5

    goto/16 :goto_3

    :cond_b
    move-object/from16 v17, v9

    .line 1200
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1201
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1202
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1203
    const-string v5, "d"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1204
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1205
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x2002

    .line 1206
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_c

    .line 1209
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_c
    move-object v7, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v9, v6

    goto/16 :goto_9

    .line 1211
    :cond_d
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1212
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1213
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1214
    const-string v5, "e"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1215
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1216
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x20

    .line 1217
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_e

    .line 1220
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_e
    move-object v9, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    goto :goto_9

    .line 1222
    :cond_f
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1223
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1224
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1225
    const-string v7, "n"

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v7, 0x7f080096

    .line 1226
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v7, 0x11

    .line 1227
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v7, 0x2

    .line 1228
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    if-lez v5, :cond_10

    .line 1230
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    .line 1232
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v9, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_8
    const/4 v3, 0x5

    .line 1234
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_11

    .line 1236
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_11
    move-object v6, v1

    goto/16 :goto_7

    :cond_12
    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    goto/16 :goto_5

    .line 1240
    :goto_9
    new-instance v11, Landroid/widget/EditText;

    invoke-direct {v11, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1241
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v9

    const v9, 0x3f19999a    # 0.6f

    move-object/from16 p5, v14

    const/4 v14, -0x1

    invoke-direct {v0, v14, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1242
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p1, v7

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v9, v14, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1243
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    invoke-direct {v7, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1244
    invoke-virtual {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1245
    invoke-virtual {v11, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1246
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "DropDown"

    if-eqz v0, :cond_13

    .line 1247
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    move-object/from16 v14, p1

    move-object/from16 v9, p11

    move-object/from16 p1, v11

    move-object/from16 v0, v17

    :goto_b
    move-object/from16 v11, p3

    goto/16 :goto_f

    .line 1248
    :cond_13
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1249
    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 1250
    :cond_14
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1251
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_15
    move-object/from16 v0, v17

    .line 1252
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1253
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c
    move-object/from16 v14, p1

    :goto_d
    move-object/from16 v9, p11

    move-object/from16 p1, v11

    goto :goto_b

    .line 1254
    :cond_16
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_17

    .line 1255
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    .line 1256
    :cond_17
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v14, p1

    .line 1257
    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_18
    move-object/from16 v14, p1

    .line 1258
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 p1, v11

    if-eqz v17, :cond_19

    move-object/from16 v11, p5

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 v11, v16

    if-eqz v17, :cond_1a

    .line 1259
    invoke-virtual {v11, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v9, p11

    goto :goto_b

    :cond_19
    move-object/from16 v11, v16

    .line 1260
    :cond_1a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1b

    move-object/from16 v16, v11

    move-object/from16 v11, p3

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 1261
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_1b
    move-object/from16 v16, v11

    move-object/from16 v11, p3

    :cond_1c
    :goto_e
    move-object/from16 v9, p11

    .line 1263
    :goto_f
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1264
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 1265
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_10
    move-object/from16 p3, v11

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    :goto_11
    move-object/from16 v11, p13

    goto/16 :goto_13

    .line 1266
    :cond_1d
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 1267
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1268
    :cond_1e
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 1269
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1270
    :cond_1f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 1271
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1272
    :cond_20
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_21

    .line 1273
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1274
    :cond_21
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 1275
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1276
    :cond_22
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_23

    move-object/from16 v17, v14

    move-object/from16 v14, p5

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 v14, v16

    if-eqz v18, :cond_24

    .line 1277
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12

    :cond_23
    move-object/from16 v17, v14

    move-object/from16 v14, v16

    .line 1278
    :cond_24
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    .line 1279
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_25
    :goto_12
    move-object/from16 p3, v11

    goto :goto_11

    .line 1281
    :goto_13
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v9, p0

    .line 1282
    iget-object v11, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mattributesnamesArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    iget-object v10, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds:Ljava/util/ArrayList;

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 1285
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 1286
    :cond_26
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1287
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1288
    :cond_27
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1289
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1290
    :cond_28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1291
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1292
    :cond_29
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    .line 1293
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1294
    :cond_2a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1295
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1296
    :cond_2b
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1297
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1298
    :cond_2c
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1299
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    :cond_2d
    :goto_14
    iget v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->layoutId:I

    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getFragmentsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 3262
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fragmentsList:Ljava/util/List;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 3000
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 p2, 0x65

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 3042
    :cond_0
    const-string p1, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Navigation"

    const-string v1, "Image Capture End"

    invoke-static {v0, v1, p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_a

    .line 3046
    const-string p1, "ImagePath"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->imagePath:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 3005
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERNAME()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERNAME()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 3006
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERNAME()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setRetailerName(Ljava/lang/String;)V

    .line 3007
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERNAME()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(null)"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setRetailerName(Ljava/lang/String;)V

    .line 3008
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvRetailers:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getRetailerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3010
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 3011
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setRetailerId(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 3020
    const-string p1, "FarmerId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3021
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selCustomerId:Ljava/lang/String;

    .line 3023
    :cond_4
    const-string p2, "SegmentId"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 3024
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selSegmentID:I

    .line 3026
    :cond_5
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selCustomerId:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    iget p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selSegmentID:I

    if-eqz p2, :cond_6

    .line 3028
    :try_start_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->custDetailsText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FarmerName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3030
    const-string p3, "MBAACTIVITY"

    invoke-static {p3, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3033
    :cond_6
    :goto_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 3034
    const-string p3, "FARMER_SELECTED"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3035
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->selCustomerId:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3036
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_7
    const/4 p1, -0x1

    if-eq p2, p1, :cond_9

    if-eqz p2, :cond_8

    goto :goto_1

    .line 3059
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 3054
    :cond_9
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fetchLocation()V

    :cond_a
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const-string v0, "select Sanitized from FarmerMaster where RespondentNo= \'"

    .line 2037
    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 2038
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x2

    const-string v2, "farmerId"

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 2091
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xa

    .line 2092
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 2130
    :sswitch_1
    iget p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    const-string v3, "farmerType"

    const-string v6, "fromTransaction"

    const-string v7, "SegmentId"

    if-ne p1, v5, :cond_1

    .line 2132
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2133
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2134
    const-string p1, "The Farmer Is Unsanitized, You Can\'t Edit. "

    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2138
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2140
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2141
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2142
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2143
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2144
    const-string v0, "Farmer"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2145
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_1
    if-ne p1, v4, :cond_2

    .line 2147
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2148
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2149
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2150
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2151
    const-string v0, "Planter"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2152
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_2
    if-ne p1, v1, :cond_3

    .line 2154
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2155
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2156
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2157
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2158
    const-string v0, "Retailer"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2159
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 2161
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2162
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2163
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2164
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2165
    const-string v0, "Distributor"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2166
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2123
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2124
    const-string v0, "activityId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2125
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x65

    .line 2126
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 2074
    :sswitch_3
    iget p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    const/16 v0, 0x26

    if-eq p1, v0, :cond_5

    const/16 v0, 0x29

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_5

    const/16 v0, 0x17

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 2081
    :cond_4
    invoke-direct {p0, v5}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isValidData(Z)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-direct {p0, v5}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->saveTableAttributeData(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2082
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->checkTerritorydetails()Z

    move-result p1

    if-ne p1, v5, :cond_d

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->checkImagesMandatory()Z

    move-result p1

    if-ne p1, v5, :cond_d

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->checkVideoMandatory()Z

    move-result p1

    if-ne p1, v5, :cond_d

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->checkAllMandatoryImages()Z

    move-result p1

    if-ne p1, v5, :cond_d

    .line 2083
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_confirmVisitCompleteDialogText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAlertCancel(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2075
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->checkCustomerDetails()Z

    move-result p1

    if-ne p1, v5, :cond_d

    invoke-direct {p0, v5}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isValidData(Z)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-direct {p0, v5}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->saveTableAttributeData(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2076
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->checkTerritorydetails()Z

    move-result p1

    if-ne p1, v5, :cond_d

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->checkImagesMandatory()Z

    move-result p1

    if-ne p1, v5, :cond_d

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->checkVideoMandatory()Z

    move-result p1

    if-ne p1, v5, :cond_d

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->checkAllMandatoryImages()Z

    move-result p1

    if-ne p1, v5, :cond_d

    .line 2077
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_confirmVisitCompleteDialogText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAlertCancel(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2044
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->saveDataIntoDataBase(I)V

    goto/16 :goto_2

    .line 2048
    :sswitch_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/Queries;->getIsLatLongMandatory(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v5, :cond_7

    .line 2049
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_7

    .line 2050
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2051
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2052
    const-string p1, "Please take Latitude and Longitude "

    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2053
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$15;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2063
    :cond_7
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isTableViewActivity:Z

    if-eqz p1, :cond_8

    .line 2064
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    goto :goto_1

    .line 2065
    :cond_8
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isDynamicTableViewActivity:Z

    if-eqz p1, :cond_9

    .line 2066
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    goto :goto_1

    .line 2068
    :cond_9
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    .line 2070
    :goto_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showDiscardAlert()V

    goto/16 :goto_2

    .line 2096
    :sswitch_6
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fetchLocation()V

    goto/16 :goto_2

    .line 2040
    :sswitch_7
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V

    goto/16 :goto_2

    .line 2171
    :sswitch_8
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2172
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnViewHistory:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Show History"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const v1, 0x7f0902bf

    if-eqz p1, :cond_a

    .line 2173
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnViewHistory:Landroid/widget/Button;

    const-string v0, "Back"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2174
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2175
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2176
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2177
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2178
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 2179
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v5}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 2180
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFormData()V

    .line 2181
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlLastVisitHistory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 2205
    :cond_a
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnViewHistory:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2206
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2207
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->lastVisitData:Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 2208
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2209
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2211
    :cond_b
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2212
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2219
    :cond_c
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100153

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showNoInternetDialog(Ljava/lang/String;)V

    :cond_d
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09008c -> :sswitch_8
        0x7f090090 -> :sswitch_7
        0x7f0900a1 -> :sswitch_6
        0x7f0900a5 -> :sswitch_5
        0x7f0900b4 -> :sswitch_4
        0x7f0900c4 -> :sswitch_3
        0x7f090239 -> :sswitch_2
        0x7f090445 -> :sswitch_1
        0x7f090575 -> :sswitch_0
    .end sparse-switch
.end method

.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 3245
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3246
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 0

    .line 3269
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setAdapter()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "TODO Start --"

    .line 305
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0041

    .line 309
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setContentView(I)V

    .line 310
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-lt p1, v1, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x7f060052

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 312
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Z)V

    .line 314
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 317
    invoke-static {p1, v2, v2}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;II)V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x7f060051

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 324
    :cond_1
    sput-object p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    .line 325
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/PMCApplication;

    .line 327
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 328
    const-string p1, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Navigation"

    const-string v5, "onCreate"

    invoke-static {v4, v5, p1, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sput v3, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->currentActivityAssignmentId:I

    .line 330
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->initialization()V

    .line 331
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setBottomViewPadding(Landroid/widget/TabHost;)V

    .line 332
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getData()V

    .line 333
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->settingTabs()V

    .line 334
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setLayoutData()V

    .line 335
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->settingData()V

    .line 336
    iget p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    const/16 v1, 0x12

    const/16 v4, 0xa

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    if-eq p1, v1, :cond_2

    .line 337
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->createOperationAttributes()V

    .line 338
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 340
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 342
    :goto_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setListeners()V

    .line 343
    iget p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->segmentId:I

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_3

    if-eq p1, v1, :cond_3

    .line 344
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->bindOperations()V

    .line 345
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->gridView:Landroid/widget/GridView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0901de

    .line 351
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 352
    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {p1, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901df

    .line 363
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fab2:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 365
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/common/Queries;->getVideoIsMandatory(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_5

    const-wide/16 v6, 0x2

    cmp-long p1, v4, v6

    if-nez p1, :cond_4

    goto :goto_1

    .line 369
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fab2:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    goto :goto_2

    .line 367
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fab2:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    invoke-virtual {p1, v3}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 372
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fab2:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    invoke-virtual {p1, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->message:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "send"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 397
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->datasaveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "DataSaved"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 398
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 399
    const-string v1, "Campaign_FARMERS_List"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->camaigndata_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 410
    :try_start_1
    const-string v4, "ActivityTimeDetails"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    .line 413
    :goto_3
    iget p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->activityId:I

    const/16 v0, 0x26

    if-eq p1, v0, :cond_6

    const/16 v0, 0x29

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_6

    const/16 v0, 0x17

    if-ne p1, v0, :cond_7

    .line 414
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->custDetailsText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->btnCustomerDetails:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2703
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$19;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mDay:I

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$19;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2711
    const-string v0, "Select Day-Month"

    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2714
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "year"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2716
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 2718
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1

    .line 2701
    :cond_2
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mYear:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mMonth:I

    iget v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mDay:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 2944
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024c

    .line 2945
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->miDraft:Landroid/view/MenuItem;

    .line 2946
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2947
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->miDraft:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2948
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 4

    .line 3709
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3710
    const-string v0, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onDestroy"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->datasaveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3712
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->camaigndata_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3713
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->isDraftSave:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignStatus:Ljava/lang/String;

    const-string v1, "Completed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3714
    new-instance v0, Landroid/content/Intent;

    const-string v1, "CLOSE_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3715
    const-string v1, "campaignId"

    sget-object v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3716
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 3718
    :cond_0
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2932
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getAcreages()F

    move-result p2

    iget-object p4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p4}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getDos()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropId()I

    move-result p3

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2959
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2966
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->saveDataIntoDataBase(I)V

    .line 2969
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 2961
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showGoBackDialog()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2975
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2976
    const-string p2, "onRequestPermissionResult"

    const-string v0, "FarmerFormActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 2978
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 2981
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2982
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 2984
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->fetchLocation()V

    goto :goto_0

    .line 2987
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 990
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1004
    :try_start_0
    const-string v0, "edit_text_id_values_2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1008
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1009
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1010
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1013
    :cond_0
    const-string p1, "FarmerFormActivity"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 3585
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 3586
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start FForm resume "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    const-string v0, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onResume/CaptureEnd"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setAdapter()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 954
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 969
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 972
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 973
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 974
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 978
    :cond_0
    const-string v2, "edit_text_id_values_2"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 979
    const-string p1, "FarmerFormActivity"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 982
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
