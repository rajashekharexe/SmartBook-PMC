.class public Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "SAAttributeActivity_FBF.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;
.implements Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;
.implements Lcom/conceptglobal/pmc/utils/CompressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$DecimalDigitsInputFilter;
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

    .line 138
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 142
    const-string v0, "MBAActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->dateDialogID:I

    .line 153
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selCustomerId:Ljava/lang/String;

    .line 197
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->GPSTimeStamp:Ljava/lang/String;

    .line 217
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->isMIActivity:Z

    .line 218
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->locationProvider:Ljava/lang/String;

    const/4 v2, 0x0

    .line 225
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->hAttributes:Ljava/util/HashMap;

    .line 229
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    const/4 v3, -0x1

    .line 233
    iput v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mForOperations:I

    iput v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mForDates:I

    .line 234
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->layoutId:I

    .line 236
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->datePos:I

    .line 238
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mFiledStr:Ljava/lang/String;

    .line 239
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->updateDOS:Ljava/lang/String;

    .line 250
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->isFromResolution:Z

    .line 714
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$5;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->datesListener:Landroid/view/View$OnClickListener;

    .line 724
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$6;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->datesListenerYearless:Landroid/view/View$OnClickListener;

    .line 778
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$8;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->operationListener:Landroid/view/View$OnClickListener;

    .line 1336
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$12;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLatitudeListener:Landroid/text/TextWatcher;

    .line 2303
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2335
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$20;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$20;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2404
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$21;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$21;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->videoComressReceiver:Landroid/content/BroadcastReceiver;

    .line 2410
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$22;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$22;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/util/List;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;J)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->captureImage(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/TabHost;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/content/Context;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I
    .locals 0

    .line 138
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    return p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/view/MenuItem;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->miDraft:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/TextView;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/TextView;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;I)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->saveDataIntoDataBase(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/ScrollView;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;I)I
    .locals 0

    .line 138
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mYear:I

    return p1
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I
    .locals 0

    .line 138
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mMonth:I

    return p0
.end method

.method static synthetic access$1902(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;I)I
    .locals 0

    .line 138
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mMonth:I

    return p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/util/List;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->videos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I
    .locals 0

    .line 138
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mDay:I

    return p0
.end method

.method static synthetic access$2002(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;I)I
    .locals 0

    .line 138
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mDay:I

    return p1
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I
    .locals 0

    .line 138
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->dateDialogID:I

    return p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->updateDisplay_yearless()V

    return-void
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setAdapter()V

    return-void
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/util/ArrayList;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;Z)Z
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->isImageDeleted:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->showRemarkSelectionAlert()V

    return-void
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->prepareAttributeData()V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/util/List;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;J)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->captureVideo(J)V

    return-void
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)J
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)[Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->remarkNames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/EditText;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->etDiscription:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->locationProvider:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->GPSTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->GPSTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;I)I
    .locals 0

    .line 138
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->datePos:I

    return p1
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->txt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/util/ArrayList;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/util/ArrayList;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArrIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I
    .locals 0

    .line 138
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/TextView;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    return-object p0
.end method

.method private addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1198
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1199
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 1200
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1201
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0xa

    const/4 v6, 0x4

    .line 1202
    invoke-virtual {v2, v4, v6, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1203
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1207
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1208
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1209
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x3

    .line 1210
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, -0x1000000

    .line 1211
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1212
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1213
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1215
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1216
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1217
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 1218
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setGravity(I)V

    const p2, 0x7f0800e2

    .line 1219
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1220
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1221
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, p1, p2, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1222
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1223
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->llLastvisitBody:Landroid/widget/LinearLayout;

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

    .line 1185
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 1186
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
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

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1192
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 1193
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 948
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 949
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const v3, 0x7f0c0135

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090459

    .line 950
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 952
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090230

    .line 955
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 956
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 957
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 958
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 959
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->isMIActivity:Z

    const-string p2, "TRANSID"

    const-string p3, "ACTIVITYNAME"

    const/4 v1, 0x1

    const-string v2, "ISSELFASSIGN"

    const-string v3, "SEGMENTID"

    if-eqz p1, :cond_0

    .line 960
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    const-class v6, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 961
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 963
    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 965
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 967
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 968
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x20000

    .line 969
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const/16 p3, 0x2000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 971
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_1

    .line 975
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    const-class v6, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 977
    :try_start_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getActivityDisplayType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 978
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    const-class v7, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v5

    goto :goto_0

    :catch_0
    move-exception v5

    .line 981
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 983
    :cond_1
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 985
    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 986
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 987
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 989
    const-string p2, "ActivityAssignmentId"

    iget p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityassignmentID:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 990
    const-string p2, "isCompleted"

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->isCompleted:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 992
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 995
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 997
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f090417

    .line 998
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 999
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100240

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f090418

    .line 1002
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 1004
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f090414

    .line 1005
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 1007
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private bindOperations()V
    .locals 11

    .line 449
    const-string v0, "TerritoryMaster"

    const-string v1, "FarmerMaster"

    const-string v2, "DealerMaster"

    const-string v3, "SAAttributeActivity_FBF"

    :try_start_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->bindQuery:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerOrRetailerBindDataDynamic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mentryValues:Ljava/util/List;

    .line 451
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mentryValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    .line 452
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 453
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropdown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 454
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

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

    .line 457
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerShopName"

    const-string v9, "ContactId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mentryValues:Ljava/util/List;

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

    .line 459
    :try_start_2
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 462
    :cond_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

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

    .line 464
    :try_start_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "FarmerName"

    const-string v9, "RespondentNo"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mentryValues:Ljava/util/List;

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

    .line 466
    :try_start_4
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 467
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 469
    :cond_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

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

    .line 471
    :try_start_5
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "territoryName"

    const-string v9, "territoryId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mentryValues:Ljava/util/List;

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

    .line 473
    :try_start_6
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 476
    :cond_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 479
    :cond_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mentryValues:Ljava/util/List;

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

    .line 484
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private captureImage(J)V
    .locals 6

    .line 1319
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1320
    const-string v1, "activityId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1321
    const-string v1, "assignmentId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1323
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

    .line 1325
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1326
    const-string v3, "SAAttributeActivity_FBF"

    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1328
    :goto_0
    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "setReferenceID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1329
    const-string v1, "attributeId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1330
    const-string v1, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1331
    const-string v1, "imageId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1332
    const-string p1, "FeedBack"

    const-string p2, "105"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1333
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private captureVideo(J)V
    .locals 6

    .line 2624
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2625
    const-string v1, "activityId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2626
    const-string v1, "assignmentId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2628
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

    .line 2630
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2631
    const-string v3, "SAAttributeActivity_FBF"

    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2633
    :goto_0
    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "setReferenceID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2634
    const-string v1, "attributeId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2635
    const-string v1, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2636
    const-string v1, "imageId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2637
    const-string p1, "FromFeedBack"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2638
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private checkCustomerDetails()Z
    .locals 5

    .line 2117
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 2119
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selCustomerId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selSegmentID:I

    if-nez v0, :cond_0

    .line 2120
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getApplicationContext()Landroid/content/Context;

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

    .line 2126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkImagesMandatory()Z
    .locals 6

    const/4 v0, 0x0

    .line 2591
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getFBFImageIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 2592
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2593
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getApplicationContext()Landroid/content/Context;

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

    .line 2599
    const-string v2, "SAAttributeActivity_FBF"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkTerritorydetails()Z
    .locals 4

    const/4 v0, 0x0

    .line 2578
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    const v2, 0x7f100001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

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

    .line 2579
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getApplicationContext()Landroid/content/Context;

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

    .line 2583
    const-string v2, "SAAttributeActivity_FBF"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkVideoMandatory()Z
    .locals 6

    const/4 v0, 0x1

    .line 2607
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getFBFVideoIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 2608
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2609
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getApplicationContext()Landroid/content/Context;

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

    .line 2615
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

    .line 386
    invoke-virtual {v15, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->hAttributes:Ljava/util/HashMap;

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mattributesnamesArr:Ljava/util/ArrayList;

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mOprDatesArr:Ljava/util/ArrayList;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntrySpinnerArr:Ljava/util/ArrayList;

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArrIds:Ljava/util/ArrayList;

    .line 394
    iget v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

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

    .line 397
    :cond_1
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    goto :goto_1

    .line 395
    :cond_2
    :goto_0
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    .line 400
    :cond_3
    :goto_1
    iget v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    if-eq v0, v11, :cond_8

    if-eq v0, v13, :cond_7

    if-eq v0, v14, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    if-eq v0, v12, :cond_4

    goto :goto_2

    .line 412
    :cond_4
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Planter"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    .line 414
    :cond_5
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Village"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 409
    :cond_6
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Distributor"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 406
    :cond_7
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 403
    :cond_8
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    .line 419
    :goto_2
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 422
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-lez v10, :cond_9

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_9

    .line 426
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    .line 427
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v8

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v16

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v17

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v18

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v19

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    iget-object v11, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

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

    .line 426
    invoke-virtual/range {v0 .. v14}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;I)V

    .line 428
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

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

    .line 433
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_5

    .line 436
    :cond_a
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 437
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    iget v1, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

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

    .line 441
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from DealerMaster where contactId =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->bindQuery:Ljava/lang/String;

    goto :goto_5

    .line 439
    :cond_d
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from FarmerMaster where RespondentNo =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->bindQuery:Ljava/lang/String;

    :cond_e
    :goto_5
    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 2643
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2644
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 2647
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$27;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$27;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    const-string v2, "SAAttributeActivity_FBF"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2665
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData()V
    .locals 6

    .line 1018
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    .line 1019
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1020
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->intentGetData:Landroid/content/Intent;

    const-string v1, "ISSELFASSIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->isSelfAssign:I

    .line 1021
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->intentGetData:Landroid/content/Intent;

    const-string v1, "ACTIVITYID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    .line 1023
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->intentGetData:Landroid/content/Intent;

    const-string v1, "TRANSID"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    .line 1024
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->intentGetData:Landroid/content/Intent;

    const-string v1, "isCompleted"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->isCompleted:Ljava/lang/String;

    .line 1027
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->intentGetData:Landroid/content/Intent;

    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    .line 1032
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->intentGetData:Landroid/content/Intent;

    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityName:Ljava/lang/String;

    .line 1033
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->intentGetData:Landroid/content/Intent;

    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityassignmentID:I

    .line 1034
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->intentGetData:Landroid/content/Intent;

    const-string v1, "isFromResolution"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->isFromResolution:Z

    .line 1041
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1046
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Details("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 1052
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentType(I)I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnCustomerDetails:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1054
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->custDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnCustomerDetails:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1057
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->custDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1059
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-virtual {v1, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getFBFAssignmentVisitDetailSelfAssign(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAssignmentVisitDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    .line 1060
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    invoke-virtual {v1, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLastvistFarmerData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLastVistData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitData:Ljava/util/List;

    .line 1061
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1062
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1063
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1066
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1070
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getQueryActivityType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    .line 1071
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->isMIActivity:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1075
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-void
.end method

.method private initialization()V
    .locals 4

    const v0, 0x7f090460

    .line 822
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->toolbarText:Landroid/widget/TextView;

    .line 823
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    .line 824
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->intentGetData:Landroid/content/Intent;

    .line 825
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 826
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const v0, 0x7f09041e

    .line 827
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09052c

    .line 829
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvFarmer:Landroid/widget/TextView;

    .line 830
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09051d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnDealer:Landroid/widget/Button;

    .line 831
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090522

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnDiscription:Landroid/widget/Button;

    .line 832
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09019b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->etDiscription:Landroid/widget/EditText;

    .line 833
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090503

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvIsBayerFarmer:Landroid/widget/TextView;

    .line 834
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090576

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvRetailers:Landroid/widget/TextView;

    .line 835
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0902b7

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lladdActivities:Landroid/widget/LinearLayout;

    .line 836
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnSave:Landroid/widget/Button;

    .line 837
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnInactive:Landroid/widget/Button;

    const/16 v1, 0x8

    .line 838
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0900c5

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnVisit:Landroid/widget/Button;

    .line 840
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0905be

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->custDetailsText:Landroid/widget/TextView;

    .line 841
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f090082

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnCustomerDetails:Landroid/widget/Button;

    .line 842
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0905c1

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 843
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v3, 0x7f090085

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnTerritoryDetails:Landroid/widget/Button;

    .line 845
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v3, 0x7f09021c

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->gridView:Landroid/widget/GridView;

    .line 848
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v3, 0x7f09021d

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mVideoGridView:Landroid/widget/GridView;

    const/4 v0, 0x0

    .line 849
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->video_thumbnail1:Landroid/widget/ImageView;

    .line 850
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->video_thumbnail2:Landroid/widget/ImageView;

    const v0, 0x7f0902de

    .line 851
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lvLastVisitData:Landroid/widget/ListView;

    const v0, 0x7f090409

    .line 852
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->slLastVistdata:Landroid/widget/ScrollView;

    const v0, 0x7f0902a7

    .line 853
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->llLastvisitBody:Landroid/widget/LinearLayout;

    .line 854
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnDealer:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvRetailers:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 856
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnLatLng:Landroid/widget/ImageView;

    .line 857
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09054e

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLatitude:Landroid/widget/TextView;

    .line 858
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090557

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLongitude:Landroid/widget/TextView;

    .line 859
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090352

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvpictures:Landroid/widget/TextView;

    .line 860
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0905ec

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvVideos:Landroid/widget/TextView;

    .line 861
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLatitude:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLatitudeListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->imagelist:Ljava/util/ArrayList;

    .line 864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->images:Ljava/util/List;

    .line 865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->videos:Ljava/util/List;

    const v0, 0x7f0903b9

    .line 867
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->scrollView:Landroid/widget/ScrollView;

    const v0, 0x7f090600

    .line 868
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->webView:Landroid/webkit/WebView;

    .line 869
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090553

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvAlert:Landroid/widget/TextView;

    .line 873
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090445

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->fullDetailsBtn:Landroid/widget/TextView;

    const v0, 0x7f090335

    .line 874
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 876
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mentryValues:Ljava/util/List;

    .line 877
    sget v0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->fromComplaint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f09019d

    .line 878
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->etResolutionDiscription:Landroid/widget/EditText;

    .line 879
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const v0, 0x7f090524

    .line 881
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnResolutionDiscription:Landroid/widget/Button;

    const v0, 0x7f0900c6

    .line 882
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btn_fbf_resolution:Landroid/widget/Button;

    .line 883
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnResolutionDiscription:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900ee

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->checkBoxExecutor:Landroid/widget/CheckBox;

    .line 885
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->checkBoxSmsReportee:Landroid/widget/CheckBox;

    :cond_0
    return-void
.end method

.method private insertPictureData()V
    .locals 8

    .line 1353
    const-string v0, "SAAttributeActivity_FBF"

    .line 1359
    :try_start_0
    new-instance v1, Lcom/conceptglobal/pmc/model/PictureReportingData;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/PictureReportingData;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1361
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 1365
    :goto_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1367
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setImageId(J)V

    .line 1368
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

    .line 1370
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1371
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1376
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 1378
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPicturePath(Ljava/lang/String;)V

    .line 1380
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPdaCreatedDate(Ljava/lang/String;)V

    .line 1381
    const-string v5, "false"

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setServerStatus(Ljava/lang/String;)V

    .line 1382
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPDAID(Ljava/lang/String;)V

    .line 1383
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedBy(Ljava/lang/String;)V

    .line 1384
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedDate(Ljava/lang/String;)V

    .line 1385
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedBy(Ljava/lang/String;)V

    .line 1386
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedDate(Ljava/lang/String;)V

    .line 1387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceType(Ljava/lang/String;)V

    .line 1388
    const-string v5, "0"

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setAssignmentId(Ljava/lang/String;)V

    .line 1389
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 1392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceID(Ljava/lang/String;)V

    .line 1396
    :try_start_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertPictureDetails(Lcom/conceptglobal/pmc/model/PictureReportingData;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    .line 1398
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1399
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_0
    return-void
.end method

.method private isValidData(Z)Z
    .locals 14

    .line 2139
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2144
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "SAAttributeActivity_FBF"

    if-ge v3, v5, :cond_c

    .line 2145
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2165
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

    .line 2166
    :try_start_1
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2169
    :cond_1
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2172
    :cond_2
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v7, :cond_3

    .line 2174
    :try_start_2
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2179
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

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

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

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2185
    :cond_6
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2186
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2189
    :cond_7
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v7, :cond_8

    .line 2191
    :try_start_4
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2196
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

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

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

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2202
    invoke-static {v6, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    if-nez v4, :cond_d

    if-eqz p1, :cond_d

    .line 2208
    :try_start_6
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->ctx:Landroid/content/Context;

    check-cast p1, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;

    .line 2209
    invoke-interface {p1, v0}, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;->onValidate(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 2211
    invoke-static {v6, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2213
    :goto_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getApplicationContext()Landroid/content/Context;

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

    .line 2214
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2217
    :cond_d
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p1

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/common/Queries;->getIsFBFLatLongMandatory(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_f

    .line 2218
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_e

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_f

    .line 2219
    :cond_e
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2220
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2221
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->scrollView:Landroid/widget/ScrollView;

    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$18;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$18;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_f
    move v2, v4

    :goto_6
    return v2

    .line 2140
    :cond_10
    :goto_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return v2
.end method

.method static synthetic lambda$setBottomViewPadding$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 2700
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const v1, 0x1020013

    .line 2703
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TabWidget;

    if-eqz p0, :cond_0

    .line 2706
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingLeft()I

    move-result v1

    .line 2707
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingTop()I

    move-result v2

    .line 2708
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingRight()I

    move-result v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 2705
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/TabWidget;->setPadding(IIII)V

    :cond_0
    return-object p1
.end method

.method private prepareAttributeData()V
    .locals 8

    .line 1839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1840
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1841
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v5

    const-string v6, ""

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 1844
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1848
    :cond_1
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1849
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1850
    :cond_2
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Multiselect Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1852
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1853
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArrIds_Assgnmt:Ljava/util/List;

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

    .line 1855
    array-length v5, v4

    if-lez v5, :cond_5

    .line 1856
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 1864
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_5

    .line 1865
    new-instance v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 1866
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeId(I)V

    .line 1867
    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1869
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1873
    :cond_3
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 1874
    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_3

    .line 1876
    :cond_4
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 1883
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 1884
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1885
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 1886
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1887
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    if-eqz v3, :cond_7

    .line 1888
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 1889
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method private resolutionComplete()V
    .locals 12

    .line 1619
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->etResolutionDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1620
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->checkBoxSmsReportee:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    .line 1625
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->checkBoxExecutor:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    if-eqz v0, :cond_1

    .line 1632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1633
    new-instance v0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;-><init>()V

    .line 1635
    iget-wide v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v9, 0x0

    invoke-static/range {v1 .. v11}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertResolutionDataIntoDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 1637
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1639
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Service initiated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1640
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 1641
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 1644
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 1645
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1646
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->startActivity(Landroid/content/Intent;)V

    .line 1647
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->finish()V

    :cond_1
    return-void
.end method

.method private saveDataIntoDataBase(I)V
    .locals 39

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1677
    const-string v2, "Something went wrong please perform activity again."

    const-string v3, "FarmerFormActivity"

    const-string v4, "  --  "

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->insertPictureData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v5, 0x0

    if-eqz v0, :cond_16

    .line 1679
    const-string v6, ""

    const-string v7, "0"

    const-string v8, "SAAttributeActivity_FBF"

    const v9, 0x7f100001

    const/4 v10, 0x1

    if-eq v0, v10, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_d

    .line 1777
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->prepareAttributeData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 1781
    :try_start_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1782
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    iget v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    iget-wide v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-virtual {v2, v4, v5, v10, v11}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivityFBF(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1784
    :cond_1
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    iget v12, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    iget v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    iget-wide v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v16, v0

    move-wide/from16 v17, v4

    invoke-static/range {v10 .. v22}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdateFBF(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1787
    :try_start_3
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1789
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1790
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_1

    :cond_2
    move-object v14, v7

    .line 1792
    :goto_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selCustomerId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selSegmentID:I

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v0, :cond_5

    .line 1795
    :cond_4
    :try_start_4
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selCustomerId:Ljava/lang/String;

    iget v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selSegmentID:I

    iget-wide v12, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateFBFAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1797
    :try_start_5
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1800
    :cond_5
    :goto_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    iget-wide v7, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    const/4 v9, 0x2

    invoke-virtual/range {v4 .. v9}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForFeedBackActivities(ILjava/lang/String;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1802
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-virtual {v2, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 1803
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget-wide v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    const-string v12, "0"

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->locationProvider:Ljava/lang/String;

    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->GPSTimeStamp:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v14}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateFBFAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1805
    :cond_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    iget-wide v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    const-string v23, "0"

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->locationProvider:Ljava/lang/String;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->GPSTimeStamp:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v0

    move-wide/from16 v21, v4

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    invoke-static/range {v15 .. v25}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFBFAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 1808
    :try_start_6
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1810
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->finish()V

    goto/16 :goto_d

    .line 1685
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->prepareAttributeData()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    const/4 v0, 0x0

    .line 1691
    :goto_4
    :try_start_7
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 1692
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1693
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v11

    if-ne v11, v10, :cond_c

    .line 1694
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1695
    :cond_8
    const-string v6, "SAattributesActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mandatory value empty "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 1696
    :goto_5
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const-string v8, "mandatory value empty dropdown "

    const-string v9, "SAattributesActivity_FBF"

    if-ge v6, v7, :cond_a

    .line 1697
    :try_start_8
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v7

    const-string v11, "Multiselect Dropdown"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1698
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->showErrorAlertDialog(Ljava/lang/String;)V

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1703
    :cond_a
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Dropdown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1704
    invoke-static {v0, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->setFieldDataEmpty(IZ)V

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Please reselect "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " again"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->showAlert(Ljava/lang/String;)V

    .line 1706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1708
    :cond_b
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->setFieldDataEmpty(IZ)V

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Please enter  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->showAlert(Ljava/lang/String;)V

    .line 1710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mandatory value empty entry field "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :goto_6
    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 1723
    :cond_d
    :try_start_9
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 1724
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    iget v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    iget-wide v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-virtual {v2, v3, v4, v10, v11}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivityFBF(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1727
    :cond_e
    :try_start_a
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    iget v12, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    iget v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    iget-wide v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v16, v0

    move-wide/from16 v17, v2

    invoke-static/range {v10 .. v22}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdateFBF(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 1730
    :try_start_b
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1732
    :goto_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisitFBF(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 1733
    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    iget-wide v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    const-string v18, "false"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->locationProvider:Ljava/lang/String;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->GPSTimeStamp:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v15, 0x0

    move-wide/from16 v16, v2

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-static/range {v10 .. v20}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateFBFAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1735
    :cond_f
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    iget-wide v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    const-string v27, "false"

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->locationProvider:Ljava/lang/String;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->GPSTimeStamp:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-wide/from16 v25, v2

    move-object/from16 v28, v4

    move-object/from16 v29, v10

    invoke-static/range {v19 .. v29}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFBFAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    :goto_8
    const-string v28, ""

    const-string v29, ""

    const-string v30, ""

    const-string v31, ""

    const-string v32, ""

    const-string v33, ""

    iget-wide v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    const/16 v37, 0x0

    const/16 v38, 0x1

    const/16 v36, 0x0

    move-wide/from16 v34, v2

    invoke-static/range {v28 .. v38}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertResolutionDataIntoDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 1741
    :try_start_c
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    iget v12, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->activityId:I

    iget-wide v14, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/conceptglobal/pmc/common/Queries;->getchildDetailsActivityFBF(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->updateChildTransactionDetails(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    .line 1743
    :try_start_d
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    const/4 v0, 0x0

    .line 1745
    :goto_a
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    .line 1746
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->images:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1750
    :cond_10
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1751
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_b

    :cond_11
    move-object v14, v7

    .line 1753
    :goto_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selCustomerId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selSegmentID:I

    if-nez v0, :cond_13

    :cond_12
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    if-nez v0, :cond_14

    .line 1755
    :cond_13
    :try_start_e
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selCustomerId:Ljava/lang/String;

    iget v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selSegmentID:I

    iget-wide v12, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateFBFAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    .line 1757
    :try_start_f
    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1762
    :cond_14
    :goto_c
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1763
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1764
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Service initiated"

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1765
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 1766
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 1769
    :cond_15
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    .line 1770
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1771
    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->startActivity(Landroid/content/Intent;)V

    .line 1772
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->finish()V

    goto :goto_d

    .line 1717
    :catch_6
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->showErrorAlertDialog(Ljava/lang/String;)V

    return-void

    .line 1681
    :cond_16
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveNCloseDialogInUFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->showAlertCancel(Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    .line 1818
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    return-void
.end method

.method private saveTableAttributeData()V
    .locals 3

    .line 1823
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->fragmentsList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1824
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->fragmentsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1825
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->fragmentsList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    .line 1826
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isDataValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1827
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->testMethod(I)V

    goto :goto_0

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setActionBar()V
    .locals 4

    .line 803
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 804
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 805
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 806
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 807
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 808
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090591

    .line 809
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090581

    .line 810
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 811
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 812
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
    .locals 7

    .line 1408
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment_Testimonial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->images:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 1410
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1411
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->images:Ljava/util/List;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->imagelist:Ljava/util/ArrayList;

    invoke-direct {v0, v4, v5, v6}, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    .line 1412
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1413
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->gridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1414
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1415
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvpictures:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1418
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvpictures:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1420
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-wide v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getVideoDetaisQry_assignment_testimonial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->videos:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1421
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1422
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->videos:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->videoList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5}, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->videoAdapter:Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    .line 1423
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1424
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mVideoGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->videoAdapter:Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1425
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1426
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1428
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1429
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setBottomViewPadding(Landroid/widget/TabHost;)V
    .locals 1

    const p1, 0x7f09041e

    .line 2699
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private setDate_yearless(I)V
    .locals 2

    .line 2365
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2366
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2368
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2370
    const-string v1, "SAAttributeActivity_FBF"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2372
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2373
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 708
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 709
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 710
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 711
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setLayoutData()V
    .locals 9

    .line 1086
    const-string v0, ""

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvFarmer:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pmcFarmerInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnDealer:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_prefDealerInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnDiscription:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitDescInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->etDiscription:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDescInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1090
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnSave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnSave:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1092
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnInactive:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnVisit:Landroid/widget/Button;

    const-string v3, "Save"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 1095
    :try_start_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    const v4, 0x7f100001

    .line 1097
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-virtual {v6, v1, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryDraftQuery(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1099
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 1102
    :cond_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-virtual {v6, v1, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getEcexutionSegmentIdDraftQuery(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 1104
    iput v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selSegmentID:I

    .line 1105
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->transId:J

    invoke-virtual {v6, v1, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getEcexutionSegmentValueDraftQuery(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selCustomerId:Ljava/lang/String;

    .line 1106
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v8, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selSegmentID:I

    invoke-virtual {v7, v5, v8}, Lcom/conceptglobal/pmc/common/Queries;->getCustomerNameBySegmentValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1107
    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selSegmentID:I

    if-eq v6, v3, :cond_1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    if-ne v6, v2, :cond_2

    .line 1108
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->custDetailsText:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1110
    :cond_2
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->custDetailsText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1113
    :try_start_2
    const-string v5, "SAAttributeActivity_FBF"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1118
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {v5, v1}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryNamesListQuery(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1119
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 1120
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/TerritoryMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/TerritoryMaster;->getTerritoryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/TerritoryMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TerritoryMaster;->getTerritoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 1124
    :cond_4
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->etDiscription:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getVisitDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLatitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_5

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLongitude()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_5

    .line 1126
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLatitude:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvLongitude:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getRemarks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->locationProvider:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1132
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tag:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 1231
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1232
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnInactive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1233
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnVisit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tvRetailers:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1235
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btnLatLng:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1236
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->fullDetailsBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1237
    sget v0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->fromComplaint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->btn_fbf_resolution:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->custDetailsText:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$9;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$9;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1250
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->territoryDetailsText:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$10;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$10;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1260
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method private setVideoThumbnail()V
    .locals 0

    return-void
.end method

.method private settingData()V
    .locals 2

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Complaint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 1167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 1168
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mYear:I

    const/4 v1, 0x2

    .line 1169
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mMonth:I

    const/4 v1, 0x5

    .line 1170
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mDay:I

    .line 1172
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0902bf

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1176
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->addLastVisitAcitivityAttributes(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private settingTabs()V
    .locals 6

    .line 908
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    const/4 v1, 0x0

    .line 909
    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 910
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 915
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->isFromResolution:Z

    const/4 v1, 0x1

    const v2, 0x7f080166

    const v3, 0x7f10023e

    const v4, 0x7f080112

    const-string v5, "Complaint Form"

    if-ne v0, v1, :cond_0

    .line 917
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v4, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 920
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resolution"

    invoke-direct {p0, v1, v2, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 923
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v4, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 926
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10023f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capture"

    invoke-direct {p0, v1, v2, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    .line 2685
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2686
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$29;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$29;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2693
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2694
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2695
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertCancel(Ljava/lang/String;I)V
    .locals 3

    .line 2085
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2086
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$17;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$17;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2102
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$16;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$16;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2108
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2109
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2110
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDiscardAlert()V
    .locals 3

    .line 2431
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2435
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardSelfAssignConfirmDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2437
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$23;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$23;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2445
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$24;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$24;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2454
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2455
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2456
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showErrorAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 2670
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2671
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$28;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$28;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2679
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2680
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2681
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showGoBackDialog()V
    .locals 4

    .line 1936
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1937
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

    new-instance v3, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$14;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$14;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1943
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$15;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$15;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1950
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1951
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1952
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 1654
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1655
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$13;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$13;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1661
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1662
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1663
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showRemarkSelectionAlert()V
    .locals 6

    .line 2464
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const-string v1, "SELECT itemType,itemValue FROM ConfigurableLookupMaster where itemKey=\'DiscardRemarks\'"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 2466
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->remarkNames:[Ljava/lang/String;

    .line 2467
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->remarkids:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2469
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 2470
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->remarkids:[Ljava/lang/String;

    aget-object v4, v0, v2

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 2471
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->remarkNames:[Ljava/lang/String;

    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2473
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2475
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_remarksForNotDoneSelfAssign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2476
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->remarkNames:[Ljava/lang/String;

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2527
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->d_remarks:Landroid/app/Dialog;

    .line 2528
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2529
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->d_remarks:Landroid/app/Dialog;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$26;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$26;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private updateDisplay_yearless()V
    .locals 2

    .line 2353
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mFiledStr:Ljava/lang/String;

    .line 2354
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2356
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2358
    const-string v1, "SAAttributeActivity_FBF"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2360
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setDate_yearless(I)V

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

    .line 2262
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->listAttributes_Assgnmt:Ljava/util/List;

    .line 2263
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr_Assgnmt:Ljava/util/List;

    .line 2264
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArrIds_Assgnmt:Ljava/util/List;

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

    .line 490
    iget v7, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mForOperations:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mForOperations:I

    .line 491
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 492
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 493
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v10, v12, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0xa

    const/4 v11, 0x4

    const/4 v13, 0x0

    .line 494
    invoke-virtual {v10, v9, v11, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 495
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    .line 497
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 500
    iget v10, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->layoutId:I

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 502
    new-instance v10, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-direct {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 507
    iget-object v11, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    const v14, 0x7f11015b

    invoke-virtual {v10, v11, v14}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 508
    invoke-virtual {v10, v9}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setGravity(I)V

    const/4 v9, 0x5

    .line 509
    invoke-virtual {v10, v9, v13, v13, v13}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setPadding(IIII)V

    if-eqz v3, :cond_1

    .line 512
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

    .line 514
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

    .line 517
    :cond_1
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    :goto_0
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 520
    iget v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mForDates:I

    add-int/2addr v3, v8

    iput v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mForDates:I

    .line 530
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

    .line 531
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 532
    const-string v3, "operation"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 533
    iget v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mForOperations:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    .line 534
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

    .line 535
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 536
    iget-object v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    .line 537
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v5, 0x11

    .line 538
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const v5, 0x7f0800d7

    .line 539
    invoke-virtual {v1, v3, v3, v5, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_2

    .line 541
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setEditableFalse(Landroid/widget/EditText;)V

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

    .line 544
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 p11, v7

    if-eqz v3, :cond_5

    .line 545
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 546
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 547
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 548
    iget v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 549
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 550
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v1, 0x7f080096

    .line 551
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 552
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v1, 0x1

    if-eq v6, v1, :cond_4

    .line 556
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_4
    :goto_4
    move-object v5, v3

    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v6, v3

    goto :goto_2

    .line 559
    :cond_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 560
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 561
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 562
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 563
    iget v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 564
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f080096

    .line 565
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 566
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 567
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->datesListenerYearless:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 570
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_4

    :cond_6
    const/4 v7, 0x1

    .line 573
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v7, "b"

    if-eqz v3, :cond_8

    .line 574
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 575
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 576
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 577
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 578
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v5, 0x2

    .line 579
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 580
    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v7, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v7, v5, v3

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v3, 0x5

    .line 581
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_7

    .line 583
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_7
    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v3, v16

    :goto_5
    move-object v5, v3

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x1

    .line 586
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_b

    .line 587
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 588
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 589
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f080096

    .line 590
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v3, 0x11

    .line 591
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 592
    const-string v3, "RespondentNo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 593
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 594
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 595
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    move-object/from16 v17, v9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 597
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v17, v9

    const/16 v9, 0x32

    invoke-direct {v3, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v7, v1

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v1, 0x5

    .line 598
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_6
    const/4 v1, 0x1

    if-eq v6, v1, :cond_a

    .line 601
    invoke-direct {v0, v5}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setEditableFalse(Landroid/widget/EditText;)V

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

    .line 603
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 604
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 605
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 606
    const-string v5, "d"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 607
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 608
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x2002

    .line 609
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_c

    .line 612
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_c
    move-object v7, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v9, v6

    goto/16 :goto_9

    .line 614
    :cond_d
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 615
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 616
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 617
    const-string v5, "e"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 618
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 619
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x20

    .line 620
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_e

    .line 623
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_e
    move-object v9, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    goto :goto_9

    .line 625
    :cond_f
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 626
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 627
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 628
    const-string v7, "n"

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v7, 0x7f080096

    .line 629
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v7, 0x11

    .line 630
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v7, 0x2

    .line 631
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    if-lez v5, :cond_10

    .line 633
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    .line 635
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v9, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_8
    const/4 v3, 0x5

    .line 637
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_11

    .line 639
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_11
    move-object v6, v1

    goto/16 :goto_7

    :cond_12
    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    goto/16 :goto_5

    .line 643
    :goto_9
    new-instance v11, Landroid/widget/EditText;

    invoke-direct {v11, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 644
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v9

    const v9, 0x3f19999a    # 0.6f

    move-object/from16 p5, v14

    const/4 v14, -0x1

    invoke-direct {v0, v14, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 645
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p1, v7

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v9, v14, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 646
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    invoke-direct {v7, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 647
    invoke-virtual {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    invoke-virtual {v11, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "DropDown"

    if-eqz v0, :cond_13

    .line 650
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    move-object/from16 v14, p1

    move-object/from16 v9, p11

    move-object/from16 p1, v11

    move-object/from16 v0, v17

    :goto_b
    move-object/from16 v11, p3

    goto/16 :goto_f

    .line 651
    :cond_13
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 652
    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 653
    :cond_14
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 654
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_15
    move-object/from16 v0, v17

    .line 655
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 656
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c
    move-object/from16 v14, p1

    :goto_d
    move-object/from16 v9, p11

    move-object/from16 p1, v11

    goto :goto_b

    .line 657
    :cond_16
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_17

    .line 658
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    .line 659
    :cond_17
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v14, p1

    .line 660
    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_18
    move-object/from16 v14, p1

    .line 661
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 p1, v11

    if-eqz v17, :cond_19

    move-object/from16 v11, p5

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 v11, v16

    if-eqz v17, :cond_1a

    .line 662
    invoke-virtual {v11, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v9, p11

    goto :goto_b

    :cond_19
    move-object/from16 v11, v16

    .line 663
    :cond_1a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1b

    move-object/from16 v16, v11

    move-object/from16 v11, p3

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 664
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_1b
    move-object/from16 v16, v11

    move-object/from16 v11, p3

    :cond_1c
    :goto_e
    move-object/from16 v9, p11

    .line 666
    :goto_f
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 667
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 668
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_10
    move-object/from16 p3, v11

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    :goto_11
    move-object/from16 v11, p13

    goto/16 :goto_13

    .line 669
    :cond_1d
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 670
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 671
    :cond_1e
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 672
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 673
    :cond_1f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 674
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 675
    :cond_20
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_21

    .line 676
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 677
    :cond_21
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 678
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 679
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

    .line 680
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12

    :cond_23
    move-object/from16 v17, v14

    move-object/from16 v14, v16

    .line 681
    :cond_24
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    .line 682
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_25
    :goto_12
    move-object/from16 p3, v11

    goto :goto_11

    .line 684
    :goto_13
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v9, p0

    .line 685
    iget-object v11, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mattributesnamesArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v10, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArrIds:Ljava/util/ArrayList;

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 688
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 689
    :cond_26
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 690
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 691
    :cond_27
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 692
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 693
    :cond_28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 694
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 695
    :cond_29
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    .line 696
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 697
    :cond_2a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 698
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 699
    :cond_2b
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 700
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 701
    :cond_2c
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 702
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_2d
    :goto_14
    iget v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->layoutId:I

    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 793
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

    .line 2269
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->fragmentsList:Ljava/util/List;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1964
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

    .line 2035
    const-string p1, "ImagePath"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->imagePath:Ljava/lang/String;

    .line 2036
    const-string p1, "imageId"

    const-wide/16 v3, 0x0

    invoke-virtual {p3, p1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->imageId:J

    .line 2042
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->imageId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailQueryBYImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2044
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mVideoBitmap:Landroid/graphics/Bitmap;

    .line 2045
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->video_thumbnail1:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2046
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->video_thumbnail1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2047
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->imagePath:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 2048
    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mVideoBitmap:Landroid/graphics/Bitmap;

    .line 2049
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->video_thumbnail1:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2050
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->video_thumbnail1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 1997
    const-string p1, "FarmerId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1998
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selCustomerId:Ljava/lang/String;

    .line 2000
    :cond_4
    const-string p1, "SegmentId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2001
    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selSegmentID:I

    .line 2003
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selCustomerId:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->selSegmentID:I

    if-eqz p1, :cond_a

    .line 2005
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->custDetailsText:Landroid/widget/TextView;

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

    .line 2007
    const-string p2, "MBAACTIVITY"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_6
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 1969
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1970
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1973
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1974
    aget-object p1, p1, v2

    .line 1975
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {p3, p1}, Lcom/conceptglobal/pmc/common/Queries;->getListOfAttributes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 1976
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_a

    .line 1977
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

    .line 1979
    :try_start_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p1, p3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerAttributeDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p3

    .line 1981
    :try_start_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tag:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1986
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    const/4 p1, -0x1

    if-eq p2, p1, :cond_9

    if-eqz p2, :cond_8

    goto :goto_1

    .line 2023
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 2018
    :cond_9
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->fetchLocation()V

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

    .line 1442
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 1443
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1464
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 1465
    invoke-virtual {p0, p1, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1568
    :sswitch_1
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    const-string v4, "farmerType"

    const-string v5, "fromTransaction"

    const-string v6, "farmerId"

    const-string v7, "SegmentId"

    if-ne p1, v3, :cond_1

    .line 1570
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1571
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1572
    const-string p1, "The Farmer Is Unsanitized, You Can\'t Edit. "

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1576
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1578
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1579
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1580
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1581
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1582
    const-string v0, "Farmer"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1583
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 1585
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1586
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1587
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1588
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1589
    const-string v0, "Planter"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1590
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 1592
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1593
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1594
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1595
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1596
    const-string v0, "Retailer"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1597
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 1599
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1600
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1601
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1603
    const-string v0, "Distributor"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1610
    :sswitch_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->resolutionComplete()V

    goto/16 :goto_0

    .line 1454
    :sswitch_3
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->isValidData(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1455
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->checkCustomerDetails()Z

    move-result p1

    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->checkTerritorydetails()Z

    move-result p1

    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->checkImagesMandatory()Z

    move-result p1

    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->checkVideoMandatory()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1457
    const-string p1, "Do you want to save the Complaint?"

    invoke-direct {p0, p1, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->showAlertCancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 1445
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->saveDataIntoDataBase(I)V

    goto :goto_0

    .line 1450
    :sswitch_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->showDiscardAlert()V

    goto :goto_0

    .line 1470
    :sswitch_6
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->fetchLocation()V

    goto :goto_0

    .line 1526
    :sswitch_7
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1551
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1552
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->lastVisitData:Ljava/util/List;

    const/4 v0, 0x0

    const v1, 0x7f0902bf

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 1553
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1554
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1556
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1557
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1563
    :cond_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100153

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->showNoInternetDialog(Ljava/lang/String;)V

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

    .line 2254
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2255
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 0

    .line 2275
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setAdapter()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 256
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 262
    sget p1, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->fromComplaint:I

    if-nez p1, :cond_0

    const p1, 0x7f0c003b

    .line 263
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setContentView(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0c003c

    .line 266
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setContentView(I)V

    .line 270
    :goto_0
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    .line 271
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 272
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    const p1, 0x7f09045f

    .line 273
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 274
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 275
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->initialization()V

    .line 276
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->tabHost:Landroid/widget/TabHost;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setBottomViewPadding(Landroid/widget/TabHost;)V

    .line 277
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getData()V

    .line 279
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->settingTabs()V

    .line 280
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setLayoutData()V

    .line 281
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    const/16 v0, 0xa

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->createOperationAttributes()V

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->settingData()V

    .line 284
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setListeners()V

    .line 285
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->segmentId:I

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_2

    .line 286
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->bindOperations()V

    .line 288
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->gridView:Landroid/widget/GridView;

    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$1;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 298
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mVideoGridView:Landroid/widget/GridView;

    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$2;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0901e3

    .line 313
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 317
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$3;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901e0

    .line 330
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const/16 v0, 0x8

    .line 331
    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    .line 332
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$4;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->message:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "send"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 379
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->videoComressReceiver:Landroid/content/BroadcastReceiver;

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

    .line 739
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$7;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mDay:I

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$7;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 747
    const-string v0, "Select Day-Month"

    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 750
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "year"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 754
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1

    .line 737
    :cond_2
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mYear:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mMonth:I

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mDay:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1907
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024c

    .line 1908
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->miDraft:Landroid/view/MenuItem;

    .line 1909
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1910
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->miDraft:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1911
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 2567
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2568
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->videoComressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2569
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1921
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1928
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->saveDataIntoDataBase(I)V

    .line 1931
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1923
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->showGoBackDialog()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2061
    const-string p2, "onRequestPermissionResult"

    const-string v0, "SAAttributeActivity_FBF"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 2063
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 2066
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2067
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 2069
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->fetchLocation()V

    goto :goto_0

    .line 2072
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 2540
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 2543
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setAdapter()V

    .line 2544
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setVideoThumbnail()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 2240
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 2246
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onStop()V

    return-void
.end method
