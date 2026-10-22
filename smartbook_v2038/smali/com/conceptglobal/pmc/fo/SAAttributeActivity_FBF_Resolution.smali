.class public Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "SAAttributeActivity_FBF_Resolution.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;
.implements Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;
.implements Lcom/conceptglobal/pmc/utils/CompressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$DecimalDigitsInputFilter;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final DATEDIALOGID_YEARLESS:I = 0x1

.field private static final GETCUSTOMER:I = 0x3

.field private static final GETNEWACTIVITY:I = 0x2

.field private static final GETRETAILERLIST:I = 0x1

.field private static final INITIALCROPID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SAAttributeActivity_FBF"


# instance fields
.field private GPSTimeStamp:Ljava/lang/String;

.field private activityId:I

.field private activityName:Ljava/lang/String;

.field private activityassignmentID:I

.field private adapterActivities:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

.field private adapterCrops:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

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

.field private btnResolutionDiscription:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field private btnTerritoryDetails:Landroid/widget/Button;

.field private btnVisit:Landroid/widget/Button;

.field private btn_fbf_resolution:Landroid/widget/Button;

.field private checkBoxExecutor:Landroid/widget/CheckBox;

.field private checkBoxSmsReportee:Landroid/widget/CheckBox;

.field private context:Landroid/content/Context;

.field private custDetailsText:Landroid/widget/TextView;

.field protected d_remarks:Landroid/app/Dialog;

.field private dateDialogID:I

.field private datePos:I

.field datesListener:Landroid/view/View$OnClickListener;

.field datesListenerYearless:Landroid/view/View$OnClickListener;

.field dynamicColumnnames:Ljava/lang/StringBuilder;

.field private etDiscription:Landroid/widget/EditText;

.field private etResolutionDiscription:Landroid/widget/EditText;

.field private farmerDetailsListFinal:Lcom/conceptglobal/pmc/model/FarmerDetails;

.field private farmerID:Ljava/lang/String;

.field private fbfActivityResolveTrackModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ComplaintInfoModel;",
            ">;"
        }
    .end annotation
.end field

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

.field private isCompleted:Ljava/lang/String;

.field isFromResolution:Z

.field private isImageDeleted:Z

.field private isMIActivity:Z

.field private isSelfAssign:I

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

.field private listFarmerCrops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropMapping;",
            ">;"
        }
    .end annotation
.end field

.field private llLastvisitBody:Landroid/widget/LinearLayout;

.field private lladdActivities:Landroid/widget/LinearLayout;

.field private locationProvider:Ljava/lang/String;

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

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

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

.field private mVideoBitmap:Landroid/graphics/Bitmap;

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

.field private queries:Lcom/conceptglobal/pmc/common/Queries;

.field private remarkNames:[Ljava/lang/String;

.field private remarkids:[Ljava/lang/String;

.field private scrollView:Landroid/widget/ScrollView;

.field private segmentId:I

.field private selCustomerId:Ljava/lang/String;

.field private selSegmentID:I

.field private slLastVistdata:Landroid/widget/ScrollView;

.field private tabHost:Landroid/widget/TabHost;

.field private tag:Ljava/lang/String;

.field private territoryDetailsText:Landroid/widget/TextView;

.field private toolbarText:Landroid/widget/TextView;

.field private transId:J

.field tvAlert:Landroid/widget/TextView;

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

.field private videoComressReceiver:Landroid/content/BroadcastReceiver;

.field private videoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private video_thumbnail1:Landroid/widget/ImageView;

.field private video_thumbnail2:Landroid/widget/ImageView;

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

    .line 133
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 137
    const-string v0, "MBAActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->dateDialogID:I

    .line 148
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    .line 182
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selCustomerId:Ljava/lang/String;

    .line 193
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->GPSTimeStamp:Ljava/lang/String;

    .line 213
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->isMIActivity:Z

    .line 214
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->locationProvider:Ljava/lang/String;

    const/4 v2, 0x0

    .line 221
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->hAttributes:Ljava/util/HashMap;

    .line 225
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    const/4 v3, -0x1

    .line 229
    iput v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mForOperations:I

    iput v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mForDates:I

    .line 230
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->layoutId:I

    .line 232
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->datePos:I

    .line 234
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mFiledStr:Ljava/lang/String;

    .line 235
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->updateDOS:Ljava/lang/String;

    .line 246
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->isFromResolution:Z

    .line 706
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$1;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->datesListener:Landroid/view/View$OnClickListener;

    .line 716
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$2;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->datesListenerYearless:Landroid/view/View$OnClickListener;

    .line 770
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$4;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->operationListener:Landroid/view/View$OnClickListener;

    .line 1364
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$6;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLatitudeListener:Landroid/text/TextWatcher;

    .line 2343
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$13;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$13;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2375
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$14;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$14;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2444
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$15;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->videoComressReceiver:Landroid/content/BroadcastReceiver;

    .line 2450
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$16;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$16;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;I)I
    .locals 0

    .line 133
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->datePos:I

    return p1
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;I)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->saveDataIntoDataBase(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->txt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/widget/ScrollView;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;I)I
    .locals 0

    .line 133
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mYear:I

    return p1
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mMonth:I

    return p0
.end method

.method static synthetic access$1302(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;I)I
    .locals 0

    .line 133
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mMonth:I

    return p1
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mDay:I

    return p0
.end method

.method static synthetic access$1402(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;I)I
    .locals 0

    .line 133
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mDay:I

    return p1
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->dateDialogID:I

    return p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->updateDisplay_yearless()V

    return-void
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setAdapter()V

    return-void
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Ljava/util/ArrayList;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Ljava/util/ArrayList;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;Z)Z
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->isImageDeleted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->showRemarkSelectionAlert()V

    return-void
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->prepareAttributeData()V

    return-void
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Ljava/util/List;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->listAttributes_Assgnmt:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    return p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)[Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->remarkNames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/widget/EditText;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->etDiscription:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Ljava/util/ArrayList;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArrIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->locationProvider:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->GPSTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->GPSTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Ljava/util/List;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/widget/TabHost;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/content/Context;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/view/MenuItem;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->miDraft:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/widget/TextView;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/widget/TextView;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method private addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1227
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1228
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 1229
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1230
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0xa

    const/4 v6, 0x4

    .line 1231
    invoke-virtual {v2, v4, v6, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1232
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1233
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1236
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1237
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1238
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x3

    .line 1239
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, -0x1000000

    .line 1240
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1241
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1242
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1244
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1245
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1246
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 1247
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setGravity(I)V

    const p2, 0x7f0800e2

    .line 1248
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1249
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1250
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, p1, p2, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1251
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1252
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->llLastvisitBody:Landroid/widget/LinearLayout;

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

    .line 1214
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 1215
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
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

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1221
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 1222
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 935
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 936
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const v3, 0x7f0c0135

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090459

    .line 937
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 939
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090230

    .line 942
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 943
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 944
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 945
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 946
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->isMIActivity:Z

    const-string p2, "TRANSID"

    const-string p3, "ACTIVITYNAME"

    const/4 v1, 0x1

    const-string v2, "ISSELFASSIGN"

    const-string v3, "SEGMENTID"

    if-eqz p1, :cond_0

    .line 947
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    const-class v6, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 948
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 950
    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 951
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 952
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 954
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 955
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x20000

    .line 956
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const/16 p3, 0x2000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 958
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_1

    .line 962
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    const-class v6, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 964
    :try_start_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getActivityDisplayType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 965
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    const-class v7, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v5

    goto :goto_0

    :catch_0
    move-exception v5

    .line 968
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 970
    :cond_1
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 972
    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 973
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 974
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 976
    const-string p2, "ActivityAssignmentId"

    iget p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityassignmentID:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 977
    const-string p2, "isCompleted"

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->isCompleted:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 979
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 984
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f090417

    .line 985
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 986
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100240

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f090418

    .line 989
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 991
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f090414

    .line 992
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 994
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private bindOperations()V
    .locals 11

    .line 441
    const-string v0, "TerritoryMaster"

    const-string v1, "FarmerMaster"

    const-string v2, "DealerMaster"

    const-string v3, "SAAttributeActivity_FBF"

    :try_start_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->bindQuery:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerOrRetailerBindDataDynamic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mentryValues:Ljava/util/List;

    .line 443
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mentryValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    .line 444
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 445
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropdown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 446
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

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

    .line 449
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerShopName"

    const-string v9, "ContactId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mentryValues:Ljava/util/List;

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

    .line 451
    :try_start_2
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 454
    :cond_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

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

    .line 456
    :try_start_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "FarmerName"

    const-string v9, "RespondentNo"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mentryValues:Ljava/util/List;

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

    .line 458
    :try_start_4
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 461
    :cond_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

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

    .line 463
    :try_start_5
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "territoryName"

    const-string v9, "territoryId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mentryValues:Ljava/util/List;

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

    .line 465
    :try_start_6
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 468
    :cond_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 471
    :cond_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mentryValues:Ljava/util/List;

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

    .line 476
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private captureImage(J)V
    .locals 6

    .line 1347
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1348
    const-string v1, "activityId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1349
    const-string v1, "assignmentId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1351
    :try_start_0
    const-string v1, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    const-string v5, "Complaint"

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1353
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1354
    const-string v3, "SAAttributeActivity_FBF"

    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1356
    :goto_0
    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "setReferenceID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1357
    const-string v1, "attributeId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1358
    const-string v1, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1359
    const-string v1, "imageId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1360
    const-string p1, "FeedBack"

    const-string p2, "105"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1361
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private captureVideo(J)V
    .locals 6

    .line 2664
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2665
    const-string v1, "activityId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2666
    const-string v1, "assignmentId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2668
    :try_start_0
    const-string v1, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    const-string v5, "FeedBack"

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2670
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2671
    const-string v3, "SAAttributeActivity_FBF"

    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2673
    :goto_0
    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "setReferenceID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2674
    const-string v1, "attributeId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2675
    const-string v1, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2676
    const-string v1, "imageId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2677
    const-string p1, "FromFeedBack"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2678
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private checkCustomerDetails()Z
    .locals 5

    .line 2157
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "ActivityCustomerSelection"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selCustomerId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selSegmentID:I

    if-nez v0, :cond_0

    .line 2160
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelectCustomerToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 2166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkImagesMandatory()Z
    .locals 6

    const/4 v0, 0x0

    .line 2631
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getFBFImageIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 2632
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2633
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getApplicationContext()Landroid/content/Context;

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

    .line 2639
    const-string v2, "SAAttributeActivity_FBF"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkTerritorydetails()Z
    .locals 4

    const/4 v0, 0x0

    .line 2618
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->territoryDetailsText:Landroid/widget/TextView;

    const v2, 0x7f100001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->territoryDetailsText:Landroid/widget/TextView;

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

    .line 2619
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getApplicationContext()Landroid/content/Context;

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

    .line 2623
    const-string v2, "SAAttributeActivity_FBF"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkVideoMandatory()Z
    .locals 6

    const/4 v0, 0x1

    .line 2647
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getFBFVideoIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 2648
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2649
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getApplicationContext()Landroid/content/Context;

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

    .line 2655
    const-string v2, "SAAttributeActivity_FBF"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private createOperationAttributes()V
    .locals 23

    move-object/from16 v15, p0

    const v0, 0x7f090335

    .line 378
    invoke-virtual {v15, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->hAttributes:Ljava/util/HashMap;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mattributesnamesArr:Ljava/util/ArrayList;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mOprDatesArr:Ljava/util/ArrayList;

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntrySpinnerArr:Ljava/util/ArrayList;

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArrIds:Ljava/util/ArrayList;

    .line 386
    iget v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

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

    .line 389
    :cond_1
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    goto :goto_1

    .line 387
    :cond_2
    :goto_0
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    .line 392
    :cond_3
    :goto_1
    iget v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    if-eq v0, v11, :cond_8

    if-eq v0, v13, :cond_7

    if-eq v0, v14, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    if-eq v0, v12, :cond_4

    goto :goto_2

    .line 404
    :cond_4
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Planter"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    .line 406
    :cond_5
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Village"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 401
    :cond_6
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Distributor"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 398
    :cond_7
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 395
    :cond_8
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    .line 411
    :goto_2
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 414
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-lez v10, :cond_9

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_9

    .line 418
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    .line 419
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v8

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v16

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v17

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v18

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v19

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    iget-object v11, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

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

    .line 418
    invoke-virtual/range {v0 .. v14}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;I)V

    .line 420
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

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

    :cond_9
    move/from16 v16, v10

    if-gtz v16, :cond_a

    .line 425
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_5

    .line 428
    :cond_a
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 429
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    iget v1, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    const-string v3, "\'"

    const-string v4, "select "

    if-eq v1, v2, :cond_d

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    goto :goto_4

    :cond_b
    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 433
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from DealerMaster where contactId =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->bindQuery:Ljava/lang/String;

    goto :goto_5

    .line 431
    :cond_d
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from FarmerMaster where RespondentNo =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->bindQuery:Ljava/lang/String;

    :cond_e
    :goto_5
    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 2683
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2684
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 2687
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$21;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$21;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    const-string v2, "SAAttributeActivity_FBF"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2705
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData()V
    .locals 5

    .line 1005
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    .line 1006
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1007
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->intentGetData:Landroid/content/Intent;

    const-string v1, "ISSELFASSIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->isSelfAssign:I

    .line 1008
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->intentGetData:Landroid/content/Intent;

    const-string v1, "ACTIVITYID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    .line 1010
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->intentGetData:Landroid/content/Intent;

    const-string v1, "TRANSID"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    .line 1011
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->intentGetData:Landroid/content/Intent;

    const-string v1, "isCompleted"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->isCompleted:Ljava/lang/String;

    .line 1014
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->intentGetData:Landroid/content/Intent;

    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    .line 1019
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->intentGetData:Landroid/content/Intent;

    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityName:Ljava/lang/String;

    .line 1020
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->intentGetData:Landroid/content/Intent;

    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityassignmentID:I

    .line 1021
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->intentGetData:Landroid/content/Intent;

    const-string v1, "isFromResolution"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->isFromResolution:Z

    .line 1028
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1033
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Details("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 1046
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    invoke-virtual {v1, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getFBFAssignmentVisitDetailSelfAssign(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAssignmentVisitDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    .line 1047
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    invoke-virtual {v1, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getLastvistFarmerData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLastVistData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitData:Ljava/util/List;

    .line 1048
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1049
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1057
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getQueryActivityType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 1058
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->isMIActivity:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1062
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private initialization()V
    .locals 2

    const v0, 0x7f090460

    .line 814
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->toolbarText:Landroid/widget/TextView;

    .line 815
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    .line 816
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->intentGetData:Landroid/content/Intent;

    .line 817
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 818
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const v0, 0x7f09041e

    .line 819
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    const v0, 0x7f09019d

    .line 870
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->etResolutionDiscription:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 871
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const v0, 0x7f090524

    .line 873
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->btnResolutionDiscription:Landroid/widget/Button;

    const v0, 0x7f0900c6

    .line 874
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->btn_fbf_resolution:Landroid/widget/Button;

    .line 875
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->btnResolutionDiscription:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 876
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900ee

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->checkBoxExecutor:Landroid/widget/CheckBox;

    .line 878
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->checkBoxSmsReportee:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    .line 879
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->btn_fbf_resolution:Landroid/widget/Button;

    const-string v1, "Resolve"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private insertPictureData()V
    .locals 8

    .line 1381
    const-string v0, "SAAttributeActivity_FBF"

    .line 1387
    :try_start_0
    new-instance v1, Lcom/conceptglobal/pmc/model/PictureReportingData;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/PictureReportingData;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1389
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 1393
    :goto_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1395
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setImageId(J)V

    .line 1396
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "SelfAssignment"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 1398
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1399
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1404
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 1406
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPicturePath(Ljava/lang/String;)V

    .line 1408
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPdaCreatedDate(Ljava/lang/String;)V

    .line 1409
    const-string v5, "false"

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setServerStatus(Ljava/lang/String;)V

    .line 1410
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPDAID(Ljava/lang/String;)V

    .line 1411
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedBy(Ljava/lang/String;)V

    .line 1412
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedDate(Ljava/lang/String;)V

    .line 1413
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedBy(Ljava/lang/String;)V

    .line 1414
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedDate(Ljava/lang/String;)V

    .line 1415
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceType(Ljava/lang/String;)V

    .line 1416
    const-string v5, "0"

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setAssignmentId(Ljava/lang/String;)V

    .line 1417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 1420
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceID(Ljava/lang/String;)V

    .line 1424
    :try_start_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertPictureDetails(Lcom/conceptglobal/pmc/model/PictureReportingData;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    .line 1426
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1427
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_0
    return-void
.end method

.method private isValidData(Z)Z
    .locals 14

    .line 2179
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->listAttributes_Assgnmt:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2184
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "SAAttributeActivity_FBF"

    if-ge v3, v5, :cond_c

    .line 2185
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2205
    :try_start_0
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v8, "0"

    const-wide/16 v9, 0x0

    const-string v11, "TextBoxN"

    const-string v12, "TextBoxND"

    if-ne v7, v0, :cond_6

    .line 2206
    :try_start_1
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-nez v7, :cond_1

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2209
    :cond_1
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v13

    if-ge v7, v13, :cond_2

    const/4 v4, 0x0

    .line 2212
    :cond_2
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v7, :cond_3

    .line 2214
    :try_start_2
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    const/4 v4, 0x0

    .line 2219
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_4
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v11

    cmp-long v7, v11, v9

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    cmp-long v9, v7, v5

    if-gez v9, :cond_b

    goto/16 :goto_1

    .line 2225
    :cond_6
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz v7, :cond_b

    .line 2226
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v13

    if-ge v7, v13, :cond_7

    const/4 v4, 0x0

    .line 2229
    :cond_7
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v7, :cond_8

    .line 2231
    :try_start_4
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    const/4 v4, 0x0

    .line 2236
    :cond_8
    :goto_3
    :try_start_5
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_9
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v11

    cmp-long v7, v11, v9

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_a
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    cmp-long v9, v7, v5

    if-gez v9, :cond_b

    goto/16 :goto_1

    :catch_2
    move-exception v5

    .line 2242
    invoke-static {v6, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    if-nez v4, :cond_d

    if-eqz p1, :cond_d

    .line 2248
    :try_start_6
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->ctx:Landroid/content/Context;

    check-cast p1, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;

    .line 2249
    invoke-interface {p1, v0}, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;->onValidate(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 2251
    invoke-static {v6, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2253
    :goto_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_validationToast()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2254
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2257
    :cond_d
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p1

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/common/Queries;->getIsFBFLatLongMandatory(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_f

    .line 2258
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_e

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_f

    .line 2259
    :cond_e
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2260
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2261
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->scrollView:Landroid/widget/ScrollView;

    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$12;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_f
    move v2, v4

    :goto_6
    return v2

    .line 2180
    :cond_10
    :goto_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return v2
.end method

.method private prepareAttributeData()V
    .locals 8

    .line 1879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1880
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1881
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1883
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v5

    const-string v6, ""

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "test"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1888
    :cond_1
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1889
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1890
    :cond_2
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Multiselect Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1892
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1893
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArrIds_Assgnmt:Ljava/util/List;

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

    if-eqz v4, :cond_5

    .line 1895
    array-length v5, v4

    if-lez v5, :cond_5

    .line 1896
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 1904
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_5

    .line 1905
    new-instance v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 1906
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeId(I)V

    .line 1907
    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1909
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1913
    :cond_3
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1914
    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_3

    .line 1916
    :cond_4
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1923
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 1924
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1925
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 1926
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1927
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    if-eqz v3, :cond_7

    .line 1928
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 1929
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method private resolutionComplete()V
    .locals 12

    .line 1647
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->etResolutionDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1648
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->checkBoxSmsReportee:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    .line 1653
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->checkBoxExecutor:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    const/4 v0, 0x0

    if-eqz v5, :cond_6

    .line 1659
    const-string v1, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1660
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1661
    new-instance v2, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;-><init>()V

    .line 1666
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    .line 1667
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getResolvedNameAndDetails1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1666
    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getResolvedNameAndData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1670
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getActivityResolveId()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1671
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getActivityResolveId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 1675
    :goto_0
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getActivityAssignmentId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getActivityAssignmentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1676
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getActivityAssignmentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 1680
    :goto_1
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getResolvedBy()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getResolvedBy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1681
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getResolvedBy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v1

    .line 1685
    :goto_2
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getResolveName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getResolveName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1686
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->getResolveName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v2, v4

    move-object v4, v1

    move-object v1, v3

    move-object v3, v6

    goto :goto_3

    :cond_4
    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 1699
    :goto_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    iget-wide v8, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    invoke-virtual {v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteFBFResolveTrackActDetails(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1700
    const-string v6, ""

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertResolutionDataIntoDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 1701
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->UpdateFBFResolveChildTransdetails(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->updateChildTransactionDetails(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 1704
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1708
    :goto_4
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1709
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1710
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Service initiated"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1711
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 1712
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 1715
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 1716
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1717
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->startActivity(Landroid/content/Intent;)V

    .line 1718
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->finish()V

    goto :goto_5

    .line 1721
    :cond_6
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    const-string v2, "Please Enter Remarks to Resolve the Complaint."

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_5
    return-void
.end method

.method private saveDataIntoDataBase(I)V
    .locals 29

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1750
    const-string v2, "FarmerFormActivity"

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->insertPictureData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    .line 1752
    const-string v4, ""

    const/4 v5, 0x1

    const-string v6, "0"

    const v7, 0x7f100001

    const-string v8, "SAAttributeActivity_FBF"

    if-eq v0, v5, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_a

    .line 1817
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->prepareAttributeData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 1821
    :try_start_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1822
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    iget v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    iget-wide v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    invoke-virtual {v3, v5, v9, v10, v11}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivityFBF(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1824
    :cond_1
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    iget v11, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    iget v15, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    iget-wide v13, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v16, v13

    move v13, v0

    move v14, v3

    invoke-static/range {v9 .. v21}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdateFBF(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1827
    :try_start_3
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1829
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1830
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_1

    :cond_2
    move-object v14, v6

    .line 1832
    :goto_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selCustomerId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selSegmentID:I

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v0, :cond_5

    .line 1835
    :cond_4
    :try_start_4
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selCustomerId:Ljava/lang/String;

    iget v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selSegmentID:I

    iget-wide v12, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateFBFAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1837
    :try_start_5
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1840
    :cond_5
    :goto_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    iget-wide v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    const/4 v8, 0x2

    invoke-virtual/range {v3 .. v8}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForFeedBackActivities(ILjava/lang/String;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1842
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-wide v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 1843
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-wide v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    const-string v11, "0"

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->locationProvider:Ljava/lang/String;

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->GPSTimeStamp:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateFBFAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1845
    :cond_6
    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    iget-wide v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    const-string v22, "0"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->locationProvider:Ljava/lang/String;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->GPSTimeStamp:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v19, 0x0

    move-wide/from16 v20, v3

    move-object/from16 v23, v0

    move-object/from16 v24, v5

    invoke-static/range {v14 .. v24}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFBFAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 1848
    :try_start_6
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1850
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->finish()V

    goto/16 :goto_a

    .line 1758
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->prepareAttributeData()V

    .line 1765
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1766
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    iget v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    iget-wide v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    invoke-virtual {v2, v5, v9, v10, v11}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivityFBF(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1769
    :cond_8
    :try_start_7
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    iget v11, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    iget v15, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    iget-wide v13, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-wide/from16 v16, v13

    move v13, v0

    move v14, v2

    invoke-static/range {v9 .. v21}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdateFBF(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 1772
    :try_start_8
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1774
    :goto_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    invoke-virtual {v2, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisitFBF(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 1775
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    const-string v17, "false"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->locationProvider:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->GPSTimeStamp:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-wide v15, v14

    move v14, v5

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    invoke-static/range {v9 .. v19}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateFBFAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1777
    :cond_9
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    iget-wide v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    const-string v26, "false"

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->locationProvider:Ljava/lang/String;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->GPSTimeStamp:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v0

    move-wide/from16 v24, v9

    move-object/from16 v27, v2

    move-object/from16 v28, v5

    invoke-static/range {v18 .. v28}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFBFAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1781
    :goto_5
    :try_start_9
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    iget v11, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->activityId:I

    iget-wide v13, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/conceptglobal/pmc/common/Queries;->getchildDetailsActivityFBF(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->updateChildTransactionDetails(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 1783
    :try_start_a
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    const/4 v0, 0x0

    .line 1785
    :goto_7
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 1786
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->images:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1790
    :cond_a
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1791
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_8

    :cond_b
    move-object v14, v6

    .line 1793
    :goto_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selCustomerId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selSegmentID:I

    if-nez v0, :cond_d

    :cond_c
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    if-nez v0, :cond_e

    .line 1795
    :cond_d
    :try_start_b
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selCustomerId:Ljava/lang/String;

    iget v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selSegmentID:I

    iget-wide v12, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateFBFAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    .line 1797
    :try_start_c
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1802
    :cond_e
    :goto_9
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1803
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1804
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Service initiated"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1805
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 1806
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 1809
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    .line 1810
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1811
    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->startActivity(Landroid/content/Intent;)V

    .line 1812
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->finish()V

    goto :goto_a

    .line 1754
    :cond_10
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveNCloseDialogInUFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->showAlertCancel(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 1858
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    return-void
.end method

.method private saveTableAttributeData()V
    .locals 3

    .line 1863
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->fragmentsList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1864
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->fragmentsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1865
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->fragmentsList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    .line 1866
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isDataValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1867
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->testMethod(I)V

    goto :goto_0

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setActionBar()V
    .locals 4

    .line 795
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 796
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 797
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 798
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 799
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 800
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090591

    .line 801
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090581

    .line 802
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 803
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 804
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
    .locals 0

    return-void
.end method

.method private setDate_yearless(I)V
    .locals 2

    .line 2405
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2406
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2408
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2410
    const-string v1, "SAAttributeActivity_FBF"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2412
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2413
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 700
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 701
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 702
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 703
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setLayoutData()V
    .locals 6

    .line 1076
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->btn_fbf_resolution:Landroid/widget/Button;

    const-string v1, "Resolve"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->transId:J

    .line 1078
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getResolveActivityData1(JI)Ljava/lang/String;

    move-result-object v1

    .line 1077
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getResolvedActivityAndData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/ComplaintInfoModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1082
    :try_start_1
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->getResolverComments()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->getResolverComments()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1083
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->getResolverComments()Ljava/lang/String;

    move-result-object v1

    .line 1088
    :cond_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->getIsSMSRequired()I

    move-result v3

    .line 1089
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->getResolveStatus()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->btn_fbf_resolution:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1098
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->etResolutionDiscription:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->etResolutionDiscription:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    if-ne v3, v4, :cond_3

    .line 1101
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->checkBoxExecutor:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1103
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->checkBoxExecutor:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1106
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->checkBoxExecutor:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1107
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->etResolutionDiscription:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1110
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_4
    :goto_2
    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 1267
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->btn_fbf_resolution:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1288
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method private setVideoThumbnail()V
    .locals 0

    return-void
.end method

.method private settingData()V
    .locals 2

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Complaint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 1196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 1197
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mYear:I

    const/4 v1, 0x2

    .line 1198
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mMonth:I

    const/4 v1, 0x5

    .line 1199
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mDay:I

    .line 1201
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0902bf

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->addLastVisitAcitivityAttributes(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private settingTabs()V
    .locals 3

    .line 901
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    const/4 v1, 0x0

    .line 902
    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 903
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 910
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10023e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Complaint Form"

    const v2, 0x7f080112

    invoke-direct {p0, v1, v2, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 913
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resolution"

    const v2, 0x7f080166

    invoke-direct {p0, v1, v2, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private showAlertCancel(Ljava/lang/String;I)V
    .locals 3

    .line 2125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2126
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$11;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$11;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2142
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$10;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$10;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2149
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2150
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDiscardAlert()V
    .locals 3

    .line 2471
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2475
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardSelfAssignConfirmDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2477
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$17;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$17;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2485
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$18;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$18;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2494
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2495
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2496
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showGoBackDialog()V
    .locals 4

    .line 1976
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1977
    const-string v1, "Are you sur,e you want to go back?"

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

    new-instance v3, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$8;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$8;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1983
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$9;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$9;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1990
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1991
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1992
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 1727
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1728
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$7;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1734
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1735
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1736
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showRemarkSelectionAlert()V
    .locals 6

    .line 2504
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const-string v1, "SELECT itemType,itemValue FROM ConfigurableLookupMaster where itemKey=\'DiscardRemarks\'"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 2506
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->remarkNames:[Ljava/lang/String;

    .line 2507
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->remarkids:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2509
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 2510
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->remarkids:[Ljava/lang/String;

    aget-object v4, v0, v2

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 2511
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->remarkNames:[Ljava/lang/String;

    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2513
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2515
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_remarksForNotDoneSelfAssign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2516
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->remarkNames:[Ljava/lang/String;

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$19;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$19;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2567
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->d_remarks:Landroid/app/Dialog;

    .line 2568
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2569
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->d_remarks:Landroid/app/Dialog;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$20;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$20;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private updateDisplay_yearless()V
    .locals 2

    .line 2393
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mFiledStr:Ljava/lang/String;

    .line 2394
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2396
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2398
    const-string v1, "SAAttributeActivity_FBF"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2400
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setDate_yearless(I)V

    return-void
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

    .line 2302
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->listAttributes_Assgnmt:Ljava/util/List;

    .line 2303
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr_Assgnmt:Ljava/util/List;

    .line 2304
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArrIds_Assgnmt:Ljava/util/List;

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

    .line 482
    iget v7, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mForOperations:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mForOperations:I

    .line 483
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 484
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 485
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v10, v12, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0xa

    const/4 v11, 0x4

    const/4 v13, 0x0

    .line 486
    invoke-virtual {v10, v9, v11, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 487
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    .line 489
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 492
    iget v10, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->layoutId:I

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 494
    new-instance v10, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-direct {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 499
    iget-object v11, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    const v14, 0x7f11015b

    invoke-virtual {v10, v11, v14}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 500
    invoke-virtual {v10, v9}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setGravity(I)V

    const/4 v9, 0x5

    .line 501
    invoke-virtual {v10, v9, v13, v13, v13}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setPadding(IIII)V

    if-eqz v3, :cond_1

    .line 504
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

    .line 506
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

    .line 509
    :cond_1
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :goto_0
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 512
    iget v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mForDates:I

    add-int/2addr v3, v8

    iput v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mForDates:I

    .line 522
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

    .line 523
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 524
    const-string v3, "operation"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 525
    iget v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mForOperations:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    .line 526
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

    .line 527
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 528
    iget-object v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    .line 529
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v5, 0x11

    .line 530
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const v5, 0x7f0800d7

    .line 531
    invoke-virtual {v1, v3, v3, v5, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_2

    .line 533
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setEditableFalse(Landroid/widget/EditText;)V

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

    .line 536
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 p11, v7

    if-eqz v3, :cond_5

    .line 537
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 538
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 539
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 540
    iget v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 541
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 542
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v1, 0x7f080096

    .line 543
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 544
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v1, 0x1

    if-eq v6, v1, :cond_4

    .line 548
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_4
    :goto_4
    move-object v5, v3

    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v6, v3

    goto :goto_2

    .line 551
    :cond_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 552
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 553
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 554
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 555
    iget v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 556
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f080096

    .line 557
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 558
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 559
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->datesListenerYearless:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 562
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_4

    :cond_6
    const/4 v7, 0x1

    .line 565
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v7, "b"

    if-eqz v3, :cond_8

    .line 566
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 567
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 568
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 569
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 570
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v5, 0x2

    .line 571
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 572
    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v7, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v7, v5, v3

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v3, 0x5

    .line 573
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_7

    .line 575
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_7
    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v3, v16

    :goto_5
    move-object v5, v3

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x1

    .line 578
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_b

    .line 579
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 580
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 581
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f080096

    .line 582
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v3, 0x11

    .line 583
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 584
    const-string v3, "RespondentNo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 585
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 586
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 587
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    move-object/from16 v17, v9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 589
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v17, v9

    const/16 v9, 0x32

    invoke-direct {v3, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v7, v1

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v1, 0x5

    .line 590
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_6
    const/4 v1, 0x1

    if-eq v6, v1, :cond_a

    .line 593
    invoke-direct {v0, v5}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setEditableFalse(Landroid/widget/EditText;)V

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

    .line 595
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 596
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 597
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 598
    const-string v5, "d"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 599
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 600
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x2002

    .line 601
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_c

    .line 604
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_c
    move-object v7, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v9, v6

    goto/16 :goto_9

    .line 606
    :cond_d
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 607
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 608
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 609
    const-string v5, "e"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 610
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 611
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x20

    .line 612
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_e

    .line 615
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_e
    move-object v9, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    goto :goto_9

    .line 617
    :cond_f
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 618
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 619
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 620
    const-string v7, "n"

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v7, 0x7f080096

    .line 621
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v7, 0x11

    .line 622
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v7, 0x2

    .line 623
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    if-lez v5, :cond_10

    .line 625
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    .line 627
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v9, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_8
    const/4 v3, 0x5

    .line 629
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_11

    .line 631
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_11
    move-object v6, v1

    goto/16 :goto_7

    :cond_12
    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    goto/16 :goto_5

    .line 635
    :goto_9
    new-instance v11, Landroid/widget/EditText;

    invoke-direct {v11, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 636
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v9

    const v9, 0x3f19999a    # 0.6f

    move-object/from16 p5, v14

    const/4 v14, -0x1

    invoke-direct {v0, v14, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 637
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p1, v7

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v9, v14, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 638
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    invoke-direct {v7, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 639
    invoke-virtual {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    invoke-virtual {v11, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "DropDown"

    if-eqz v0, :cond_13

    .line 642
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    move-object/from16 v14, p1

    move-object/from16 v9, p11

    move-object/from16 p1, v11

    move-object/from16 v0, v17

    :goto_b
    move-object/from16 v11, p3

    goto/16 :goto_f

    .line 643
    :cond_13
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 644
    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 645
    :cond_14
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 646
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_15
    move-object/from16 v0, v17

    .line 647
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 648
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c
    move-object/from16 v14, p1

    :goto_d
    move-object/from16 v9, p11

    move-object/from16 p1, v11

    goto :goto_b

    .line 649
    :cond_16
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_17

    .line 650
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    .line 651
    :cond_17
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v14, p1

    .line 652
    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_18
    move-object/from16 v14, p1

    .line 653
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 p1, v11

    if-eqz v17, :cond_19

    move-object/from16 v11, p5

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 v11, v16

    if-eqz v17, :cond_1a

    .line 654
    invoke-virtual {v11, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v9, p11

    goto :goto_b

    :cond_19
    move-object/from16 v11, v16

    .line 655
    :cond_1a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1b

    move-object/from16 v16, v11

    move-object/from16 v11, p3

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 656
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_1b
    move-object/from16 v16, v11

    move-object/from16 v11, p3

    :cond_1c
    :goto_e
    move-object/from16 v9, p11

    .line 658
    :goto_f
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 659
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 660
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_10
    move-object/from16 p3, v11

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    :goto_11
    move-object/from16 v11, p13

    goto/16 :goto_13

    .line 661
    :cond_1d
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 662
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 663
    :cond_1e
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 664
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 665
    :cond_1f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 666
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 667
    :cond_20
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_21

    .line 668
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 669
    :cond_21
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 670
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 671
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

    .line 672
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12

    :cond_23
    move-object/from16 v17, v14

    move-object/from16 v14, v16

    .line 673
    :cond_24
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    .line 674
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_25
    :goto_12
    move-object/from16 p3, v11

    goto :goto_11

    .line 676
    :goto_13
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v9, p0

    .line 677
    iget-object v11, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mattributesnamesArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    iget-object v10, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArrIds:Ljava/util/ArrayList;

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 680
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 681
    :cond_26
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 682
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 683
    :cond_27
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 684
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 685
    :cond_28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 686
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 687
    :cond_29
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    .line 688
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 689
    :cond_2a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 690
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 691
    :cond_2b
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 692
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 693
    :cond_2c
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 694
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    :cond_2d
    :goto_14
    iget v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->layoutId:I

    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

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

    .line 2309
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->fragmentsList:Ljava/util/List;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 2004
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/16 p2, 0xca

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 2075
    const-string p1, "ImagePath"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->imagePath:Ljava/lang/String;

    .line 2076
    const-string p1, "imageId"

    const-wide/16 v3, 0x0

    invoke-virtual {p3, p1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->imageId:J

    .line 2082
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->imageId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailQueryBYImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2084
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mVideoBitmap:Landroid/graphics/Bitmap;

    .line 2085
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->video_thumbnail1:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2086
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->video_thumbnail1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2087
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->imagePath:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 2088
    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mVideoBitmap:Landroid/graphics/Bitmap;

    .line 2089
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->video_thumbnail1:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2090
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->video_thumbnail1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 2037
    const-string p1, "FarmerId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2038
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selCustomerId:Ljava/lang/String;

    .line 2040
    :cond_4
    const-string p1, "SegmentId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2041
    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selSegmentID:I

    .line 2043
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selCustomerId:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->selSegmentID:I

    if-eqz p1, :cond_a

    .line 2045
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->custDetailsText:Landroid/widget/TextView;

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

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 2047
    const-string p2, "MBAACTIVITY"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_6
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 2009
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2010
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2013
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2014
    aget-object p1, p1, v2

    .line 2015
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {p3, p1}, Lcom/conceptglobal/pmc/common/Queries;->getListOfAttributes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 2016
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_a

    .line 2017
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2019
    :try_start_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p1, p3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerAttributeDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p3

    .line 2021
    :try_start_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tag:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 2026
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    const/4 p1, -0x1

    if-eq p2, p1, :cond_9

    if-eqz p2, :cond_8

    goto :goto_1

    .line 2063
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 2058
    :cond_9
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->fetchLocation()V

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

    .line 1470
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 1471
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1492
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 1493
    invoke-virtual {p0, p1, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1596
    :sswitch_1
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    const-string v4, "farmerType"

    const-string v5, "fromTransaction"

    const-string v6, "farmerId"

    const-string v7, "SegmentId"

    if-ne p1, v3, :cond_1

    .line 1598
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1599
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1600
    const-string p1, "The Farmer Is Unsanitized, You Can\'t Edit. "

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1604
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1606
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1607
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1608
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1609
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1610
    const-string v0, "Farmer"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1611
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 1613
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1614
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1615
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1616
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1617
    const-string v0, "Planter"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1618
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 1620
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1621
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1622
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1623
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1624
    const-string v0, "Retailer"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 1627
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1628
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1629
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1630
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1631
    const-string v0, "Distributor"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1632
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1638
    :sswitch_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->resolutionComplete()V

    goto/16 :goto_0

    .line 1482
    :sswitch_3
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->isValidData(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1483
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->checkCustomerDetails()Z

    move-result p1

    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->checkTerritorydetails()Z

    move-result p1

    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->checkImagesMandatory()Z

    move-result p1

    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->checkVideoMandatory()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1485
    const-string p1, "Do you want to save the Complaint?"

    invoke-direct {p0, p1, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->showAlertCancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 1473
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->saveDataIntoDataBase(I)V

    goto :goto_0

    .line 1478
    :sswitch_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->showDiscardAlert()V

    goto :goto_0

    .line 1498
    :sswitch_6
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->fetchLocation()V

    goto :goto_0

    .line 1554
    :sswitch_7
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1579
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1580
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->lastVisitData:Ljava/util/List;

    const/4 v0, 0x0

    const v1, 0x7f0902bf

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 1581
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1582
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1584
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1585
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1591
    :cond_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100153

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->showNoInternetDialog(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09008c -> :sswitch_7
        0x7f0900a2 -> :sswitch_6
        0x7f0900a6 -> :sswitch_5
        0x7f0900b5 -> :sswitch_4
        0x7f0900c5 -> :sswitch_3
        0x7f0900c6 -> :sswitch_2
        0x7f090445 -> :sswitch_1
        0x7f090576 -> :sswitch_0
    .end sparse-switch
.end method

.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 2294
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2295
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->tabHost:Landroid/widget/TabHost;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 0

    .line 2315
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setAdapter()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 252
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003c

    .line 259
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setContentView(I)V

    .line 262
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    .line 263
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 264
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    const p1, 0x7f09045f

    .line 265
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 266
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 267
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->initialization()V

    .line 268
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getData()V

    .line 270
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->settingTabs()V

    .line 271
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setLayoutData()V

    .line 272
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    const/16 v0, 0xa

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->settingData()V

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setListeners()V

    .line 276
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->segmentId:I

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->bindOperations()V

    .line 369
    :cond_1
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->message:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "send"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 371
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->videoComressReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "CompressedSuccess"

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

    .line 731
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$3;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mDay:I

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$3;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 739
    const-string v0, "Select Day-Month"

    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 742
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "year"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 746
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1

    .line 729
    :cond_2
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mYear:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mMonth:I

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mDay:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1947
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024c

    .line 1948
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->miDraft:Landroid/view/MenuItem;

    .line 1949
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1950
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->miDraft:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1951
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 2607
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2608
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->videoComressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2609
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1961
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1968
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->saveDataIntoDataBase(I)V

    .line 1971
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1963
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->showGoBackDialog()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2101
    const-string p2, "onRequestPermissionResult"

    const-string v0, "SAAttributeActivity_FBF"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 2103
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 2106
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2107
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 2109
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->fetchLocation()V

    goto :goto_0

    .line 2112
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 2580
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 2583
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setAdapter()V

    .line 2584
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setVideoThumbnail()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 2280
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 2286
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onStop()V

    return-void
.end method
