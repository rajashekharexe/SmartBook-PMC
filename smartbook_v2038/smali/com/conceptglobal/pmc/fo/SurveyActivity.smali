.class public Lcom/conceptglobal/pmc/fo/SurveyActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "SurveyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;
.implements Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;
.implements Lcom/conceptglobal/pmc/utils/CompressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/SurveyActivity$DecimalDigitsInputFilter;
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

.field private static final TAG:Ljava/lang/String; = "SurveyActivity"

.field private static final TODO_TAG:Ljava/lang/String; = "TODO"

.field public static context:Landroid/content/Context;


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

.field private btnDealer:Landroid/widget/Button;

.field private btnDiscription:Landroid/widget/Button;

.field private btnInactive:Landroid/widget/Button;

.field private btnLatLng:Landroid/widget/ImageView;

.field private btnSave:Landroid/widget/Button;

.field private btnTerritoryDetails:Landroid/widget/Button;

.field btnViewHistory:Landroid/widget/Button;

.field private btnVisit:Landroid/widget/Button;

.field private consentflag:I

.field private custDetailsText:Landroid/widget/TextView;

.field private cv:Landroid/content/ContentValues;

.field protected d_remarks:Landroid/app/Dialog;

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

.field private intentGetData:Landroid/content/Intent;

.field private isDynamicTableViewActivity:Z

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

.field private scrollView:Landroid/widget/ScrollView;

.field private segmentId:I

.field private segmentName:Ljava/lang/String;

.field private selCustomerId:Ljava/lang/String;

.field private selSegmentID:I

.field private slLastVistdata:Landroid/widget/ScrollView;

.field private tabHost:Landroid/widget/TabHost;

.field private tag:Ljava/lang/String;

.field private territoryDetailsText:Landroid/widget/TextView;

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
.method public constructor <init>()V
    .locals 4

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 150
    const-string v0, "SurveyActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->dateDialogID:I

    .line 163
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    .line 164
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->packageId:I

    const/4 v2, 0x0

    .line 201
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->hAttributes:Ljava/util/HashMap;

    .line 204
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->selCustomerId:Ljava/lang/String;

    .line 205
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentName:Ljava/lang/String;

    .line 217
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    .line 220
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->layoutId:I

    const/4 v3, -0x1

    .line 221
    iput v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mForOperations:I

    iput v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mForDates:I

    .line 230
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->datePos:I

    .line 233
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mFiledStr:Ljava/lang/String;

    .line 234
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->updateDOS:Ljava/lang/String;

    .line 264
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isMIActivity:Z

    .line 265
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isTableViewActivity:Z

    .line 266
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isDynamicTableViewActivity:Z

    .line 267
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->locationProvider:Ljava/lang/String;

    .line 271
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->GPSTimeStamp:Ljava/lang/String;

    .line 272
    new-instance v0, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 835
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyActivity$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLatitudeListener:Landroid/text/TextWatcher;

    .line 1201
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyActivity$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$5;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->operationListener:Landroid/view/View$OnClickListener;

    .line 2357
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyActivity$17;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$17;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->datesListener:Landroid/view/View$OnClickListener;

    .line 2367
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyActivity$18;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$18;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->datesListenerYearless:Landroid/view/View$OnClickListener;

    .line 2701
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyActivity$21;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$21;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    .line 2930
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyActivity$26;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$26;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2963
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyActivity$27;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$27;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 3099
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyActivity$28;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$28;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/util/List;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/SurveyActivity;J)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->captureImage(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isMIActivity:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isTableViewActivity:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isDynamicTableViewActivity:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropDos:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->dateDialogID:I

    return p0
.end method

.method static synthetic access$1502(Lcom/conceptglobal/pmc/fo/SurveyActivity;I)I
    .locals 0

    .line 146
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->dateDialogID:I

    return p1
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Lcom/conceptglobal/pmc/common/Queries;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvCropid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropAccr:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/util/List;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->videos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setListviewForAcreages()V

    return-void
.end method

.method static synthetic access$2402(Lcom/conceptglobal/pmc/fo/SurveyActivity;I)I
    .locals 0

    .line 146
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->datePos:I

    return p1
.end method

.method static synthetic access$2502(Lcom/conceptglobal/pmc/fo/SurveyActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->txt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setAdapter()V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/SurveyActivity;I)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->saveDataIntoDataBase(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/SurveyActivity;J)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->captureVideo(J)V

    return-void
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mYear:I

    return p0
.end method

.method static synthetic access$3002(Lcom/conceptglobal/pmc/fo/SurveyActivity;I)I
    .locals 0

    .line 146
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mYear:I

    return p1
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mMonth:I

    return p0
.end method

.method static synthetic access$3102(Lcom/conceptglobal/pmc/fo/SurveyActivity;I)I
    .locals 0

    .line 146
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mDay:I

    return p0
.end method

.method static synthetic access$3202(Lcom/conceptglobal/pmc/fo/SurveyActivity;I)I
    .locals 0

    .line 146
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mDay:I

    return p1
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->updateDisplay_yearless()V

    return-void
.end method

.method static synthetic access$3402(Lcom/conceptglobal/pmc/fo/SurveyActivity;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isImageDeleted:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showRemarkSelectionAlert()V

    return-void
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->prepareAttributeData()V

    return-void
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/util/List;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    return p0
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentId:I

    return p0
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    return p0
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->packageId:I

    return p0
.end method

.method static synthetic access$4400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)[Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->remarkNames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etDiscription:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->locationProvider:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->GPSTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/conceptglobal/pmc/fo/SurveyActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->GPSTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArrIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TabHost;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/view/MenuItem;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->miDraft:Landroid/view/MenuItem;

    return-object p0
.end method

.method private addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 807
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 808
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 809
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 810
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0xa

    const/4 v6, 0x4

    .line 811
    invoke-virtual {v2, v4, v6, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 812
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 816
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 817
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x3

    .line 819
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, -0x1000000

    .line 820
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 821
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 822
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 824
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 825
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 827
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setGravity(I)V

    const p2, 0x7f0800e2

    .line 828
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 829
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 830
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, p1, p2, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 831
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 832
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->llLastvisitBody:Landroid/widget/LinearLayout;

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

    .line 794
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 795
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
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

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 801
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 802
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    .line 548
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 549
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const v3, 0x7f0c0135

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090459

    .line 550
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 551
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090230

    .line 552
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 553
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 554
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 555
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const p2, 0x7f090414

    if-eqz p1, :cond_0

    .line 556
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_2

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f090415

    .line 558
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_2

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 561
    :try_start_0
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isMIActivity:Z
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

    .line 562
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    sget-object v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    const-class v10, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {p1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 563
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 565
    iget v9, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 566
    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityName:Ljava/lang/String;

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    iget v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentId:I

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 569
    iget v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 570
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 573
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 574
    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 575
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 577
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_2

    .line 579
    :cond_2
    new-instance p1, Landroid/content/Intent;

    sget-object v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    const-class v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-direct {p1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 581
    :try_start_2
    iget-boolean v9, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isTableViewActivity:Z

    if-eqz v9, :cond_3

    .line 582
    new-instance v9, Landroid/content/Intent;

    sget-object v10, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    const-class v11, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    move-object p1, v9

    goto :goto_1

    .line 583
    :cond_3
    iget-boolean v9, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isDynamicTableViewActivity:Z

    if-eqz v9, :cond_4

    .line 584
    new-instance v9, Landroid/content/Intent;

    sget-object v10, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    const-class v11, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    .line 587
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 589
    :cond_4
    :goto_1
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    iget v9, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityName:Ljava/lang/String;

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    iget v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentId:I

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    iget v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 596
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 598
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 599
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 600
    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 601
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 603
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 606
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 607
    const-string p2, "SurveyActivity"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 611
    :cond_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10023f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f090417

    .line 612
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_2

    .line 613
    :cond_6
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100240

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f090418

    .line 614
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_2

    .line 616
    :cond_7
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 618
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private bindOperations()V
    .locals 11

    .line 1134
    const-string v0, "TerritoryMaster"

    const-string v1, "FarmerMaster"

    const-string v2, "DealerMaster"

    const-string v3, "SurveyActivity"

    :try_start_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->bindQuery:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerOrRetailerBindDataDynamic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mentryValues:Ljava/util/List;

    .line 1136
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    .line 1137
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1138
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropdown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1139
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

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

    .line 1142
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerShopName"

    const-string v9, "ContactId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mentryValues:Ljava/util/List;

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

    .line 1144
    :try_start_2
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1145
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1147
    :cond_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

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

    .line 1149
    :try_start_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "FarmerName"

    const-string v9, "RespondentNo"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mentryValues:Ljava/util/List;

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

    .line 1151
    :try_start_4
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1152
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1154
    :cond_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

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

    .line 1156
    :try_start_5
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "territoryName"

    const-string v9, "territoryId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mentryValues:Ljava/util/List;

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

    .line 1158
    :try_start_6
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1161
    :cond_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1164
    :cond_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mentryValues:Ljava/util/List;

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

    .line 1169
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private captureImage(J)V
    .locals 5

    .line 3006
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    .line 3007
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->setPictureReportingContext(Landroid/content/Context;)V

    .line 3008
    const-string v0, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "Image Capture Click"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3010
    const-string v1, "activityId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3011
    const-string v1, "assignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3013
    :try_start_0
    const-string v1, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "Survey"

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

    .line 3015
    const-string v2, "SurveyActivity"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3016
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3018
    :goto_0
    iget v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setReferenceID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3019
    const-string v1, "attributeId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3020
    const-string v1, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3021
    const-string v1, "imageId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3022
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private captureVideo(J)V
    .locals 3

    .line 3290
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    const-class v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3291
    const-string p2, "activityId"

    iget v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3292
    const-string p2, "assignmentId"

    iget v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3294
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

    .line 3296
    const-string v0, "SurveyActivity"

    invoke-static {v0, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3297
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3299
    :goto_0
    iget p2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "setReferenceID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3300
    const-string p2, "attributeId"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3301
    const-string p2, "farmerId"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3302
    const-string p2, "imageId"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3303
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private checkImagesMandatory()Z
    .locals 6

    const/4 v0, 0x0

    .line 3259
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getImageIsMandatoryInSurvey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3260
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3261
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 3267
    const-string v2, "SurveyActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkTerritorydetails()Z
    .locals 4

    const/4 v0, 0x0

    .line 3246
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    const v2, 0x7f100001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

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

    .line 3247
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 3251
    const-string v2, "SurveyActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkVideoMandatory()Z
    .locals 6

    const/4 v0, 0x1

    .line 3275
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getVideoIsMandatoryInSurvey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3276
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3277
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 3283
    const-string v2, "SurveyActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private createOperationAttributes()V
    .locals 23

    move-object/from16 v15, p0

    const v0, 0x7f090335

    .line 852
    invoke-virtual {v15, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    .line 853
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->hAttributes:Ljava/util/HashMap;

    .line 854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mattributesnamesArr:Ljava/util/ArrayList;

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mOprDatesArr:Ljava/util/ArrayList;

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    .line 857
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntrySpinnerArr:Ljava/util/ArrayList;

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArrIds:Ljava/util/ArrayList;

    .line 860
    iget v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

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

    .line 863
    :cond_1
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    goto :goto_1

    .line 861
    :cond_2
    :goto_0
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    .line 866
    :cond_3
    :goto_1
    iget v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    if-eq v0, v11, :cond_7

    if-eq v0, v13, :cond_6

    if-eq v0, v14, :cond_5

    if-eq v0, v12, :cond_4

    goto :goto_2

    .line 878
    :cond_4
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Planter"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 875
    :cond_5
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Distributor"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 872
    :cond_6
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 869
    :cond_7
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    .line 883
    :goto_2
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 886
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-lez v10, :cond_8

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_8

    .line 890
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    .line 891
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v8

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v16

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v17

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v18

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v19

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    iget-object v11, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

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

    .line 890
    invoke-virtual/range {v0 .. v14}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;I)V

    .line 892
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

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

    .line 897
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_5

    .line 900
    :cond_9
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 901
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 902
    iget v1, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

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

    .line 905
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from DealerMaster where contactId =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->bindQuery:Ljava/lang/String;

    goto :goto_5

    .line 903
    :cond_c
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from FarmerMaster where RespondentNo =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SurveyActivity;->bindQuery:Ljava/lang/String;

    :cond_d
    :goto_5
    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 3308
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3309
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 3312
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$33;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$33;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    const-string v2, "SurveyActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData()V
    .locals 5

    .line 628
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 629
    const-string v1, "MODELCLASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 630
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    .line 631
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    .line 633
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentId:I

    .line 634
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityName:Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    .line 636
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    .line 637
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "PackageId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->packageId:I

    .line 638
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentName:Ljava/lang/String;

    .line 640
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v0

    const/4 v1, 0x2

    const-string v3, ")"

    const-string v4, "Survey Details("

    if-eq v0, v1, :cond_0

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 645
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 648
    :goto_0
    new-instance v0, Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    .line 652
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    invoke-virtual {v1, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getLastvistFarmerData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLastVistData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitData:Ljava/util/List;

    .line 653
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 662
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setRespondentNo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 664
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setRespondentNo(Ljava/lang/String;)V

    .line 665
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 667
    :goto_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getSurveyAssignmentVisitDetail(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAssignmentVisitDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    .line 669
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getQueryActivityType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 670
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isMIActivity:Z

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getSurveyActivityDisplayType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 673
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 674
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isTableViewActivity:Z

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    .line 675
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 676
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isDynamicTableViewActivity:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 680
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private initialization()V
    .locals 3

    .line 409
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->intentGetData:Landroid/content/Intent;

    .line 410
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 411
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->dynamicColumnnames:Ljava/lang/StringBuilder;

    const v0, 0x7f09041e

    .line 413
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->images:Ljava/util/List;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->videos:Ljava/util/List;

    .line 419
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etLeasedin:Landroid/widget/EditText;

    .line 420
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etTotalLandHolding:Landroid/widget/EditText;

    .line 421
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etLeasedout:Landroid/widget/EditText;

    .line 422
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090197

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCultivated:Landroid/widget/EditText;

    .line 423
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvAddCrop:Landroid/widget/TextView;

    .line 424
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0902d8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lvCrops:Landroid/widget/ListView;

    .line 426
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09052b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvFarmer:Landroid/widget/TextView;

    .line 427
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09051c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnDealer:Landroid/widget/Button;

    .line 428
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090521

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnDiscription:Landroid/widget/Button;

    .line 429
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09019a

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etDiscription:Landroid/widget/EditText;

    .line 430
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090502

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvIsBayerFarmer:Landroid/widget/TextView;

    .line 431
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090575

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvRetailers:Landroid/widget/TextView;

    .line 434
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnSave:Landroid/widget/Button;

    const/16 v1, 0x8

    .line 435
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0900a5

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnInactive:Landroid/widget/Button;

    .line 437
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnVisit:Landroid/widget/Button;

    const v0, 0x7f0902de

    .line 439
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lvLastVisitData:Landroid/widget/ListView;

    const v0, 0x7f0902a7

    .line 440
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->llLastvisitBody:Landroid/widget/LinearLayout;

    const v0, 0x7f090409

    .line 441
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->slLastVistdata:Landroid/widget/ScrollView;

    .line 442
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnLatLng:Landroid/widget/ImageView;

    .line 443
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09054d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLatitude:Landroid/widget/TextView;

    .line 444
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090556

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLongitude:Landroid/widget/TextView;

    .line 445
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090352

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvpictures:Landroid/widget/TextView;

    .line 446
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0905ec

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvVideos:Landroid/widget/TextView;

    .line 471
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0905c0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 472
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f090084

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnTerritoryDetails:Landroid/widget/Button;

    .line 474
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f090600

    .line 475
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->webView:Landroid/webkit/WebView;

    .line 485
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090239

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityImage:Landroid/widget/ImageView;

    .line 486
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->gridView:Landroid/widget/GridView;

    .line 487
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09021d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mVideoGridView:Landroid/widget/GridView;

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->imagelist:Ljava/util/ArrayList;

    .line 491
    new-instance v0, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mentryValues:Ljava/util/List;

    .line 493
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090445

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->fullDetailsBtn:Landroid/widget/TextView;

    .line 494
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    const v0, 0x7f0903b9

    .line 495
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->scrollView:Landroid/widget/ScrollView;

    .line 496
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090553

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvAlert:Landroid/widget/TextView;

    return-void
.end method

.method private insertPictureData()V
    .locals 8

    .line 3027
    const-string v0, "SurveyActivity"

    .line 3031
    new-instance v1, Lcom/conceptglobal/pmc/model/PictureReportingData;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/PictureReportingData;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 3032
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 3034
    :try_start_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getPictureIdCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    .line 3035
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setImageId(J)V

    .line 3036
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

    .line 3038
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3039
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3044
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 3046
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPicturePath(Ljava/lang/String;)V

    .line 3048
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPdaCreatedDate(Ljava/lang/String;)V

    .line 3049
    const-string v5, "false"

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setServerStatus(Ljava/lang/String;)V

    .line 3050
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPDAID(Ljava/lang/String;)V

    .line 3051
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedBy(Ljava/lang/String;)V

    .line 3052
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedDate(Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedBy(Ljava/lang/String;)V

    .line 3054
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedDate(Ljava/lang/String;)V

    .line 3055
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceType(Ljava/lang/String;)V

    .line 3056
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setAssignmentId(Ljava/lang/String;)V

    .line 3057
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 3060
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceID(Ljava/lang/String;)V

    .line 3064
    :try_start_1
    sget-object v5, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertPictureDetails(Lcom/conceptglobal/pmc/model/PictureReportingData;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 3066
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3067
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    .line 1630
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1632
    const-string v0, "SurveyActivity"

    invoke-static {v0, p0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isValidData(Z)Z
    .locals 18

    move-object/from16 v1, p0

    .line 2429
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 2443
    :cond_0
    const-string v0, ""

    const/4 v4, 0x1

    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v12, "SurveyActivity"

    if-ge v10, v0, :cond_12

    .line 2444
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2461
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v13

    const/16 v14, 0x129

    if-ne v13, v14, :cond_1

    .line 2462
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2464
    :cond_1
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v13

    const/16 v14, 0x12a

    if-ne v13, v14, :cond_2

    .line 2465
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2467
    :cond_2
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v13

    const/16 v14, 0x12b

    if-ne v13, v14, :cond_3

    .line 2468
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2470
    :cond_3
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v13

    const/16 v14, 0x12c

    if-ne v13, v14, :cond_4

    .line 2471
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2473
    :cond_4
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v13

    const/16 v14, 0x12d

    if-ne v13, v14, :cond_5

    .line 2474
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2479
    :cond_5
    :try_start_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v14, "0"

    const-wide/16 v15, 0x0

    const-string v2, "TextBoxN"

    const-string v3, "TextBoxND"

    if-ne v13, v4, :cond_c

    .line 2480
    :try_start_1
    sget-object v13, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_4

    .line 2483
    :cond_6
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    :goto_1
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 2486
    :cond_7
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v13

    if-ge v4, v13, :cond_8

    const/4 v11, 0x0

    .line 2489
    :cond_8
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v4, :cond_9

    .line 2491
    :try_start_2
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    const/4 v11, 0x0

    .line 2496
    :cond_9
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_a
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v2

    cmp-long v4, v2, v15

    if-eqz v4, :cond_11

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_b
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12

    cmp-long v0, v2, v12

    if-gez v0, :cond_11

    goto/16 :goto_1

    .line 2501
    :cond_c
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_11

    .line 2502
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v13

    if-ge v4, v13, :cond_d

    const/4 v11, 0x0

    .line 2505
    :cond_d
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v4, :cond_e

    .line 2507
    :try_start_4
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    const/4 v11, 0x0

    .line 2512
    :cond_e
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_f
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v2

    cmp-long v4, v2, v15

    if-eqz v4, :cond_11

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_10
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    cmp-long v0, v2, v12

    if-gez v0, :cond_11

    goto/16 :goto_1

    :catch_2
    move-exception v0

    .line 2519
    invoke-static {v12, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_4
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_12
    if-nez v11, :cond_14

    if-eqz p1, :cond_14

    .line 2525
    :try_start_6
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isTableViewActivity:Z

    if-eqz v0, :cond_13

    .line 2526
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;

    const/4 v2, 0x1

    .line 2527
    invoke-interface {v0, v2}, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;->onValidate(Z)V

    goto :goto_5

    .line 2529
    :cond_13
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;

    const/4 v2, 0x1

    .line 2530
    invoke-interface {v0, v2}, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;->onValidate(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 2534
    invoke-static {v12, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2536
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_validationToast()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2537
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2540
    :cond_14
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget v2, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->getIsLatLongMandatoryInSurvey(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    .line 2541
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_16

    .line 2542
    :cond_15
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2543
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2544
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v2, Lcom/conceptglobal/pmc/fo/SurveyActivity$20;

    invoke-direct {v2, v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity$20;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    const/4 v11, 0x0

    .line 2555
    :cond_16
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v0, v2, :cond_17

    .line 2556
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Total Fertilizer Business Turnover (Rs lakh) in last Financial Year should be less than Total Business Turnover (Rs lakh) in last Financial Year"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x0

    goto :goto_6

    :cond_17
    move v3, v11

    .line 2560
    :goto_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v0, v2, :cond_18

    .line 2561
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Total Fertilizer Bulk Business Quantity (MT) in last Financial Year  should be less than Total Fertilizer Business Quantity (MT) in last Financial Year"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x0

    .line 2564
    :cond_18
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v0, v2, :cond_19

    .line 2565
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, " Total Fertilizer SF Business Quantity (MT) in last Financial Year should be less than Total Fertilizer Business Quantity (MT) in last Financial Year"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_19
    return v3

    :cond_1a
    :goto_7
    const/4 v3, 0x0

    .line 2430
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return v3
.end method

.method private newChangesReadOnly()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etFarmerMobile:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 358
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etFarmerLandline:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 359
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etFarmerConumber:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 360
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etFarmerLandmark:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 361
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etOwned:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 362
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etLeasedin:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 363
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etTotalLandHolding:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 364
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etLeasedout:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 365
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvRetailers:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method private prepareAttributeData()V
    .locals 8

    .line 2297
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2298
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2301
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2302
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 2303
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v5

    const-string v6, ""

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "test"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2307
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2308
    :cond_3
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Multiselect Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2310
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 2311
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2313
    array-length v5, v4

    if-lez v5, :cond_6

    .line 2314
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 2322
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_6

    .line 2323
    new-instance v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 2324
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeId(I)V

    .line 2325
    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 2327
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2331
    :cond_4
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2332
    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_3

    .line 2334
    :cond_5
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2342
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 2343
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2344
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 2345
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2346
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    if-eqz v3, :cond_8

    .line 2347
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 2348
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method private saveDataInLocal(Ljava/lang/String;I)V
    .locals 0

    .line 2826
    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->saveDataIntoDataBase(I)V

    return-void
.end method

.method private saveDataInLocalAgree(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2841
    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->saveDataIntoDataBase(I)V

    return-void
.end method

.method private saveDataIntoDataBase(I)V
    .locals 29

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 2020
    const-string v2, "Something went wrong please perform activity again."

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->insertPictureData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    if-eqz v0, :cond_16

    const v4, 0x7f100001

    .line 2021
    const-string v5, "0"

    const-string v6, "SurveyActivity"

    const/4 v7, 0x1

    if-eq v0, v7, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_f

    .line 2028
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->prepareAttributeData()V

    .line 2029
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->saveTableAttributeData(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 2033
    :try_start_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2034
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    iget v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    iget v9, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    invoke-virtual {v3, v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->deleteSurveyDetailsActivity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2036
    :cond_1
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    iget v9, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    iget v12, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentId:I

    iget v13, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    iget v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iget v14, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->packageId:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    move/from16 v19, v14

    move-wide v14, v15

    move/from16 v16, v17

    move/from16 v17, v0

    move-object/from16 v18, v3

    invoke-static/range {v7 .. v19}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertSurveyActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2042
    :try_start_3
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2045
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2046
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_1

    :cond_2
    move-object v12, v5

    .line 2048
    :goto_1
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v0, :cond_3

    .line 2050
    :try_start_4
    const-string v7, ""

    iget v9, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateSurveyAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 2052
    :try_start_5
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2055
    :cond_3
    :goto_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    iget v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    invoke-virtual {v3, v4, v5, v7, v2}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForSurveyActivities(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2056
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisitSurvey(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 2057
    iget v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentId:I

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    const-string v15, "0"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->locationProvider:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->GPSTimeStamp:Ljava/lang/String;

    const-wide/16 v13, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-static/range {v7 .. v17}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateSurveyAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2059
    :cond_4
    iget v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentId:I

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    iget v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    const-string v24, "0"

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->locationProvider:Ljava/lang/String;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->GPSTimeStamp:Ljava/lang/String;

    const-wide/16 v22, 0x0

    move/from16 v16, v0

    move-object/from16 v17, v2

    move/from16 v21, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    invoke-static/range {v16 .. v26}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertSurveyAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 2064
    :try_start_6
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2066
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->finish()V

    goto/16 :goto_f

    .line 2070
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->prepareAttributeData()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 2073
    :try_start_7
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isTableViewActivity:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    const-string v8, "mandatory value empty entry field "

    const-string v9, " again"

    const-string v10, "Please reselect "

    const-string v11, "Please enter  "

    const-string v12, "Multiselect Dropdown"

    const-string v13, "Dropdown"

    const-string v14, "mandatory value empty "

    const-string v15, "mandatory value empty dropdown "

    const-string v4, "  --  "

    const-string v3, "SAattributesActivity"

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 2074
    :goto_4
    :try_start_8
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_a

    .line 2075
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    move-object/from16 v19, v5

    .line 2076
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v5

    move-object/from16 v20, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    sget-object v5, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2077
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2078
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 2079
    :goto_5
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 2080
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2081
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showErrorAlertDialog(Ljava/lang/String;)V

    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2086
    :cond_7
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    .line 2087
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->setFieldDataEmpty(IZ)V

    .line 2088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showAlert(Ljava/lang/String;)V

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    .line 2091
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setFieldDataEmpty(IZ)V

    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showAlert(Ljava/lang/String;)V

    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :goto_6
    return-void

    :cond_9
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto/16 :goto_4

    :cond_a
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .line 2107
    :try_start_9
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isTableViewActivity:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 2108
    :goto_7
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    .line 2109
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2110
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    sget-object v6, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 2111
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 2113
    :goto_8
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 2114
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2115
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showErrorAlertDialog(Ljava/lang/String;)V

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 2120
    :cond_c
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    .line 2121
    invoke-static {v0, v6}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->setFieldDataEmpty(IZ)V

    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showAlert(Ljava/lang/String;)V

    .line 2123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    .line 2125
    invoke-static {v0, v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setFieldDataEmpty(IZ)V

    .line 2126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showAlert(Ljava/lang/String;)V

    .line 2127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    return-void

    :cond_e
    const/4 v6, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 2141
    :cond_f
    :try_start_a
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_10

    .line 2142
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    iget v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    iget v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->deleteSurveyDetailsActivity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2144
    :cond_10
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    iget v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    iget v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentId:I

    iget v9, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    iget v13, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iget v15, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->packageId:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    invoke-static/range {v3 .. v15}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertSurveyActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V

    .line 2145
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    iget v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    iget v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->getSurveychildDetailsActivity(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->updateSurveyChildTransactionDetails(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2146
    :goto_a
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_11

    .line 2147
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->images:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_11
    move-object/from16 v2, v20

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v2, v20

    .line 2151
    :try_start_b
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2155
    :goto_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    const v3, 0x7f100001

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2156
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object/from16 v3, v19

    goto :goto_c

    :cond_12
    move-object/from16 v3, v19

    move-object v8, v3

    .line 2158
    :goto_c
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    if-nez v0, :cond_13

    .line 2160
    :try_start_c
    const-string v3, ""

    iget v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateSurveyAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    .line 2162
    :try_start_d
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 2168
    :cond_13
    :goto_d
    :try_start_e
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 2169
    iget v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentId:I

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    const-string v11, "false"

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->locationProvider:Ljava/lang/String;

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->GPSTimeStamp:Ljava/lang/String;

    const-wide/16 v9, 0x0

    invoke-static/range {v3 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateSurveyAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 2171
    :cond_14
    iget v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->assignmentId:I

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    iget v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    const-string v26, "false"

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->locationProvider:Ljava/lang/String;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->GPSTimeStamp:Ljava/lang/String;

    const-wide/16 v24, 0x0

    move/from16 v18, v0

    move-object/from16 v19, v3

    move/from16 v23, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    invoke-static/range {v18 .. v28}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertSurveyAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    .line 2175
    :try_start_f
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2183
    :goto_e
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2185
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2186
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Service initiated"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 2187
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 2188
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 2191
    :cond_15
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    .line 2192
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2193
    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->startActivity(Landroid/content/Intent;)V

    .line 2194
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->finish()V

    goto :goto_f

    .line 2134
    :catch_6
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showErrorAlertDialog(Ljava/lang/String;)V

    return-void

    .line 2100
    :catch_7
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showErrorAlertDialog(Ljava/lang/String;)V

    return-void

    .line 2023
    :cond_16
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveNCloseDialogInUFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showAlertCancel(Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_f

    :catch_8
    move-exception v0

    .line 2202
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    return-void
.end method

.method private saveTableAttributeData(I)Z
    .locals 5

    .line 2256
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->fragmentsList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2257
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isTableViewActivity:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2258
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->fragmentsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2259
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->fragmentsList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    if-ne p1, v1, :cond_0

    .line 2261
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->prepareDataDraft()V

    .line 2262
    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->testMethod(I)V

    goto :goto_1

    .line 2264
    :cond_0
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isDataValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2265
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->prepareDataDraft()V

    .line 2266
    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->testMethod(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2269
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return v2

    .line 2273
    :cond_2
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isDynamicTableViewActivity:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 2274
    :goto_2
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->fragmentsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2275
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->fragmentsList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;

    if-ne p1, v1, :cond_3

    .line 2277
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->prepareDataDraft()V

    .line 2278
    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->testMethod(I)V

    goto :goto_3

    .line 2280
    :cond_3
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->isDataValid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2281
    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->testMethod(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2284
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private setActionBar()V
    .locals 4

    .line 389
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 390
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 391
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 392
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 393
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 394
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090591

    .line 395
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090581

    .line 396
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 397
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
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

    .line 3075
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->images:Ljava/util/List;

    .line 3076
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lez v0, :cond_0

    .line 3077
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->images:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->imagelist:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v4, v5}, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    .line 3078
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3079
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->gridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3080
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 3081
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvpictures:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3083
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 3084
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvpictures:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3086
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getVideoDetaisQry_assignment_testimonial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->videos:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3087
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3088
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    sget-object v3, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->videos:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->videoList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5}, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->videoAdapter:Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    .line 3089
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3090
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mVideoGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->videoAdapter:Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3091
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 3092
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 3094
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 3095
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setDate_yearless(I)V
    .locals 2

    .line 2993
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2994
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2996
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2998
    const-string v1, "SurveyActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3000
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3001
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 377
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 378
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setLayoutData()V
    .locals 8

    .line 692
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvFarmer:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pmcFarmerInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnDealer:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_prefDealerInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnDiscription:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitDescInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etDiscription:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDescInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnSave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnInactive:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnVisit:Landroid/widget/Button;

    const-string v1, "Complete Survey"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnVisit:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 701
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnVisit:Landroid/widget/Button;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 702
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnVisit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x7f100001

    const-string v3, ""

    if-eqz v0, :cond_1

    .line 705
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityAssignmentId:I

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryDraftQuery(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etDiscription:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getVisitDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLatitude()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLongitude()D

    move-result-wide v4

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLatitude:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvLongitude:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryNamesListQuery(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 729
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 730
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/TerritoryMaster;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/TerritoryMaster;->getTerritoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/TerritoryMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TerritoryMaster;->getTerritoryId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 735
    const-string v1, "SurveyActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 1222
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1223
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnInactive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1224
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnVisit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1225
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvRetailers:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1226
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnLatLng:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1227
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1228
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->fullDetailsBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1238
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$6;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$6;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1279
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->territoryDetailsText:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$7;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setListviewForAcreages()V
    .locals 3

    .line 1182
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listFarmerCrops:Ljava/util/List;

    .line 1184
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getCropsandAcreages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCropSelectionData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listFarmerCrops:Ljava/util/List;

    .line 1185
    new-instance v0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listFarmerCrops:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->adapterCrops:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    .line 1186
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lvCrops:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1188
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lvCrops:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/ListviewFillToParent;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listDealerCompanies:Ljava/util/List;

    .line 1191
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getCompaniesAndSales(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCompanySelectionData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listDealerCompanies:Ljava/util/List;

    .line 1192
    new-instance v0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listDealerCompanies:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->adapterCompany:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

    .line 1193
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lvCrops:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1195
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lvCrops:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/ListviewFillToParent;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private settingData()V
    .locals 2

    .line 746
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 747
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mYear:I

    const/4 v1, 0x2

    .line 748
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mMonth:I

    const/4 v1, 0x5

    .line 749
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mDay:I

    return-void
.end method

.method private settingTabs()V
    .locals 4

    .line 515
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    const/4 v2, 0x0

    .line 516
    invoke-virtual {v0, v2}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 517
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 529
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10023e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Survey"

    const v3, 0x7f080112

    invoke-direct {p0, v2, v3, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 531
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_finishTabSelfAssignText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10023f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080166

    invoke-direct {p0, v0, v3, v2}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 534
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 535
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->fullDetailsBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->fullDetailsBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
    .locals 9

    .line 1650
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1651
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0c0056

    .line 1652
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f090193

    .line 1653
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropAccr:Landroid/widget/EditText;

    const v2, 0x7f0900b2

    .line 1654
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0900a8

    .line 1655
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f090192

    .line 1656
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropName:Landroid/widget/EditText;

    const v4, 0x7f090194

    .line 1657
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropDos:Landroid/widget/EditText;

    const v4, 0x7f0905a7

    .line 1658
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvCropid:Landroid/widget/TextView;

    .line 1659
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropAccr:Landroid/widget/EditText;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1660
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropAccr:Landroid/widget/EditText;

    new-array v5, v1, [Landroid/text/InputFilter;

    new-instance v6, Lcom/conceptglobal/pmc/fo/SurveyActivity$DecimalDigitsInputFilter;

    const/4 v7, 0x6

    const/4 v8, 0x2

    invoke-direct {v6, p0, v7, v8}, Lcom/conceptglobal/pmc/fo/SurveyActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;II)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v4, -0x777778

    .line 1661
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    if-eqz p3, :cond_0

    .line 1663
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v4, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-nez p4, :cond_1

    .line 1666
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropAccr:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1667
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 1669
    :cond_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropAccr:Landroid/widget/EditText;

    invoke-virtual {p3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1670
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {p3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1672
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_2

    .line 1673
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropName:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1674
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvCropid:Landroid/widget/TextView;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1675
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropAccr:Landroid/widget/EditText;

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

    .line 1677
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropName:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1678
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropAccr:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1680
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropAccr:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fo/SurveyActivity$8;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$8;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1702
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropDos:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fo/SurveyActivity$9;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$9;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1713
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->etCropName:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fo/SurveyActivity$10;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$10;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1728
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvCropid:Landroid/widget/TextView;

    new-instance p2, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1774
    new-instance p1, Lcom/conceptglobal/pmc/fo/SurveyActivity$12;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$12;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1812
    new-instance p1, Lcom/conceptglobal/pmc/fo/SurveyActivity$13;

    invoke-direct {p1, p0, v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity$13;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;Landroid/widget/Button;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1825
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1826
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1827
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1828
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1829
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    .line 2222
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2223
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SurveyActivity$16;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$16;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2230
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2231
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2232
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertCancel(Ljava/lang/String;I)V
    .locals 3

    .line 2749
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2750
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SurveyActivity$23;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/fo/SurveyActivity$23;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2768
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$22;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$22;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2774
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2775
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2776
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDiscardAlert()V
    .locals 3

    .line 3129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3133
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardSelfAssignConfirmDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3135
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SurveyActivity$29;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$29;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3143
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelVisitCompleteDialogButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SurveyActivity$30;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$30;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3152
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3153
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3154
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showErrorAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 2207
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2208
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SurveyActivity$15;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$15;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2217
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2218
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showGoBackDialog()V
    .locals 4

    .line 2847
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2848
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

    new-instance v3, Lcom/conceptglobal/pmc/fo/SurveyActivity$24;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$24;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2861
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SurveyActivity$25;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$25;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2868
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2869
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2870
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 2002
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2003
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$14;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$14;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2009
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2010
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2011
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showRemarkSelectionAlert()V
    .locals 6

    .line 3162
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getRemarkValues()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 3164
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->remarkNames:[Ljava/lang/String;

    .line 3165
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->remarkids:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3167
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 3168
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->remarkids:[Ljava/lang/String;

    aget-object v4, v0, v2

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 3169
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->remarkNames:[Ljava/lang/String;

    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3171
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3173
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectReasonDiscardTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3174
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->remarkNames:[Ljava/lang/String;

    new-instance v2, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->d_remarks:Landroid/app/Dialog;

    .line 3220
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3221
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->d_remarks:Landroid/app/Dialog;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$32;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$32;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private updateDisplay_yearless()V
    .locals 2

    .line 2981
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mFiledStr:Ljava/lang/String;

    .line 2982
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2984
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2986
    const-string v1, "SurveyActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2988
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setDate_yearless(I)V

    return-void
.end method

.method private validateCustomerInfo()V
    .locals 6

    .line 1294
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->validation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1295
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->cv:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1296
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->cv:Landroid/content/ContentValues;

    const-string v1, "serverupdatedstatus"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1298
    iget v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

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

    .line 1302
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->cv:Landroid/content/ContentValues;

    const-string v4, "StatusReason"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->cv:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ContactId =\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DealerMaster"

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1299
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->cv:Landroid/content/ContentValues;

    const-string v5, "Status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1300
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->cv:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RespondentNo =\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

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

    .line 1312
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->cv:Landroid/content/ContentValues;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1315
    :goto_0
    :try_start_0
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_35

    .line 1319
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsTransactionEditable()I

    move-result v6

    if-ne v6, v3, :cond_34

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    if-nez v6, :cond_34

    .line 1321
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

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

    const/4 v15, 0x0

    if-eqz v6, :cond_19

    .line 1322
    :try_start_1
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    if-nez v6, :cond_1

    .line 1323
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_emptyEditText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    :cond_0
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_1c

    .line 1326
    :cond_1
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    if-eqz v6, :cond_b

    .line 1328
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    .line 1352
    :cond_2
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    .line 1353
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    if-ge v7, v6, :cond_3

    .line 1354
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1359
    :cond_3
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1329
    :cond_4
    :goto_3
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    if-lez v6, :cond_b

    .line 1331
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_5

    .line 1333
    :cond_5
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x1

    goto :goto_6

    .line 1334
    :cond_7
    :goto_4
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1332
    :cond_8
    :goto_5
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT Mobile FROM PMCTerritoryFarmerMaster where RespondentNo NOT IN(\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1337
    :goto_6
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v7

    if-eqz v6, :cond_9

    .line 1340
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1343
    :cond_9
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    if-ge v6, v7, :cond_a

    .line 1344
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1348
    :cond_a
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_7
    const/4 v3, 0x1

    .line 1365
    :goto_8
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Dropdown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1366
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    if-gtz v6, :cond_c

    .line 1367
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    :cond_c
    if-eqz v3, :cond_d

    .line 1372
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1377
    :cond_d
    :goto_9
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_11

    .line 1378
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v17

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1379
    sget-object v6, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    if-nez v6, :cond_e

    .line 1380
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

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

    :cond_e
    if-eqz v3, :cond_11

    .line 1385
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 1389
    :cond_f
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1390
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1391
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1392
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1393
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1394
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_10

    .line 1395
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

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

    :cond_10
    if-eqz v3, :cond_11

    .line 1400
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1405
    :cond_11
    :goto_b
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    if-lez v6, :cond_14

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v6

    if-lez v6, :cond_14

    .line 1406
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1407
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1408
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v7

    .line 1409
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    if-le v6, v7, :cond_13

    add-int/2addr v8, v9

    if-lt v6, v8, :cond_12

    goto :goto_c

    :cond_12
    if-eqz v3, :cond_18

    .line 1415
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1411
    :cond_13
    :goto_c
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1421
    :cond_14
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    if-lez v6, :cond_16

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v6

    if-gtz v6, :cond_16

    .line 1422
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1423
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1424
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v7

    if-ge v6, v7, :cond_15

    .line 1427
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    :cond_15
    if-eqz v3, :cond_18

    .line 1432
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1438
    :cond_16
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v6

    if-lez v6, :cond_18

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    if-gtz v6, :cond_18

    .line 1439
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1440
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1441
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v7

    if-le v6, v7, :cond_17

    .line 1444
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    :cond_17
    if-eqz v3, :cond_18

    .line 1449
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_18
    :goto_d
    move/from16 v5, v16

    .line 1456
    :goto_e
    :try_start_2
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v3

    if-lez v3, :cond_0

    .line 1457
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1458
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1459
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v6

    .line 1460
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1461
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1462
    invoke-virtual {v6, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1463
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_19
    move-object/from16 v6, v17

    .line 1470
    :try_start_3
    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_30

    .line 1471
    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v15

    if-eqz v15, :cond_23

    .line 1472
    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1c

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    goto :goto_10

    .line 1497
    :cond_1a
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v7

    .line 1498
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v7, :cond_1b

    .line 1499
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_f
    const/4 v9, 0x0

    const/16 v16, 0x0

    goto/16 :goto_15

    .line 1504
    :cond_1b
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 1473
    :cond_1c
    :goto_10
    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_23

    .line 1475
    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_20

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    goto :goto_12

    .line 1477
    :cond_1d
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1f

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v9, 0x1

    goto :goto_13

    .line 1478
    :cond_1f
    :goto_11
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto :goto_13

    .line 1476
    :cond_20
    :goto_12
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT Mobile FROM FarmerMaster where RespondentNo NOT IN(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->isMobileNumExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 1480
    :goto_13
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v7

    if-eqz v9, :cond_21

    .line 1483
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1486
    :cond_21
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v7, :cond_22

    .line 1487
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidNumberText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1492
    :cond_22
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_23
    :goto_14
    const/4 v9, 0x1

    .line 1511
    :goto_15
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_27

    .line 1512
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1513
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    if-nez v3, :cond_24

    .line 1515
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

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

    :cond_24
    if-eqz v9, :cond_27

    .line 1520
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 1524
    :cond_25
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1525
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1526
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1527
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1528
    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1529
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_26

    .line 1530
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

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

    :cond_26
    if-eqz v9, :cond_27

    .line 1535
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1542
    :cond_27
    :goto_17
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v3

    if-lez v3, :cond_2a

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v3

    if-lez v3, :cond_2a

    .line 1543
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1544
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1545
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    .line 1546
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    if-le v3, v6, :cond_29

    add-int/2addr v7, v8

    if-lt v3, v7, :cond_28

    goto :goto_18

    :cond_28
    if-eqz v9, :cond_2f

    .line 1553
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1548
    :cond_29
    :goto_18
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    :cond_2a
    const/4 v8, 0x1

    .line 1559
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v3

    if-lez v3, :cond_2c

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v3

    if-gtz v3, :cond_2c

    .line 1560
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1561
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1562
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    if-ge v3, v6, :cond_2b

    .line 1565
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    :cond_2b
    if-eqz v9, :cond_2f

    .line 1570
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1577
    :cond_2c
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v3

    if-lez v3, :cond_2f

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v3

    if-gtz v3, :cond_2f

    .line 1578
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1579
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1580
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v6

    if-le v3, v6, :cond_2d

    .line 1583
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    :cond_2d
    if-eqz v9, :cond_2f

    .line 1588
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1a

    :cond_2e
    move/from16 v5, v16

    goto/16 :goto_21

    :cond_2f
    :goto_1a
    move/from16 v5, v16

    .line 1595
    :goto_1b
    :try_start_4
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v3

    if-lez v3, :cond_31

    .line 1596
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1597
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1598
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v6

    .line 1599
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1600
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1601
    invoke-virtual {v6, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1602
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_30
    const/4 v8, 0x1

    move/from16 v5, v16

    .line 1610
    :cond_31
    :goto_1c
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    .line 1611
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "FarmerName"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "ContactName"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "RetailerShopName"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_1d

    .line 1614
    :cond_32
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->cv:Landroid/content/ContentValues;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    goto :goto_1e

    .line 1612
    :cond_33
    :goto_1d
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->cv:Landroid/content/ContentValues;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

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

    goto :goto_1e

    :catch_0
    move-exception v0

    goto :goto_1f

    :catch_1
    move-exception v0

    move-object v2, v0

    move/from16 v5, v16

    goto :goto_20

    :cond_34
    move/from16 v16, v5

    const/4 v8, 0x1

    move/from16 v5, v16

    :goto_1e
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_35
    move/from16 v16, v5

    goto :goto_21

    :catch_2
    move-exception v0

    move/from16 v16, v5

    :goto_1f
    move-object v2, v0

    .line 1620
    :goto_20
    const-string v3, "SurveyActivity"

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_36
    :goto_21
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

    .line 2887
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listAttributes_Assgnmt:Ljava/util/List;

    .line 2888
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    .line 2889
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

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

    .line 914
    iget v7, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mForOperations:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mForOperations:I

    .line 915
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 916
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 917
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v10, v12, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0xa

    const/4 v11, 0x4

    const/4 v13, 0x0

    .line 918
    invoke-virtual {v10, v9, v11, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 919
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    .line 921
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 924
    iget v10, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->layoutId:I

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 926
    new-instance v10, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-direct {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 931
    sget-object v11, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    const v14, 0x7f11015b

    invoke-virtual {v10, v11, v14}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 932
    invoke-virtual {v10, v9}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setGravity(I)V

    const/4 v9, 0x5

    .line 933
    invoke-virtual {v10, v9, v13, v13, v13}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setPadding(IIII)V

    if-eqz v3, :cond_1

    .line 936
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

    .line 938
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

    .line 941
    :cond_1
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    :goto_0
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 944
    iget v3, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mForDates:I

    add-int/2addr v3, v8

    iput v3, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mForDates:I

    .line 954
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

    .line 955
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 956
    const-string v3, "operation"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 957
    iget v3, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mForOperations:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    .line 958
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

    .line 959
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 960
    iget-object v3, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    .line 961
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v5, 0x11

    .line 962
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const v5, 0x7f0800d7

    .line 963
    invoke-virtual {v1, v3, v3, v5, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_2

    .line 965
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

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

    .line 968
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 p11, v7

    if-eqz v3, :cond_5

    .line 969
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 970
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 971
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 972
    iget v1, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 973
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 974
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v1, 0x7f080096

    .line 975
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 976
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v1, 0x1

    if-eq v6, v1, :cond_4

    .line 980
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_4
    :goto_4
    move-object v5, v3

    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v6, v3

    goto :goto_2

    .line 983
    :cond_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 984
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 985
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 986
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 987
    iget v1, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 988
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f080096

    .line 989
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 990
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 991
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->datesListenerYearless:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 992
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 994
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_4

    :cond_6
    const/4 v7, 0x1

    .line 997
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v7, "b"

    if-eqz v3, :cond_8

    .line 998
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 999
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1000
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1001
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1002
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v5, 0x2

    .line 1003
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1004
    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v7, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v7, v5, v3

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v3, 0x5

    .line 1005
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_7

    .line 1007
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_7
    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v3, v16

    :goto_5
    move-object v5, v3

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x1

    .line 1010
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_b

    .line 1011
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1012
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1013
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f080096

    .line 1014
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v3, 0x11

    .line 1015
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 1016
    const-string v3, "RespondentNo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1017
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 1018
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1019
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    move-object/from16 v17, v9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1021
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v17, v9

    const/16 v9, 0x32

    invoke-direct {v3, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v7, v1

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v1, 0x5

    .line 1022
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_6
    const/4 v1, 0x1

    if-eq v6, v1, :cond_a

    .line 1025
    invoke-direct {v0, v5}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

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

    .line 1027
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1028
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1029
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1030
    const-string v5, "d"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1031
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1032
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x2002

    .line 1033
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_c

    .line 1036
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_c
    move-object v7, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v9, v6

    goto/16 :goto_9

    .line 1038
    :cond_d
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1039
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1040
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1041
    const-string v5, "e"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1042
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1043
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x20

    .line 1044
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_e

    .line 1047
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_e
    move-object v9, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    goto :goto_9

    .line 1049
    :cond_f
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1050
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1051
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1052
    const-string v7, "n"

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v7, 0x7f080096

    .line 1053
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v7, 0x11

    .line 1054
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v7, 0x2

    .line 1055
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    if-lez v5, :cond_10

    .line 1057
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    .line 1059
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v9, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_8
    const/4 v3, 0x5

    .line 1061
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_11

    .line 1063
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_11
    move-object v6, v1

    goto/16 :goto_7

    :cond_12
    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    goto/16 :goto_5

    .line 1067
    :goto_9
    new-instance v11, Landroid/widget/EditText;

    invoke-direct {v11, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1068
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v9

    const v9, 0x3f19999a    # 0.6f

    move-object/from16 p5, v14

    const/4 v14, -0x1

    invoke-direct {v0, v14, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1069
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p1, v7

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v9, v14, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1070
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    invoke-direct {v7, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1071
    invoke-virtual {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1072
    invoke-virtual {v11, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "DropDown"

    if-eqz v0, :cond_13

    .line 1074
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    move-object/from16 v14, p1

    move-object/from16 v9, p11

    move-object/from16 p1, v11

    move-object/from16 v0, v17

    :goto_b
    move-object/from16 v11, p3

    goto/16 :goto_f

    .line 1075
    :cond_13
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1076
    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 1077
    :cond_14
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1078
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_15
    move-object/from16 v0, v17

    .line 1079
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1080
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c
    move-object/from16 v14, p1

    :goto_d
    move-object/from16 v9, p11

    move-object/from16 p1, v11

    goto :goto_b

    .line 1081
    :cond_16
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_17

    .line 1082
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    .line 1083
    :cond_17
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v14, p1

    .line 1084
    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_18
    move-object/from16 v14, p1

    .line 1085
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 p1, v11

    if-eqz v17, :cond_19

    move-object/from16 v11, p5

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 v11, v16

    if-eqz v17, :cond_1a

    .line 1086
    invoke-virtual {v11, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v9, p11

    goto :goto_b

    :cond_19
    move-object/from16 v11, v16

    .line 1087
    :cond_1a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1b

    move-object/from16 v16, v11

    move-object/from16 v11, p3

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 1088
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_1b
    move-object/from16 v16, v11

    move-object/from16 v11, p3

    :cond_1c
    :goto_e
    move-object/from16 v9, p11

    .line 1090
    :goto_f
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1091
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 1092
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_10
    move-object/from16 p3, v11

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    :goto_11
    move-object/from16 v11, p13

    goto/16 :goto_13

    .line 1093
    :cond_1d
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 1094
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1095
    :cond_1e
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 1096
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1097
    :cond_1f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 1098
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1099
    :cond_20
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_21

    .line 1100
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1101
    :cond_21
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 1102
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1103
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

    .line 1104
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12

    :cond_23
    move-object/from16 v17, v14

    move-object/from16 v14, v16

    .line 1105
    :cond_24
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    .line 1106
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_25
    :goto_12
    move-object/from16 p3, v11

    goto :goto_11

    .line 1108
    :goto_13
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v9, p0

    .line 1109
    iget-object v11, v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mattributesnamesArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    iget-object v10, v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArrIds:Ljava/util/ArrayList;

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 1112
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 1113
    :cond_26
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1114
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1115
    :cond_27
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1116
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1117
    :cond_28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1118
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1119
    :cond_29
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    .line 1120
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1121
    :cond_2a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1122
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1123
    :cond_2b
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1124
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1125
    :cond_2c
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1126
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    :cond_2d
    :goto_14
    iget v0, v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/conceptglobal/pmc/fo/SurveyActivity;->layoutId:I

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

    .line 2895
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->fragmentsList:Ljava/util/List;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 2642
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 p2, 0x65

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 2680
    :cond_0
    const-string p1, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Navigation"

    const-string v0, "Image Capture End"

    invoke-static {p3, v0, p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    new-instance p1, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;

    sget-object p2, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    invoke-direct {p1, p2, p3}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CompressListener;)V

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->imageFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    .line 2647
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

    .line 2648
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

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

    .line 2649
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

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

    .line 2650
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tvRetailers:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getRetailerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2652
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2653
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setRetailerId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    .line 2662
    const-string p1, "FarmerId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2663
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->selCustomerId:Ljava/lang/String;

    .line 2665
    :cond_4
    const-string p1, "SegmentId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 2666
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->selSegmentID:I

    .line 2668
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->selCustomerId:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    iget p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->selSegmentID:I

    if-eqz p1, :cond_9

    .line 2670
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->custDetailsText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FarmerName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2672
    const-string p2, "MBAACTIVITY"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    const/4 p1, -0x1

    if-eq p2, p1, :cond_8

    if-eqz p2, :cond_7

    goto :goto_0

    .line 2692
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2687
    :cond_8
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->fetchLocation()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const-string v0, "select Sanitized from FarmerMaster where RespondentNo= \'"

    .line 1841
    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 1842
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x2

    const-string v2, "farmerId"

    const/16 v3, 0x8

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1864
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xa

    .line 1865
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1903
    :sswitch_1
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    const-string v5, "farmerType"

    const-string v6, "fromTransaction"

    const-string v7, "SegmentId"

    if-ne p1, v4, :cond_1

    .line 1905
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1906
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1907
    const-string p1, "The Farmer Is Unsanitized, You Can\'t Edit. "

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1911
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1913
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1914
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1915
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1916
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1917
    const-string v0, "Farmer"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1918
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    .line 1920
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1921
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1922
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1923
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1924
    const-string v0, "Planter"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1925
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 1927
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1928
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1929
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1930
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1931
    const-string v0, "Retailer"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1932
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 1934
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1935
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1936
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1937
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1938
    const-string v0, "Distributor"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1939
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1896
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1897
    const-string v0, "activityId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->activityId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1898
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x65

    .line 1899
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1856
    :sswitch_3
    invoke-direct {p0, v4}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->isValidData(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, v4}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->saveTableAttributeData(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1857
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->checkTerritorydetails()Z

    move-result p1

    if-ne p1, v4, :cond_7

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->checkImagesMandatory()Z

    move-result p1

    if-ne p1, v4, :cond_7

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->checkVideoMandatory()Z

    move-result p1

    if-ne p1, v4, :cond_7

    .line 1858
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getpmc_confirmSurveyCompleteDialogText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showAlertCancel(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1848
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->saveDataIntoDataBase(I)V

    goto/16 :goto_0

    .line 1852
    :sswitch_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showDiscardAlert()V

    goto/16 :goto_0

    .line 1869
    :sswitch_6
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->fetchLocation()V

    goto/16 :goto_0

    .line 1844
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

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1944
    :sswitch_8
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1945
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnViewHistory:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Show History"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    const v2, 0x7f0902bf

    if-eqz p1, :cond_4

    .line 1946
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnViewHistory:Landroid/widget/Button;

    const-string v0, "Back"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1947
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1948
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1949
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1950
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1951
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 1952
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1953
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFormData()V

    .line 1954
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlLastVisitHistory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1978
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->btnViewHistory:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1979
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1980
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->lastVisitData:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 1981
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1982
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1984
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1985
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1992
    :cond_6
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100153

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showNoInternetDialog(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void

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

    .line 2878
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2879
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->tabHost:Landroid/widget/TabHost;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 0

    .line 2902
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setAdapter()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 279
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0132

    .line 283
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setContentView(I)V

    .line 284
    sput-object p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    .line 285
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/PMCApplication;

    .line 287
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 288
    const-string p1, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Navigation"

    const-string v2, "onCreate"

    invoke-static {v1, v2, p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->initialization()V

    .line 290
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getData()V

    .line 291
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->settingTabs()V

    .line 292
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setLayoutData()V

    .line 293
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->settingData()V

    .line 294
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    const/16 v0, 0xa

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->createOperationAttributes()V

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setListeners()V

    .line 297
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->segmentId:I

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->bindOperations()V

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->gridView:Landroid/widget/GridView;

    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0901de

    .line 305
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 306
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyActivity$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901df

    .line 316
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const/16 v0, 0x8

    .line 317
    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    .line 318
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyActivity$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->message:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "send"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2382
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/fo/SurveyActivity$19;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mDay:I

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/fo/SurveyActivity$19;-><init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2390
    const-string v0, "Select Day-Month"

    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2393
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "year"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2395
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 2397
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1

    .line 2380
    :cond_2
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mYear:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mMonth:I

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mDay:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 2587
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024c

    .line 2588
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->miDraft:Landroid/view/MenuItem;

    .line 2589
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2590
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->miDraft:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2591
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 4

    .line 3232
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3233
    const-string v0, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onDestroy"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
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

    .line 2575
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getAcreages()F

    move-result p2

    iget-object p4, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p4}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getDos()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropId()I

    move-result p3

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2602
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2609
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->saveDataIntoDataBase(I)V

    .line 2612
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 2604
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showGoBackDialog()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2618
    const-string p2, "onRequestPermissionResult"

    const-string v0, "SurveyActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 2620
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 2623
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2624
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 2626
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->fetchLocation()V

    goto :goto_0

    .line 2629
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 3121
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 3122
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

    .line 3123
    const-string v0, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onResume/CaptureEnd"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3124
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setAdapter()V

    return-void
.end method
