.class public Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "FarmerFormActivity_Expenses.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;
.implements Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;
.implements Lcom/conceptglobal/pmc/utils/CompressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$DecimalDigitsInputFilter;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final DATEDIALOGID_YEARLESS:I = 0x1

.field private static final GETATTRIBUTEDONE:I = 0x3

.field private static final GETNEWACTIVITY:I = 0x2

.field private static final GETRETAILERLIST:I = 0xa

.field private static final INITIALCROPID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FarmerFormActivity"

.field private static final TODO_TAG:Ljava/lang/String; = "TODO"

.field public static context:Landroid/content/Context;


# instance fields
.field private GPSTimeStamp:Ljava/lang/String;

.field private activityAssignmentId:I

.field private activityId:I

.field private activityImage:Landroid/widget/ImageView;

.field private activityName:Ljava/lang/String;

.field private activityShortCode:Ljava/lang/String;

.field private activityTabPos:I

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

.field private currenttab:I

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

.field private imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapterExpenses;

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

.field private irrTabPos:I

.field private isDisplayOthers:Z

.field private isDynamicTableViewActivity:Z

.field private isExpensesSubmited:I

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

.field private latlongBG:Landroid/widget/LinearLayout;

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

.field private nextbtn:Landroid/widget/TextView;

.field operationListener:Landroid/view/View$OnClickListener;

.field private packageId:I

.field private parentActivityAssinmentId:J

.field private parentActivityTransId:J

.field private previousbtn:Landroid/widget/TextView;

.field private queries:Lcom/conceptglobal/pmc/common/Queries;

.field private remarkNames:[Ljava/lang/String;

.field private remarkids:[Ljava/lang/String;

.field private replacestring:Ljava/lang/String;

.field private scrollView:Landroid/widget/ScrollView;

.field private segmentId:I

.field private segmentName:Ljava/lang/String;

.field private slLastVistdata:Landroid/widget/ScrollView;

.field private tabHost:Landroid/widget/TabHost;

.field private tag:Ljava/lang/String;

.field private territoryDetailsText:Landroid/widget/TextView;

.field private transId:J

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

    .line 137
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 141
    const-string v0, "FarmerFormActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->dateDialogID:I

    .line 154
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    .line 155
    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->packageId:I

    const/4 v2, 0x0

    .line 192
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->hAttributes:Ljava/util/HashMap;

    .line 195
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentName:Ljava/lang/String;

    .line 207
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    .line 210
    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->layoutId:I

    const/4 v3, -0x1

    .line 211
    iput v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mForOperations:I

    iput v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mForDates:I

    .line 220
    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->datePos:I

    .line 223
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mFiledStr:Ljava/lang/String;

    .line 224
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->updateDOS:Ljava/lang/String;

    .line 254
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isMIActivity:Z

    .line 255
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isTableViewActivity:Z

    .line 256
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isDynamicTableViewActivity:Z

    .line 257
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->locationProvider:Ljava/lang/String;

    .line 261
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->GPSTimeStamp:Ljava/lang/String;

    .line 262
    new-instance v2, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 265
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityShortCode:Ljava/lang/String;

    .line 270
    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->currenttab:I

    .line 271
    iput v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->irrTabPos:I

    const/4 v0, 0x1

    .line 272
    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityTabPos:I

    .line 935
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$4;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvLatitudeListener:Landroid/text/TextWatcher;

    .line 1301
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$5;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->operationListener:Landroid/view/View$OnClickListener;

    .line 2507
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$17;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$17;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->datesListener:Landroid/view/View$OnClickListener;

    .line 2517
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$18;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$18;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->datesListenerYearless:Landroid/view/View$OnClickListener;

    .line 2779
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$20;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$20;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    .line 3008
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$25;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$25;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 3041
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$26;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$26;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 3179
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$27;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$27;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->message:Landroid/content/BroadcastReceiver;

    .line 3418
    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$33;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$33;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->datasaveReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/util/List;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;J)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->captureImage(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TextView;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->previousbtn:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TextView;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->nextbtn:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isDisplayOthers:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;Z)Z
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isDisplayOthers:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;I)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setTab(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    return p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/view/MenuItem;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->miDraft:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isMIActivity:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isTableViewActivity:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isDynamicTableViewActivity:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    return p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/util/List;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->videos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TextView;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->territoryDetailsText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/EditText;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropDos:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->dateDialogID:I

    return p0
.end method

.method static synthetic access$2202(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;I)I
    .locals 0

    .line 137
    iput p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->dateDialogID:I

    return p1
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Lcom/conceptglobal/pmc/common/Queries;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->queries:Lcom/conceptglobal/pmc/common/Queries;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TextView;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvCropid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/EditText;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropAccr:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/EditText;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;J)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->captureVideo(J)V

    return-void
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setListviewForAcreages()V

    return-void
.end method

.method static synthetic access$3102(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;I)I
    .locals 0

    .line 137
    iput p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->datePos:I

    return p1
.end method

.method static synthetic access$3202(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->txt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setAdapter()V

    return-void
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;I)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->saveDataIntoDataBase(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mYear:I

    return p0
.end method

.method static synthetic access$3602(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;I)I
    .locals 0

    .line 137
    iput p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mYear:I

    return p1
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mMonth:I

    return p0
.end method

.method static synthetic access$3702(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;I)I
    .locals 0

    .line 137
    iput p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mMonth:I

    return p1
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mDay:I

    return p0
.end method

.method static synthetic access$3802(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;I)I
    .locals 0

    .line 137
    iput p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mDay:I

    return p1
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->updateDisplay_yearless()V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TextView;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;Z)Z
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isImageDeleted:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showRemarkSelectionAlert()V

    return-void
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->prepareAttributeData()V

    return-void
.end method

.method static synthetic access$4300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/util/List;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->transId:J

    return-wide v0
.end method

.method static synthetic access$4500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->packageId:I

    return p0
.end method

.method static synthetic access$4700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityShortCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$4900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->parentActivityTransId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TextView;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentId:I

    return p0
.end method

.method static synthetic access$5100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)[Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->remarkNames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/EditText;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etDiscription:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->locationProvider:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->GPSTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5402(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->GPSTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArrIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->currenttab:I

    return p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;I)I
    .locals 0

    .line 137
    iput p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->currenttab:I

    return p1
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TabHost;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method private addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 907
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 908
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 909
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 910
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0xa

    const/4 v6, 0x4

    .line 911
    invoke-virtual {v2, v4, v6, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 912
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 916
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 917
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x3

    .line 919
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, -0x1000000

    .line 920
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 921
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 922
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 924
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 925
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 927
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setGravity(I)V

    const p2, 0x7f0800e2

    .line 928
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 929
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 930
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, p1, p2, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 931
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 932
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->llLastvisitBody:Landroid/widget/LinearLayout;

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

    .line 894
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 895
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
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

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 901
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 902
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 595
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 596
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    const v6, 0x7f0c0135

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090459

    .line 597
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 598
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090230

    .line 599
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move/from16 v5, p2

    .line 600
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 601
    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f10023c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v4, 0x7f090414

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_4

    .line 605
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f10023d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090415

    .line 606
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_4

    .line 607
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f10023e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "ActivityShortCode"

    const-string v6, "TRANSID"

    const-string v8, "FarmerFormActivity"

    const/high16 v10, 0x20000

    const-string v11, "MODELCLASS"

    const/4 v12, 0x1

    const-string v13, "ActivityAssignmentId"

    const-string v14, "AssignmentId"

    const-string v15, "ACTIVITYNAME"

    const-string v4, "ISSELFASSIGN"

    const-string v9, "SEGMENTID"

    if-eqz v0, :cond_5

    .line 611
    :try_start_0
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isMIActivity:Z

    if-eqz v0, :cond_2

    .line 612
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    const-class v5, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 613
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 615
    iget v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    iget v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentId:I

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 619
    iget v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 620
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v2

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 623
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v2, v11, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 624
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 625
    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 627
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_4

    .line 629
    :cond_2
    new-instance v2, Landroid/content/Intent;

    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    const-class v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {v2, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 631
    :try_start_1
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isTableViewActivity:Z

    if-eqz v0, :cond_3

    .line 632
    new-instance v0, Landroid/content/Intent;

    sget-object v10, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    const-class v12, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {v0, v10, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 633
    :cond_3
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isDynamicTableViewActivity:Z

    if-eqz v0, :cond_4

    .line 634
    new-instance v0, Landroid/content/Intent;

    sget-object v10, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    const-class v12, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-direct {v0, v10, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 637
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 639
    :cond_4
    :goto_1
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    invoke-virtual {v2, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityName:Ljava/lang/String;

    invoke-virtual {v2, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentId:I

    invoke-virtual {v2, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    invoke-virtual {v2, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v0

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    const-string v0, "From"

    const-string v4, "Expenses"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    iget-wide v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->parentActivityTransId:J

    invoke-virtual {v2, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 651
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 652
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0, v11, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 653
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v4, 0x20000

    .line 654
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/16 v4, 0x2000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 656
    invoke-virtual {v3, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 660
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 664
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f100241

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 666
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    const-class v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-direct {v2, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 668
    :try_start_4
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isTableViewActivity:Z

    if-eqz v0, :cond_6

    .line 669
    new-instance v0, Landroid/content/Intent;

    sget-object v10, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    const-class v12, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {v0, v10, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    move-object v2, v0

    goto :goto_3

    .line 670
    :cond_6
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isDynamicTableViewActivity:Z

    if-eqz v0, :cond_7

    .line 671
    new-instance v0, Landroid/content/Intent;

    sget-object v10, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    const-class v12, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-direct {v0, v10, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 674
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    :cond_7
    :goto_3
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    invoke-virtual {v2, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityName:Ljava/lang/String;

    invoke-virtual {v2, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentId:I

    invoke-virtual {v2, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 682
    iget-wide v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->transId:J

    invoke-virtual {v2, v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 683
    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    invoke-virtual {v2, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 684
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v0

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 685
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 686
    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 687
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 688
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0, v11, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 689
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v4, 0x20000

    .line 690
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/16 v4, 0x2000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 692
    invoke-virtual {v3, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 694
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 695
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 699
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f10023f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f090417

    .line 700
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_4

    .line 701
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f100240

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f090418

    .line 702
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_4

    :cond_a
    const v0, 0x7f090414

    .line 704
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 706
    :goto_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private bindOperations()V
    .locals 11

    .line 1234
    const-string v0, "TerritoryMaster"

    const-string v1, "FarmerMaster"

    const-string v2, "DealerMaster"

    const-string v3, "FarmerFormActivity"

    :try_start_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->bindQuery:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerOrRetailerBindDataDynamic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mentryValues:Ljava/util/List;

    .line 1236
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mentryValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    .line 1237
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1238
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropdown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1239
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

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

    .line 1242
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerShopName"

    const-string v9, "ContactId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mentryValues:Ljava/util/List;

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

    .line 1244
    :try_start_2
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1245
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1247
    :cond_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

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

    .line 1249
    :try_start_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "FarmerName"

    const-string v9, "RespondentNo"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mentryValues:Ljava/util/List;

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

    .line 1251
    :try_start_4
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1252
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1254
    :cond_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

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

    .line 1256
    :try_start_5
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "territoryName"

    const-string v9, "territoryId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mentryValues:Ljava/util/List;

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

    .line 1258
    :try_start_6
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1261
    :cond_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1264
    :cond_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mentryValues:Ljava/util/List;

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

    .line 1269
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private captureImage(J)V
    .locals 5

    .line 3084
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    .line 3085
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->setPictureReportingContext(Landroid/content/Context;)V

    .line 3086
    const-string v0, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "Image Capture Click"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3088
    const-string v1, "activityId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3089
    const-string v1, "assignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3091
    :try_start_0
    const-string v1, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "expenses"

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

    .line 3093
    const-string v2, "FarmerFormActivity"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3094
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3096
    :goto_0
    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->transId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setReferenceID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3098
    const-string v1, "attributeId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3099
    const-string v1, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3100
    const-string v1, "imageId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3101
    const-string p1, "IdTransid"

    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->transId:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3102
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private captureVideo(J)V
    .locals 3

    .line 3373
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    const-class v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3374
    const-string p2, "activityId"

    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3375
    const-string p2, "assignmentId"

    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3377
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

    .line 3379
    const-string v0, "FarmerFormActivity"

    invoke-static {v0, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3380
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3382
    :goto_0
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->transId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "setReferenceID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3383
    const-string p2, "attributeId"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3384
    const-string p2, "farmerId"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3385
    const-string p2, "imageId"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3386
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private checkImagesMandatory()Z
    .locals 6

    const/4 v0, 0x0

    .line 3342
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getImageIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3343
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3344
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getApplicationContext()Landroid/content/Context;

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

    .line 3350
    const-string v2, "FarmerFormActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkTerritorydetails()Z
    .locals 4

    const/4 v0, 0x0

    .line 3329
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->territoryDetailsText:Landroid/widget/TextView;

    const v2, 0x7f100001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->territoryDetailsText:Landroid/widget/TextView;

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

    .line 3330
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getApplicationContext()Landroid/content/Context;

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

    .line 3334
    const-string v2, "FarmerFormActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkVideoMandatory()Z
    .locals 6

    const/4 v0, 0x1

    .line 3358
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getVideoIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3359
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3360
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getApplicationContext()Landroid/content/Context;

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

    .line 3366
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

    .line 952
    invoke-virtual {v15, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    .line 953
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->hAttributes:Ljava/util/HashMap;

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mattributesnamesArr:Ljava/util/ArrayList;

    .line 955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mOprDatesArr:Ljava/util/ArrayList;

    .line 956
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    .line 957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntrySpinnerArr:Ljava/util/ArrayList;

    .line 958
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArrIds:Ljava/util/ArrayList;

    .line 960
    iget v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

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

    .line 963
    :cond_1
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    goto :goto_1

    .line 961
    :cond_2
    :goto_0
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    .line 966
    :cond_3
    :goto_1
    iget v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    if-eq v0, v11, :cond_7

    if-eq v0, v13, :cond_6

    if-eq v0, v14, :cond_5

    if-eq v0, v12, :cond_4

    goto :goto_2

    .line 978
    :cond_4
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Planter"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 975
    :cond_5
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Distributor"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 972
    :cond_6
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 969
    :cond_7
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    .line 983
    :goto_2
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 986
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-lez v10, :cond_8

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_8

    .line 990
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    .line 991
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v8

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v16

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v17

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v18

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v19

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    iget-object v11, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

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

    .line 990
    invoke-virtual/range {v0 .. v14}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;I)V

    .line 992
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

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

    .line 997
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_5

    .line 1000
    :cond_9
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1001
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    iget v1, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

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

    .line 1005
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from DealerMaster where contactId =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->bindQuery:Ljava/lang/String;

    goto :goto_5

    .line 1003
    :cond_c
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from FarmerMaster where RespondentNo =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->bindQuery:Ljava/lang/String;

    :cond_d
    :goto_5
    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 3391
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3392
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 3395
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$32;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$32;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    const-string v2, "FarmerFormActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3413
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData()V
    .locals 6

    .line 717
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 718
    const-string v1, "MODELCLASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 719
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    .line 720
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 721
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    .line 722
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->intentGetData:Landroid/content/Intent;

    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentId:I

    .line 723
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->intentGetData:Landroid/content/Intent;

    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityName:Ljava/lang/String;

    .line 724
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->intentGetData:Landroid/content/Intent;

    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    .line 725
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->intentGetData:Landroid/content/Intent;

    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    .line 726
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->intentGetData:Landroid/content/Intent;

    const-string v1, "PackageId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->packageId:I

    .line 727
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentName:Ljava/lang/String;

    .line 729
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->intentGetData:Landroid/content/Intent;

    const-string v1, "TRANSID"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->parentActivityTransId:J

    .line 730
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->intentGetData:Landroid/content/Intent;

    const-string v1, "ExpensesSubmited"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isExpensesSubmited:I

    if-nez v0, :cond_0

    .line 732
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->transId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 735
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentId:I

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->parentActivityTransId:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getpmcExpenseAssignmentActivityDetailsCountQry(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->transId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 737
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 740
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v1, 0x2

    const-string v3, ")"

    const-string v4, "Expenses Details("

    if-eq v0, v1, :cond_1

    .line 742
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 745
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 748
    :goto_1
    new-instance v0, Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/FarmerDetails;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    .line 752
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    invoke-virtual {v1, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getLastvistFarmerData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLastVistData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitData:Ljava/util/List;

    .line 753
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 754
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 762
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setRespondentNo(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 764
    :try_start_5
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setRespondentNo(Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 767
    :goto_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getAssignmentVisitDetail(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAssignmentVisitDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 769
    :try_start_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getQueryActivityType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    .line 770
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isMIActivity:Z

    .line 772
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getActivityDisplayType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 773
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 774
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isTableViewActivity:Z

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    .line 775
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 776
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isDynamicTableViewActivity:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 780
    :try_start_7
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 784
    :cond_6
    :goto_5
    :try_start_8
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getActivityShortCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateAudianceFarmer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityShortCode:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    .line 787
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 790
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void
.end method

.method private initialization()V
    .locals 3

    .line 432
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->intentGetData:Landroid/content/Intent;

    .line 433
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 434
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->dynamicColumnnames:Ljava/lang/StringBuilder;

    const v0, 0x7f09041e

    .line 436
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->images:Ljava/util/List;

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->videos:Ljava/util/List;

    .line 442
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etLeasedin:Landroid/widget/EditText;

    .line 443
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etTotalLandHolding:Landroid/widget/EditText;

    .line 444
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etLeasedout:Landroid/widget/EditText;

    .line 445
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090197

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCultivated:Landroid/widget/EditText;

    .line 446
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvAddCrop:Landroid/widget/TextView;

    .line 447
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0902d8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lvCrops:Landroid/widget/ListView;

    .line 449
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09052b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvFarmer:Landroid/widget/TextView;

    .line 450
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09051c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnDealer:Landroid/widget/Button;

    .line 451
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090521

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnDiscription:Landroid/widget/Button;

    .line 452
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09019a

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etDiscription:Landroid/widget/EditText;

    .line 453
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090502

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvIsBayerFarmer:Landroid/widget/TextView;

    .line 454
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090575

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvRetailers:Landroid/widget/TextView;

    .line 457
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnSave:Landroid/widget/Button;

    const/16 v1, 0x8

    .line 458
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0900a5

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnInactive:Landroid/widget/Button;

    .line 460
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0900c4

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnVisit:Landroid/widget/Button;

    const v0, 0x7f0902de

    .line 462
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lvLastVisitData:Landroid/widget/ListView;

    const v0, 0x7f0902a7

    .line 463
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->llLastvisitBody:Landroid/widget/LinearLayout;

    const v0, 0x7f0902be

    .line 464
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->latlongBG:Landroid/widget/LinearLayout;

    .line 465
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f090409

    .line 466
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->slLastVistdata:Landroid/widget/ScrollView;

    .line 467
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0900a1

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnLatLng:Landroid/widget/ImageView;

    .line 468
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f09054d

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvLatitude:Landroid/widget/TextView;

    .line 469
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f090556

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvLongitude:Landroid/widget/TextView;

    .line 470
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f090352

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvpictures:Landroid/widget/TextView;

    .line 471
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0905ec

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvVideos:Landroid/widget/TextView;

    const v0, 0x7f0905cf

    .line 473
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->previousbtn:Landroid/widget/TextView;

    const v0, 0x7f0905cc

    .line 474
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->nextbtn:Landroid/widget/TextView;

    .line 475
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->previousbtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->nextbtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0905c0

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->territoryDetailsText:Landroid/widget/TextView;

    .line 501
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f090084

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnTerritoryDetails:Landroid/widget/Button;

    .line 503
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f090600

    .line 504
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->webView:Landroid/webkit/WebView;

    .line 514
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090239

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityImage:Landroid/widget/ImageView;

    .line 515
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->gridView:Landroid/widget/GridView;

    .line 516
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09021d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mVideoGridView:Landroid/widget/GridView;

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->imagelist:Ljava/util/ArrayList;

    .line 518
    new-instance v0, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mentryValues:Ljava/util/List;

    .line 520
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090445

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->fullDetailsBtn:Landroid/widget/TextView;

    .line 521
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    const v0, 0x7f0903b9

    .line 522
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->scrollView:Landroid/widget/ScrollView;

    .line 523
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090553

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvAlert:Landroid/widget/TextView;

    .line 524
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnViewHistory:Landroid/widget/Button;

    .line 525
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnViewHistory:Landroid/widget/Button;

    const-string v1, "Show History"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private insertPictureData()V
    .locals 8

    .line 3107
    const-string v0, "FarmerFormActivity"

    .line 3111
    new-instance v1, Lcom/conceptglobal/pmc/model/PictureReportingData;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/PictureReportingData;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 3112
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 3114
    :try_start_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getPictureIdCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    .line 3115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setImageId(J)V

    .line 3116
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

    .line 3118
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3119
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3124
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 3126
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPicturePath(Ljava/lang/String;)V

    .line 3128
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPdaCreatedDate(Ljava/lang/String;)V

    .line 3129
    const-string v5, "false"

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setServerStatus(Ljava/lang/String;)V

    .line 3130
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPDAID(Ljava/lang/String;)V

    .line 3131
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedBy(Ljava/lang/String;)V

    .line 3132
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedDate(Ljava/lang/String;)V

    .line 3133
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedBy(Ljava/lang/String;)V

    .line 3134
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedDate(Ljava/lang/String;)V

    .line 3135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceType(Ljava/lang/String;)V

    .line 3136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setAssignmentId(Ljava/lang/String;)V

    .line 3137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 3140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->transId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceID(Ljava/lang/String;)V

    .line 3144
    :try_start_1
    sget-object v5, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertPictureDetails(Lcom/conceptglobal/pmc/model/PictureReportingData;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 3146
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3147
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    .line 1807
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1809
    const-string v0, "FarmerFormActivity"

    invoke-static {v0, p0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isValidData(Z)Z
    .locals 16

    move-object/from16 v1, p0

    .line 2579
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v4, 0x1

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2586
    :goto_0
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "FarmerFormActivity"

    if-ge v5, v7, :cond_e

    .line 2587
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2589
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    move v9, v0

    .line 2594
    :goto_1
    :try_start_0
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v10, "0"

    const-wide/16 v11, 0x0

    const-string v13, "TextBoxN"

    const-string v14, "TextBoxND"

    if-ne v0, v4, :cond_8

    .line 2597
    :try_start_1
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isTableViewActivity:Z

    if-eqz v0, :cond_2

    .line 2598
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/GetTableDataInterface;

    .line 2599
    invoke-interface {v0}, Lcom/conceptglobal/pmc/interfaces/GetTableDataInterface;->getValidationData()Ljava/util/ArrayList;

    move-result-object v0

    .line 2600
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    .line 2605
    :catch_0
    :cond_2
    :try_start_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 2608
    :cond_3
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v15

    if-ge v0, v15, :cond_4

    const/4 v6, 0x0

    .line 2611
    :cond_4
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v0, :cond_5

    .line 2613
    :try_start_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    const/4 v6, 0x0

    .line 2618
    :cond_5
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_6
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v13

    cmp-long v0, v13, v11

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_7
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v7

    cmp-long v0, v10, v7

    if-gez v0, :cond_d

    goto/16 :goto_2

    .line 2623
    :cond_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    .line 2624
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v15

    if-ge v0, v15, :cond_9

    const/4 v6, 0x0

    .line 2627
    :cond_9
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_a

    .line 2629
    :try_start_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    const/4 v6, 0x0

    .line 2634
    :cond_a
    :goto_4
    :try_start_6
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v13

    cmp-long v0, v13, v11

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_c
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    cmp-long v0, v10, v7

    if-gez v0, :cond_d

    goto/16 :goto_2

    :catch_3
    move-exception v0

    .line 2641
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v0, v9

    goto/16 :goto_0

    :cond_e
    if-eqz v0, :cond_f

    .line 2646
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Please enter expense details."

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v3

    :cond_f
    if-nez v6, :cond_11

    if-eqz p1, :cond_11

    .line 2651
    :try_start_7
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isTableViewActivity:Z

    if-eqz v0, :cond_10

    .line 2652
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;

    .line 2653
    invoke-interface {v0, v4}, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;->onValidate(Z)V

    goto :goto_6

    .line 2655
    :cond_10
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;

    .line 2656
    invoke-interface {v0, v4}, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;->onValidate(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 2660
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2662
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_validationToast()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2663
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_11
    return v6

    .line 2580
    :cond_12
    :goto_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return v3
.end method

.method private newChangesReadOnly()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etFarmerMobile:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    .line 381
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etFarmerLandline:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    .line 382
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etFarmerConumber:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    .line 383
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etFarmerLandmark:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    .line 384
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etOwned:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    .line 385
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etLeasedin:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    .line 386
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etTotalLandHolding:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    .line 387
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etLeasedout:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    .line 388
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvRetailers:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method private prepareAttributeData()V
    .locals 8

    .line 2447
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2448
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2451
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2452
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 2453
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v5

    const-string v6, ""

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2456
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2457
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2458
    :cond_3
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Multiselect Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2460
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 2461
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArrIds_Assgnmt:Ljava/util/List;

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

    .line 2463
    array-length v5, v4

    if-lez v5, :cond_6

    .line 2464
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 2472
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_6

    .line 2473
    new-instance v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 2474
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeId(I)V

    .line 2475
    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 2477
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2481
    :cond_4
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2482
    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_3

    .line 2484
    :cond_5
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2492
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 2493
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2494
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 2495
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2496
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    if-eqz v3, :cond_8

    .line 2497
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 2498
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method private saveDataInLocal(Ljava/lang/String;I)V
    .locals 0

    .line 2904
    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->saveDataIntoDataBase(I)V

    return-void
.end method

.method private saveDataInLocalAgree(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2919
    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->saveDataIntoDataBase(I)V

    return-void
.end method

.method private saveDataIntoDataBase(I)V
    .locals 42

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 2199
    const-string v2, "Something went wrong please perform activity again."

    const-string v3, "  --  "

    const-string v4, "SAattributesActivity"

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->insertPictureData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    if-eqz v0, :cond_12

    .line 2200
    const-string v6, "Todo StaEnd --"

    const-string v7, "FarmerFormActivity"

    const/4 v8, 0x1

    if-eq v0, v8, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_e

    .line 2207
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->prepareAttributeData()V

    .line 2208
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->saveTableAttributeData(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    .line 2212
    :try_start_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2213
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-wide v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->transId:J

    invoke-virtual {v3, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->deleteExpensesFarmerDetailsActivity(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2215
    :cond_1
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    iget v10, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    iget v14, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    iget-wide v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->transId:J

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iget v15, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->packageId:I

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityShortCode:Ljava/lang/String;

    iget v12, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v25, v6

    :try_start_3
    iget-wide v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->parentActivityTransId:J

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v22, v12

    move/from16 v12, v16

    move-object/from16 v21, v13

    move/from16 v13, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v15

    move-wide v15, v3

    move-object/from16 v19, v0

    move-wide/from16 v23, v5

    invoke-static/range {v8 .. v24}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertExpensesFarmerActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;ILjava/lang/String;IJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v25, v6

    .line 2221
    :goto_0
    :try_start_4
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2229
    :goto_1
    :try_start_5
    const-string v8, ""

    iget v10, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    const-string v13, ""

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateExpenseAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 2231
    :try_start_6
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v0, 0x0

    .line 2236
    :goto_3
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->images:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2237
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->images:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 2241
    :goto_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_3

    .line 2242
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->videos:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateVideoServerStatus(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2246
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    iget v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForActivities(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2247
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->updateExpenseDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 2248
    iget v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentId:I

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iget v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    const-string v16, "0"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->locationProvider:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->GPSTimeStamp:Ljava/lang/String;

    const-wide/16 v14, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-static/range {v8 .. v18}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateExpenseAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2250
    :cond_4
    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentId:I

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v29

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    const-string v34, "0"

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->locationProvider:Ljava/lang/String;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->GPSTimeStamp:Ljava/lang/String;

    const-wide/16 v32, 0x0

    move/from16 v26, v0

    move-object/from16 v27, v2

    move/from16 v31, v3

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    invoke-static/range {v26 .. v36}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertExpenseAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 2255
    :try_start_7
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    .line 2258
    :goto_5
    :try_start_8
    const-string v8, "ActivityTimeDetails"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 2261
    :catch_4
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->finish()V

    goto/16 :goto_e

    :cond_5
    move-object v5, v6

    .line 2265
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->prepareAttributeData()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    .line 2271
    :try_start_a
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isTableViewActivity:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 2272
    :goto_6
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_a

    .line 2273
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2274
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v9

    if-ne v9, v8, :cond_9

    .line 2275
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2276
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mandatory value empty "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 2277
    :goto_7
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    const-string v11, "mandatory value empty dropdown "

    if-ge v9, v10, :cond_7

    .line 2278
    :try_start_b
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Multiselect Dropdown"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2279
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showErrorAlertDialog(Ljava/lang/String;)V

    .line 2280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2284
    :cond_7
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Dropdown"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2285
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Please reselect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " again"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showAlertDialog(Ljava/lang/String;)V

    .line 2286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    invoke-static {v0, v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->setFieldDataEmpty(IZ)V

    goto :goto_8

    .line 2289
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Please enter  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showAlertDialog(Ljava/lang/String;)V

    .line 2290
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mandatory value empty entry field "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2291
    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->setFieldDataEmpty(IZ)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :goto_8
    return-void

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 2302
    :cond_a
    :try_start_c
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b

    .line 2303
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->transId:J

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->deleteExpensesFarmerDetailsActivity(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2304
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->deleteLastVisitDetails(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2306
    :cond_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    iget v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    iget-wide v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->transId:J

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentDetals:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iget v11, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->packageId:I

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityShortCode:Ljava/lang/String;

    iget v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    iget-wide v14, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->parentActivityTransId:J

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move/from16 v27, v3

    move/from16 v31, v4

    move-wide/from16 v32, v9

    move-object/from16 v36, v6

    move/from16 v37, v11

    move-object/from16 v38, v12

    move/from16 v39, v13

    move-wide/from16 v40, v14

    invoke-static/range {v25 .. v41}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertExpensesFarmerActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;ILjava/lang/String;IJ)V

    .line 2307
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    iget v11, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    iget v12, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    const-wide/16 v13, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/conceptglobal/pmc/common/Queries;->getchildDetailsActivity(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->updateChildTransactionDetails(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2308
    :goto_9
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 2309
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->images:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_c
    const/4 v0, 0x0

    .line 2312
    :goto_a
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->videos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 2313
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->videos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2298
    :catch_5
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showErrorAlertDialog(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 2317
    :try_start_d
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 2321
    :cond_d
    :try_start_e
    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    if-gtz v0, :cond_e

    iget-wide v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->parentActivityTransId:J

    const-wide/16 v9, 0x0

    cmp-long v4, v2, v9

    if-lez v4, :cond_f

    :cond_e
    int-to-long v2, v0

    .line 2322
    iget-wide v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->parentActivityTransId:J

    invoke-static {v2, v3, v9, v10, v8}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateExpenseSubmitStatusDetails(JJI)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    .line 2325
    :try_start_f
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 2336
    :cond_f
    :goto_b
    :try_start_10
    const-string v8, ""

    iget v10, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    const-string v13, ""

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateExpenseAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 2338
    :try_start_11
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 2344
    :goto_c
    :try_start_12
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->updateExpenseDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 2345
    iget v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentId:I

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iget v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    const-string v16, "false"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->locationProvider:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->GPSTimeStamp:Ljava/lang/String;

    const-wide/16 v14, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-static/range {v8 .. v18}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateExpenseAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 2347
    :cond_10
    iget v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->assignmentId:I

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v29

    iget v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    const-string v33, "false"

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->locationProvider:Ljava/lang/String;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->GPSTimeStamp:Ljava/lang/String;

    const-wide/16 v31, 0x0

    move/from16 v25, v0

    move-object/from16 v26, v2

    move/from16 v30, v3

    move-object/from16 v34, v4

    move-object/from16 v35, v6

    invoke-static/range {v25 .. v35}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertExpenseAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 2351
    :try_start_13
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2352
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2359
    :goto_d
    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2361
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2362
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Service initiated"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 2363
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 2364
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    .line 2368
    :cond_11
    :try_start_14
    const-string v6, "ActivityTimeDetails"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    .line 2371
    :catch_a
    :try_start_15
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    .line 2372
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2373
    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->startActivity(Landroid/content/Intent;)V

    .line 2374
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->finish()V

    goto :goto_e

    .line 2202
    :cond_12
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveNCloseDialogInUFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showAlertCancel(Ljava/lang/String;I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    goto :goto_e

    :catch_b
    move-exception v0

    .line 2382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2383
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    return-void
.end method

.method private saveTableAttributeData(I)Z
    .locals 5

    .line 2406
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->fragmentsList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2407
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isTableViewActivity:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2408
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->fragmentsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2409
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->fragmentsList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    if-ne p1, v1, :cond_0

    .line 2411
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->prepareDataDraft()V

    .line 2412
    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->testMethod(I)V

    goto :goto_1

    .line 2414
    :cond_0
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isDataValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2415
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->prepareDataDraft()V

    .line 2416
    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->testMethod(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2419
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return v2

    .line 2423
    :cond_2
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isDynamicTableViewActivity:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 2424
    :goto_2
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->fragmentsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2425
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->fragmentsList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;

    if-ne p1, v1, :cond_3

    .line 2427
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->prepareDataDraft()V

    .line 2428
    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->testMethod(I)V

    goto :goto_3

    .line 2430
    :cond_3
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->isDataValid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2431
    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->testMethod(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2434
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private setActionBar()V
    .locals 4

    .line 412
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 413
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 414
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 415
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 416
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 417
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090591

    .line 418
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090581

    .line 419
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 420
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
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

    .line 3155
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->transId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->images:Ljava/util/List;

    .line 3156
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lez v0, :cond_0

    .line 3157
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridImageAdapterExpenses;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->images:Ljava/util/List;

    invoke-direct {v0, p0, v4}, Lcom/conceptglobal/pmc/adapter/GridImageAdapterExpenses;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapterExpenses;

    .line 3158
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3159
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->gridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapterExpenses;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3160
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 3161
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvpictures:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3163
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 3164
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvpictures:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3166
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityAssignmentId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getVideoDetaisQry_assignment_testimonial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->videos:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3168
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    sget-object v3, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->videos:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->videoList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5}, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->videoAdapter:Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    .line 3169
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3170
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mVideoGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->videoAdapter:Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3171
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 3172
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 3174
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 3175
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setDate_yearless(I)V
    .locals 2

    .line 3071
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3072
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3074
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3076
    const-string v1, "FarmerFormActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3078
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3079
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 400
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 401
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 402
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setLayoutData()V
    .locals 3

    .line 802
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvFarmer:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pmcFarmerInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnDealer:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_prefDealerInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnDiscription:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitDescInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 805
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etDiscription:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDescInFFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnSave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnInactive:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnVisit:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_submitBtnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 810
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnVisit:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 811
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnVisit:Landroid/widget/Button;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 812
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnVisit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSingleLine(Z)V

    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 1322
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1323
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnInactive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1324
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnVisit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1325
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvRetailers:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1326
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnLatLng:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1327
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1328
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->fullDetailsBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1330
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->previousbtn:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$6;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$6;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1352
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->nextbtn:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$7;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1378
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1456
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->territoryDetailsText:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$9;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$9;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setListviewForAcreages()V
    .locals 3

    .line 1282
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listFarmerCrops:Ljava/util/List;

    .line 1284
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getCropsandAcreages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCropSelectionData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listFarmerCrops:Ljava/util/List;

    .line 1285
    new-instance v0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listFarmerCrops:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->adapterCrops:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    .line 1286
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lvCrops:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1288
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lvCrops:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/ListviewFillToParent;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listDealerCompanies:Ljava/util/List;

    .line 1291
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getCompaniesAndSales(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCompanySelectionData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listDealerCompanies:Ljava/util/List;

    .line 1292
    new-instance v0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listDealerCompanies:Ljava/util/List;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->adapterCompany:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

    .line 1293
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lvCrops:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1295
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lvCrops:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/ListviewFillToParent;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTab(I)V
    .locals 1

    .line 3439
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method

.method private settingData()V
    .locals 4

    .line 846
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 847
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mYear:I

    const/4 v1, 0x2

    .line 848
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mMonth:I

    const/4 v1, 0x5

    .line 849
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mDay:I

    .line 881
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitData:Ljava/util/List;

    const v1, 0x7f0902bf

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->addLastVisitAcitivityAttributes(Ljava/util/List;)V

    goto :goto_0

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvAlert:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitDetNotAvailText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private settingTabs()V
    .locals 9

    .line 544
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    const/4 v2, 0x0

    .line 545
    invoke-virtual {v0, v2}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 546
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 558
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    const/16 v2, 0x61f

    const v3, 0x7f10023f

    const v4, 0x7f080166

    const v5, 0x7f100241

    const v6, 0x7f080112

    const-string v7, "Expenses"

    if-ne v0, v2, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v6, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_finishTabSelfAssignText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_activityLastVisitText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f10023e

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v8, 0x7f080108

    invoke-direct {p0, v0, v8, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v6, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 566
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_finishTabSelfAssignText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 568
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 569
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->fullDetailsBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->fullDetailsBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityTabPos:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 575
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->currenttab:I

    return-void
.end method

.method private showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
    .locals 9

    .line 1827
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1828
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0c0056

    .line 1829
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f090193

    .line 1830
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropAccr:Landroid/widget/EditText;

    const v2, 0x7f0900b2

    .line 1831
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0900a8

    .line 1832
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f090192

    .line 1833
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropName:Landroid/widget/EditText;

    const v4, 0x7f090194

    .line 1834
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropDos:Landroid/widget/EditText;

    const v4, 0x7f0905a7

    .line 1835
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvCropid:Landroid/widget/TextView;

    .line 1836
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropAccr:Landroid/widget/EditText;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1837
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropAccr:Landroid/widget/EditText;

    new-array v5, v1, [Landroid/text/InputFilter;

    new-instance v6, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$DecimalDigitsInputFilter;

    const/4 v7, 0x6

    const/4 v8, 0x2

    invoke-direct {v6, p0, v7, v8}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;II)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v4, -0x777778

    .line 1838
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    if-eqz p3, :cond_0

    .line 1840
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {v4, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-nez p4, :cond_1

    .line 1843
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropAccr:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1844
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {p3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 1846
    :cond_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropAccr:Landroid/widget/EditText;

    invoke-virtual {p3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1847
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropDos:Landroid/widget/EditText;

    invoke-virtual {p3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1849
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_2

    .line 1850
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropName:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1851
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvCropid:Landroid/widget/TextView;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1852
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropAccr:Landroid/widget/EditText;

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

    .line 1854
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropName:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1855
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropAccr:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1857
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropAccr:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$10;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$10;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1879
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropDos:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$11;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$11;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1890
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->etCropName:Landroid/widget/EditText;

    new-instance p2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$12;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$12;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1905
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvCropid:Landroid/widget/TextView;

    new-instance p2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$13;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$13;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1951
    new-instance p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$14;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$14;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1989
    new-instance p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$15;

    invoke-direct {p1, p0, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$15;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;Landroid/widget/Button;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2002
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2003
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2004
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2005
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2006
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showAlertCancel(Ljava/lang/String;I)V
    .locals 3

    .line 2827
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2828
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$22;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$22;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2846
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$21;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$21;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2852
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2853
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2854
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 3443
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3444
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$34;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$34;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3451
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3452
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3453
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDiscardAlert()V
    .locals 3

    .line 3211
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3215
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardSelfAssignConfirmDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3217
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$28;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$28;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3225
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelVisitCompleteDialogButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$29;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$29;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3234
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3235
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3236
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showErrorAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 3458
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3459
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$35;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$35;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3467
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3468
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3469
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showGoBackDialog()V
    .locals 4

    .line 2925
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2926
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

    new-instance v3, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$23;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$23;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2939
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$24;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$24;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2946
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2947
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2948
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 2181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2182
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$16;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$16;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2188
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2189
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2190
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showRemarkSelectionAlert()V
    .locals 6

    .line 3244
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getRemarkValues()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 3246
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->remarkNames:[Ljava/lang/String;

    .line 3247
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->remarkids:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3249
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 3250
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->remarkids:[Ljava/lang/String;

    aget-object v4, v0, v2

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 3251
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->remarkNames:[Ljava/lang/String;

    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3253
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3255
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectReasonDiscardTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3256
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->remarkNames:[Ljava/lang/String;

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3301
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->d_remarks:Landroid/app/Dialog;

    .line 3302
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3303
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->d_remarks:Landroid/app/Dialog;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$31;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$31;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private updateDisplay_yearless()V
    .locals 2

    .line 3059
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mFiledStr:Ljava/lang/String;

    .line 3060
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3062
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3064
    const-string v1, "FarmerFormActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3066
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setDate_yearless(I)V

    return-void
.end method

.method private validateCustomerInfo()V
    .locals 6

    .line 1471
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->validation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1472
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->cv:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1473
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->cv:Landroid/content/ContentValues;

    const-string v1, "serverupdatedstatus"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1475
    iget v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

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

    .line 1479
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->cv:Landroid/content/ContentValues;

    const-string v4, "StatusReason"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->cv:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ContactId =\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DealerMaster"

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1476
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->cv:Landroid/content/ContentValues;

    const-string v5, "Status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1477
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->cv:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RespondentNo =\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

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

    .line 1489
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->cv:Landroid/content/ContentValues;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1492
    :goto_0
    :try_start_0
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_35

    .line 1496
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsTransactionEditable()I

    move-result v6

    if-ne v6, v3, :cond_34

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1498
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

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

    .line 1499
    :try_start_1
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1500
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1503
    :cond_1
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    if-eqz v6, :cond_b

    .line 1505
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    .line 1529
    :cond_2
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v6

    .line 1530
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1531
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1536
    :cond_3
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1506
    :cond_4
    :goto_3
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1508
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_5

    .line 1510
    :cond_5
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x1

    goto :goto_6

    .line 1511
    :cond_7
    :goto_4
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1509
    :cond_8
    :goto_5
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT Mobile FROM PMCTerritoryFarmerMaster where RespondentNo NOT IN(\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1514
    :goto_6
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v7

    if-eqz v6, :cond_9

    .line 1517
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1520
    :cond_9
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1521
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1525
    :cond_a
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_7
    const/4 v3, 0x1

    .line 1542
    :goto_8
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Dropdown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1543
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1544
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1549
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1554
    :cond_d
    :goto_9
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_11

    .line 1555
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v17

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1556
    sget-object v6, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1557
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

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

    .line 1562
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 1566
    :cond_f
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1567
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1568
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1569
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1570
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1571
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_10

    .line 1572
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

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

    .line 1577
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1582
    :cond_11
    :goto_b
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    if-lez v6, :cond_14

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v6

    if-lez v6, :cond_14

    .line 1583
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1584
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1585
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v7

    .line 1586
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

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

    .line 1592
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1588
    :cond_13
    :goto_c
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1598
    :cond_14
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    if-lez v6, :cond_16

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v6

    if-gtz v6, :cond_16

    .line 1599
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1600
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1601
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v7

    if-ge v6, v7, :cond_15

    .line 1604
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1609
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1615
    :cond_16
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v6

    if-lez v6, :cond_18

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    if-gtz v6, :cond_18

    .line 1616
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1617
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1618
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v7

    if-le v6, v7, :cond_17

    .line 1621
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1626
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_18
    :goto_d
    move/from16 v5, v16

    .line 1633
    :goto_e
    :try_start_2
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v3

    if-lez v3, :cond_0

    .line 1634
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1635
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1636
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v6

    .line 1637
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1638
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1639
    invoke-virtual {v6, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1640
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_19
    move-object/from16 v6, v17

    .line 1647
    :try_start_3
    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1648
    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v15

    if-eqz v15, :cond_23

    .line 1649
    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1c

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    goto :goto_10

    .line 1674
    :cond_1a
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v7

    .line 1675
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1676
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1681
    :cond_1b
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 1650
    :cond_1c
    :goto_10
    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1652
    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentName:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_20

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentName:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    goto :goto_12

    .line 1654
    :cond_1d
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1f

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v9, 0x1

    goto :goto_13

    .line 1655
    :cond_1f
    :goto_11
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1653
    :cond_20
    :goto_12
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT Mobile FROM FarmerMaster where RespondentNo NOT IN(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1657
    :goto_13
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v7

    if-eqz v9, :cond_21

    .line 1660
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_mobileExistsToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1663
    :cond_21
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1664
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1669
    :cond_22
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_23
    :goto_14
    const/4 v9, 0x1

    .line 1688
    :goto_15
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_27

    .line 1689
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1690
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1692
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

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

    .line 1697
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 1701
    :cond_25
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1702
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1703
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1704
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1705
    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1706
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_26

    .line 1707
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

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

    .line 1712
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1719
    :cond_27
    :goto_17
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v3

    if-lez v3, :cond_2a

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v3

    if-lez v3, :cond_2a

    .line 1720
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1721
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1722
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    .line 1723
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

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

    .line 1730
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1725
    :cond_29
    :goto_18
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1736
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v3

    if-lez v3, :cond_2c

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v3

    if-gtz v3, :cond_2c

    .line 1737
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1738
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1739
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v6

    if-ge v3, v6, :cond_2b

    .line 1742
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1747
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1754
    :cond_2c
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v3

    if-lez v3, :cond_2f

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v3

    if-gtz v3, :cond_2f

    .line 1755
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1756
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v6

    if-le v3, v6, :cond_2d

    .line 1760
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterValidToast()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 1765
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1772
    :goto_1b
    :try_start_4
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v3

    if-lez v3, :cond_31

    .line 1773
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1774
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1775
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v6

    .line 1776
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1777
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1778
    invoke-virtual {v6, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1779
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_30
    const/4 v8, 0x1

    move/from16 v5, v16

    .line 1787
    :cond_31
    :goto_1c
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    .line 1788
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

    .line 1791
    :cond_32
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->cv:Landroid/content/ContentValues;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1789
    :cond_33
    :goto_1d
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->cv:Landroid/content/ContentValues;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

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

    .line 1797
    :goto_20
    const-string v3, "FarmerFormActivity"

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

    .line 2965
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listAttributes_Assgnmt:Ljava/util/List;

    .line 2966
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr_Assgnmt:Ljava/util/List;

    .line 2967
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArrIds_Assgnmt:Ljava/util/List;

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

    .line 1014
    iget v7, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mForOperations:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mForOperations:I

    .line 1015
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1016
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1017
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v10, v12, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0xa

    const/4 v11, 0x4

    const/4 v13, 0x0

    .line 1018
    invoke-virtual {v10, v9, v11, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1019
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    .line 1021
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1024
    iget v10, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->layoutId:I

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1026
    new-instance v10, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-direct {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1031
    sget-object v11, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    const v14, 0x7f11015b

    invoke-virtual {v10, v11, v14}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1032
    invoke-virtual {v10, v9}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setGravity(I)V

    const/4 v9, 0x5

    .line 1033
    invoke-virtual {v10, v9, v13, v13, v13}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setPadding(IIII)V

    if-eqz v3, :cond_1

    .line 1036
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

    .line 1038
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

    .line 1041
    :cond_1
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    :goto_0
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1044
    iget v3, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mForDates:I

    add-int/2addr v3, v8

    iput v3, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mForDates:I

    .line 1054
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

    .line 1055
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1056
    const-string v3, "operation"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1057
    iget v3, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mForOperations:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    .line 1058
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

    .line 1059
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1060
    iget-object v3, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    .line 1061
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v5, 0x11

    .line 1062
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const v5, 0x7f0800d7

    .line 1063
    invoke-virtual {v1, v3, v3, v5, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_2

    .line 1065
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

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

    .line 1068
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 p11, v7

    if-eqz v3, :cond_5

    .line 1069
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1070
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1072
    iget v1, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 1073
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 1074
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v1, 0x7f080096

    .line 1075
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1076
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1077
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v1, 0x1

    if-eq v6, v1, :cond_4

    .line 1080
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_4
    :goto_4
    move-object v5, v3

    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v6, v3

    goto :goto_2

    .line 1083
    :cond_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1084
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1085
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1086
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1087
    iget v1, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 1088
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f080096

    .line 1089
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 1090
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1091
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->datesListenerYearless:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1092
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 1094
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_4

    :cond_6
    const/4 v7, 0x1

    .line 1097
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v7, "b"

    if-eqz v3, :cond_8

    .line 1098
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1099
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1100
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1101
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1102
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v5, 0x2

    .line 1103
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1104
    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v7, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v7, v5, v3

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v3, 0x5

    .line 1105
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_7

    .line 1107
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_7
    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v3, v16

    :goto_5
    move-object v5, v3

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x1

    .line 1110
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_b

    .line 1111
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1112
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1113
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f080096

    .line 1114
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v3, 0x11

    .line 1115
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 1116
    const-string v3, "RespondentNo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1117
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerMaster:Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 1118
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1119
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    move-object/from16 v17, v9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1121
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v17, v9

    const/16 v9, 0x32

    invoke-direct {v3, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v7, v1

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v1, 0x5

    .line 1122
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_6
    const/4 v1, 0x1

    if-eq v6, v1, :cond_a

    .line 1125
    invoke-direct {v0, v5}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

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

    .line 1127
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1128
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1129
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1130
    const-string v5, "d"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1131
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1132
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x2002

    .line 1133
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_c

    .line 1136
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_c
    move-object v7, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v9, v6

    goto/16 :goto_9

    .line 1138
    :cond_d
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1139
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1140
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1141
    const-string v5, "e"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 1142
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 1143
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x20

    .line 1144
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_e

    .line 1147
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_e
    move-object v9, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    goto :goto_9

    .line 1149
    :cond_f
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1150
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1151
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1152
    const-string v7, "n"

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v7, 0x7f080096

    .line 1153
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v7, 0x11

    .line 1154
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v7, 0x2

    .line 1155
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    if-lez v5, :cond_10

    .line 1157
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    .line 1159
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v9, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_8
    const/4 v3, 0x5

    .line 1161
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_11

    .line 1163
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_11
    move-object v6, v1

    goto/16 :goto_7

    :cond_12
    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    goto/16 :goto_5

    .line 1167
    :goto_9
    new-instance v11, Landroid/widget/EditText;

    invoke-direct {v11, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1168
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v9

    const v9, 0x3f19999a    # 0.6f

    move-object/from16 p5, v14

    const/4 v14, -0x1

    invoke-direct {v0, v14, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1169
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p1, v7

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v9, v14, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1170
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    invoke-direct {v7, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1171
    invoke-virtual {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1172
    invoke-virtual {v11, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1173
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "DropDown"

    if-eqz v0, :cond_13

    .line 1174
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    move-object/from16 v14, p1

    move-object/from16 v9, p11

    move-object/from16 p1, v11

    move-object/from16 v0, v17

    :goto_b
    move-object/from16 v11, p3

    goto/16 :goto_f

    .line 1175
    :cond_13
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1176
    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 1177
    :cond_14
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1178
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_15
    move-object/from16 v0, v17

    .line 1179
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1180
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c
    move-object/from16 v14, p1

    :goto_d
    move-object/from16 v9, p11

    move-object/from16 p1, v11

    goto :goto_b

    .line 1181
    :cond_16
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_17

    .line 1182
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    .line 1183
    :cond_17
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v14, p1

    .line 1184
    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_18
    move-object/from16 v14, p1

    .line 1185
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 p1, v11

    if-eqz v17, :cond_19

    move-object/from16 v11, p5

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 v11, v16

    if-eqz v17, :cond_1a

    .line 1186
    invoke-virtual {v11, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v9, p11

    goto :goto_b

    :cond_19
    move-object/from16 v11, v16

    .line 1187
    :cond_1a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1b

    move-object/from16 v16, v11

    move-object/from16 v11, p3

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 1188
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_1b
    move-object/from16 v16, v11

    move-object/from16 v11, p3

    :cond_1c
    :goto_e
    move-object/from16 v9, p11

    .line 1190
    :goto_f
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1191
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 1192
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_10
    move-object/from16 p3, v11

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    :goto_11
    move-object/from16 v11, p13

    goto/16 :goto_13

    .line 1193
    :cond_1d
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 1194
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1195
    :cond_1e
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 1196
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1197
    :cond_1f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 1198
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1199
    :cond_20
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_21

    .line 1200
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1201
    :cond_21
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 1202
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 1203
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

    .line 1204
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12

    :cond_23
    move-object/from16 v17, v14

    move-object/from16 v14, v16

    .line 1205
    :cond_24
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    .line 1206
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_25
    :goto_12
    move-object/from16 p3, v11

    goto :goto_11

    .line 1208
    :goto_13
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v9, p0

    .line 1209
    iget-object v11, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mattributesnamesArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object v10, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArrIds:Ljava/util/ArrayList;

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 1212
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 1213
    :cond_26
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1214
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1215
    :cond_27
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1216
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1217
    :cond_28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1218
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1219
    :cond_29
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    .line 1220
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1221
    :cond_2a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1222
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1223
    :cond_2b
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1224
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1225
    :cond_2c
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1226
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    :cond_2d
    :goto_14
    iget v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->layoutId:I

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

    .line 2973
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->fragmentsList:Ljava/util/List;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 2740
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 p2, 0x65

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 2758
    :cond_0
    const-string p1, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Navigation"

    const-string v0, "Image Capture End"

    invoke-static {p3, v0, p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    new-instance p1, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;

    sget-object p2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    invoke-direct {p1, p2, p3}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CompressListener;)V

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->imageFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 2745
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

    .line 2746
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

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

    .line 2747
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

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

    .line 2748
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tvRetailers:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->getRetailerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2750
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2751
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/model/FarmerDetails;->setRetailerId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    if-eq p2, p1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_0

    .line 2770
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2765
    :cond_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->fetchLocation()V

    :cond_6
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

    .line 2018
    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 2019
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x2

    const-string v2, "farmerId"

    const/16 v3, 0x8

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2043
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xa

    .line 2044
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2082
    :sswitch_1
    iget p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    const-string v5, "farmerType"

    const-string v6, "fromTransaction"

    const-string v7, "SegmentId"

    if-ne p1, v4, :cond_1

    .line 2084
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2085
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2086
    const-string p1, "The Farmer Is Unsanitized, You Can\'t Edit. "

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2090
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2092
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2093
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2094
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2095
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2096
    const-string v0, "Farmer"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2097
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    .line 2099
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2100
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2101
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2102
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2103
    const-string v0, "Planter"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2104
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 2106
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2107
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2108
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2109
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2110
    const-string v0, "Retailer"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2111
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 2113
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2114
    iget v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2115
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2116
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2117
    const-string v0, "Distributor"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2118
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2075
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2076
    const-string v0, "activityId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2077
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x65

    .line 2078
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2033
    :sswitch_3
    invoke-direct {p0, v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->isValidData(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->saveTableAttributeData(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2034
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->gettingImageCountMessage(Landroid/content/Context;)Z

    move-result p1

    .line 2036
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->checkImagesMandatory()Z

    move-result v0

    if-ne v0, v4, :cond_7

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->checkVideoMandatory()Z

    move-result v0

    if-ne v0, v4, :cond_7

    if-ne p1, v4, :cond_7

    .line 2037
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_confirmVisitCompleteDialogText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showAlertCancel(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2025
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->saveDataIntoDataBase(I)V

    goto/16 :goto_0

    .line 2029
    :sswitch_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showDiscardAlert()V

    goto/16 :goto_0

    .line 2048
    :sswitch_6
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->fetchLocation()V

    goto/16 :goto_0

    .line 2021
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

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V

    goto/16 :goto_0

    .line 2123
    :sswitch_8
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2124
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnViewHistory:Landroid/widget/Button;

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

    .line 2125
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnViewHistory:Landroid/widget/Button;

    const-string v0, "Back"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2126
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2127
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2128
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2129
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2130
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 2131
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 2132
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFormData()V

    .line 2133
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlLastVisitHistory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 2157
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->btnViewHistory:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2158
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2159
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->lastVisitData:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 2160
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2161
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2163
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2164
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2171
    :cond_6
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100153

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showNoInternetDialog(Ljava/lang/String;)V

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

    .line 2956
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2957
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 0

    .line 2980
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setAdapter()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "TODO Start --"

    .line 277
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00a3

    .line 281
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setContentView(I)V

    .line 282
    sput-object p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    .line 283
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/PMCApplication;

    .line 285
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 286
    const-string p1, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onCreate"

    invoke-static {v2, v3, p1, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->initialization()V

    .line 288
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getData()V

    .line 289
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->settingTabs()V

    .line 290
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setLayoutData()V

    .line 291
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->settingData()V

    .line 298
    iget p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->activityId:I

    const/16 v1, 0x61f

    if-ne p1, v1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->tabHost:Landroid/widget/TabHost;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 303
    :goto_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setListeners()V

    .line 306
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->gridView:Landroid/widget/GridView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$1;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0901de

    .line 312
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const/16 v1, 0x8

    .line 313
    invoke-virtual {p1, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    .line 314
    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$2;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {p1, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901df

    .line 324
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 325
    new-instance v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$3;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    invoke-virtual {p1, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->message:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "send"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 345
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->datasaveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DataSaved"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 355
    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2532
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$19;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mDay:I

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$19;-><init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2540
    const-string v0, "Select Day-Month"

    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2543
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "year"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2545
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 2547
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1

    .line 2530
    :cond_2
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mYear:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mMonth:I

    iget v7, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mDay:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 2685
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024c

    .line 2686
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->miDraft:Landroid/view/MenuItem;

    .line 2687
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2688
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->miDraft:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2689
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 4

    .line 3314
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3315
    const-string v0, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onDestroy"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->datasaveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3317
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

    .line 2673
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getAcreages()F

    move-result p2

    iget-object p4, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p4}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getDos()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->listFarmerCrops:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropId()I

    move-result p3

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2700
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2707
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->saveDataIntoDataBase(I)V

    .line 2710
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 2702
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showGoBackDialog()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2716
    const-string p2, "onRequestPermissionResult"

    const-string v0, "FarmerFormActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 2718
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 2721
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2722
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 2724
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->fetchLocation()V

    goto :goto_0

    .line 2727
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 3201
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 3202
    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->gettingBackImagesList(Landroid/content/Context;)V

    .line 3204
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

    .line 3205
    const-string v0, "TODO"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onResume/CaptureEnd"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setAdapter()V

    return-void
.end method
