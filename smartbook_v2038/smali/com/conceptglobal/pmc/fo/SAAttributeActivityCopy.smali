.class public Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "SAAttributeActivityCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;
.implements Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;
.implements Lcom/conceptglobal/pmc/utils/CompressListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$OTPAsync;,
        Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$DecimalDigitsInputFilter;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final DATEDIALOGID_YEARLESS:I = 0x1

.field private static final GETCUSTOMER:I = 0x3

.field private static final GETNEWACTIVITY:I = 0x2

.field private static final GETRETAILERLIST:I = 0x1

.field private static final INITIALCROPID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SAAttributeActivity"


# instance fields
.field private GPSTimeStamp:Ljava/lang/String;

.field private activityId:I

.field private activityName:Ljava/lang/String;

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

.field private btnSave:Landroid/widget/Button;

.field private btnTerritoryDetails:Landroid/widget/Button;

.field private btnVisit:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private custDetailsText:Landroid/widget/TextView;

.field protected d_remarks:Landroid/app/Dialog;

.field private dateDialogID:I

.field private datePos:I

.field datesListener:Landroid/view/View$OnClickListener;

.field datesListenerYearless:Landroid/view/View$OnClickListener;

.field dynamicColumnnames:Ljava/lang/StringBuilder;

.field private etDiscription:Landroid/widget/EditText;

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

.field private mOTP:Ljava/lang/String;

.field private mOprDatesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedMobile:Ljava/lang/String;

.field private mSelectedName:Ljava/lang/String;

.field private mSelectedRespondentNo:Ljava/lang/String;

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

.field private otpVerificationDialog:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

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

    .line 147
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 151
    const-string v0, "MBAActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->dateDialogID:I

    .line 162
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    .line 194
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selCustomerId:Ljava/lang/String;

    .line 204
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->GPSTimeStamp:Ljava/lang/String;

    .line 224
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->isMIActivity:Z

    .line 225
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->locationProvider:Ljava/lang/String;

    const/4 v2, 0x0

    .line 232
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->hAttributes:Ljava/util/HashMap;

    .line 236
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    const/4 v3, -0x1

    .line 240
    iput v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mForOperations:I

    iput v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mForDates:I

    .line 241
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->layoutId:I

    .line 243
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->datePos:I

    .line 245
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mFiledStr:Ljava/lang/String;

    .line 246
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->updateDOS:Ljava/lang/String;

    .line 709
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$5;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->datesListener:Landroid/view/View$OnClickListener;

    .line 719
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$6;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->datesListenerYearless:Landroid/view/View$OnClickListener;

    .line 773
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$8;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->operationListener:Landroid/view/View$OnClickListener;

    .line 1278
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$12;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLatitudeListener:Landroid/text/TextWatcher;

    .line 2262
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$19;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$19;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2294
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$20;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$20;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2363
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$21;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$21;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videoComressReceiver:Landroid/content/BroadcastReceiver;

    .line 2369
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$22;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$22;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Ljava/util/List;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;J)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->captureImage(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setAdapter()V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/widget/TabHost;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/content/Context;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)I
    .locals 0

    .line 147
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    return p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/view/MenuItem;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->miDraft:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/widget/TextView;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/widget/TextView;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;I)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->saveDataIntoDataBase(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/widget/ScrollView;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;I)I
    .locals 0

    .line 147
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mYear:I

    return p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Ljava/util/List;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)I
    .locals 0

    .line 147
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mMonth:I

    return p0
.end method

.method static synthetic access$2002(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;I)I
    .locals 0

    .line 147
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mMonth:I

    return p1
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)I
    .locals 0

    .line 147
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mDay:I

    return p0
.end method

.method static synthetic access$2102(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;I)I
    .locals 0

    .line 147
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mDay:I

    return p1
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)I
    .locals 0

    .line 147
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->dateDialogID:I

    return p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->updateDisplay_yearless()V

    return-void
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Ljava/util/ArrayList;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;Z)Z
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->isImageDeleted:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->showRemarkSelectionAlert()V

    return-void
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->prepareAttributeData()V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Ljava/util/List;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->listAttributes_Assgnmt:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;J)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->captureVideo(J)V

    return-void
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)[Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->remarkNames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/widget/EditText;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->etDiscription:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->locationProvider:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->GPSTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->GPSTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getOTPDetails()V

    return-void
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;I)I
    .locals 0

    .line 147
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->datePos:I

    return p1
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->txt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Ljava/util/ArrayList;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Ljava/util/ArrayList;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArrIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)I
    .locals 0

    .line 147
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/widget/TextView;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    return-object p0
.end method

.method private addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1142
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1143
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 1144
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1145
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0xa

    const/4 v6, 0x4

    .line 1146
    invoke-virtual {v2, v4, v6, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1147
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1148
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1151
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1152
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1153
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x3

    .line 1154
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, -0x1000000

    .line 1155
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1156
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1157
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1159
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1160
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1161
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 1162
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setGravity(I)V

    const p2, 0x7f0800e2

    .line 1163
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1164
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1165
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, p1, p2, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1166
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1167
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->llLastvisitBody:Landroid/widget/LinearLayout;

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

    .line 1129
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 1130
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
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

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1136
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 1137
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 919
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 920
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const v3, 0x7f0c0135

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090459

    .line 921
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 923
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090230

    .line 926
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 927
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 928
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 929
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 930
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->isMIActivity:Z

    const-string p2, "TRANSID"

    const-string p3, "ACTIVITYNAME"

    const/4 v1, 0x1

    const-string v2, "ISSELFASSIGN"

    const-string v3, "SEGMENTID"

    if-eqz p1, :cond_0

    .line 931
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    const-class v6, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 932
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 934
    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 935
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 936
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 938
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 939
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x20000

    .line 940
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const/16 p3, 0x2000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 942
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_1

    .line 946
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    const-class v6, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 948
    :try_start_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getActivityDisplayType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 949
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    const-class v7, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v5

    goto :goto_0

    :catch_0
    move-exception v5

    .line 952
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 954
    :cond_1
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 956
    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 957
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 958
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 961
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 962
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 965
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 967
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f090417

    .line 968
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 969
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100240

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f090418

    .line 970
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1

    .line 971
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f090414

    .line 972
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 974
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private bindOperations()V
    .locals 11

    .line 444
    const-string v0, "TerritoryMaster"

    const-string v1, "FarmerMaster"

    const-string v2, "DealerMaster"

    const-string v3, "SAAttributeActivity"

    :try_start_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->bindQuery:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerOrRetailerBindDataDynamic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mentryValues:Ljava/util/List;

    .line 446
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mentryValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    .line 447
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 448
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropdown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 449
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

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

    .line 452
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerShopName"

    const-string v9, "ContactId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mentryValues:Ljava/util/List;

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

    .line 454
    :try_start_2
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 457
    :cond_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

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

    .line 459
    :try_start_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "FarmerName"

    const-string v9, "RespondentNo"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mentryValues:Ljava/util/List;

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

    .line 461
    :try_start_4
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 464
    :cond_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

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

    .line 466
    :try_start_5
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "territoryName"

    const-string v9, "territoryId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mentryValues:Ljava/util/List;

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

    .line 468
    :try_start_6
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 471
    :cond_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 474
    :cond_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mentryValues:Ljava/util/List;

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

    .line 479
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private callOTPAsync()V
    .locals 3

    .line 2632
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$OTPAsync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$OTPAsync;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$OTPAsync;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2636
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private captureImage(J)V
    .locals 6

    .line 1261
    const-string v0, "Testimonial"

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1262
    const-string v2, "activityId"

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1263
    const-string v2, "assignmentId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1265
    :try_start_0
    const-string v2, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1267
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1268
    const-string v4, "SAAttributeActivity"

    invoke-static {v4, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1270
    :goto_0
    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "setReferenceID"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    const-string v2, "attributeId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1272
    const-string v2, "farmerId"

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    const-string v2, "imageId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1274
    const-string p1, "101"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1275
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private captureVideo(J)V
    .locals 6

    .line 2583
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2584
    const-string v1, "activityId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2585
    const-string v1, "assignmentId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2587
    :try_start_0
    const-string v1, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    const-string v5, "Testimonial"

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

    .line 2589
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2590
    const-string v3, "SAAttributeActivity"

    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2592
    :goto_0
    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "setReferenceID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2593
    const-string v1, "attributeId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2594
    const-string v1, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2595
    const-string v1, "imageId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2596
    const-string p1, "FromTestimonials"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2597
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private checkCustomerDetails()Z
    .locals 5

    .line 2042
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 2044
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selCustomerId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selSegmentID:I

    if-nez v0, :cond_0

    .line 2045
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getApplicationContext()Landroid/content/Context;

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

    .line 2051
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkImagesMandatory()Z
    .locals 6

    const/4 v0, 0x0

    .line 2550
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getTSTImageIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 2551
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2552
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getApplicationContext()Landroid/content/Context;

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

    .line 2558
    const-string v2, "SAAttributeActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkTerritorydetails()Z
    .locals 4

    const/4 v0, 0x0

    .line 2537
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    const v2, 0x7f100001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

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

    .line 2538
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getApplicationContext()Landroid/content/Context;

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

    .line 2542
    const-string v2, "SAAttributeActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkVideoMandatory()Z
    .locals 6

    const/4 v0, 0x1

    .line 2566
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getTSTVideoIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 2567
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2568
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getApplicationContext()Landroid/content/Context;

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

    .line 2574
    const-string v2, "SAAttributeActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private createOperationAttributes()V
    .locals 23

    move-object/from16 v15, p0

    const v0, 0x7f090335

    .line 381
    invoke-virtual {v15, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->hAttributes:Ljava/util/HashMap;

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mattributesnamesArr:Ljava/util/ArrayList;

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mOprDatesArr:Ljava/util/ArrayList;

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntrySpinnerArr:Ljava/util/ArrayList;

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArrIds:Ljava/util/ArrayList;

    .line 389
    iget v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

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

    .line 392
    :cond_1
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    goto :goto_1

    .line 390
    :cond_2
    :goto_0
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    .line 395
    :cond_3
    :goto_1
    iget v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    if-eq v0, v11, :cond_8

    if-eq v0, v13, :cond_7

    if-eq v0, v14, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    if-eq v0, v12, :cond_4

    goto :goto_2

    .line 407
    :cond_4
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Planter"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    .line 409
    :cond_5
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Village"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 404
    :cond_6
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Distributor"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 401
    :cond_7
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 398
    :cond_8
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    .line 414
    :goto_2
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 417
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-lez v10, :cond_9

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_9

    .line 421
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    .line 422
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v8

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v16

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v17

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v18

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v19

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    iget-object v11, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

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

    .line 421
    invoke-virtual/range {v0 .. v14}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;I)V

    .line 423
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

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

    .line 428
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_5

    .line 431
    :cond_a
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 432
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    iget v1, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

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

    .line 436
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from DealerMaster where contactId =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->bindQuery:Ljava/lang/String;

    goto :goto_5

    .line 434
    :cond_d
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from FarmerMaster where RespondentNo =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->bindQuery:Ljava/lang/String;

    :cond_e
    :goto_5
    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 2602
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2603
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 2606
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$27;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$27;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    const-string v2, "SAAttributeActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2624
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData()V
    .locals 6

    .line 985
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    .line 986
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 987
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->intentGetData:Landroid/content/Intent;

    const-string v1, "ISSELFASSIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->isSelfAssign:I

    .line 990
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->intentGetData:Landroid/content/Intent;

    const-string v1, "TRANSID"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 992
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->intentGetData:Landroid/content/Intent;

    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    .line 998
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    .line 1001
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->intentGetData:Landroid/content/Intent;

    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1004
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityName:Ljava/lang/String;

    .line 1008
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1013
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Details("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 1019
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentType(I)I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnCustomerDetails:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1021
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->custDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1023
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnCustomerDetails:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->custDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1026
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-virtual {v1, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getTSTAssignmentVisitDetailSelfAssign(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAssignmentVisitDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    .line 1027
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    invoke-virtual {v1, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLastvistFarmerData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLastVistData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitData:Ljava/util/List;

    .line 1028
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 1029
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1030
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1033
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1037
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getQueryActivityType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    .line 1038
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->isMIActivity:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1042
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private getOTPDetails()V
    .locals 9

    .line 2660
    const-string v0, "getOTPDetails"

    const-string v1, "SAAttributeActivity"

    .line 0
    const-string v2, "mOTP ::::::::::::: "

    const-string v3, "OTP Request jsonObj ::::::::::::: "

    const/4 v4, 0x0

    .line 2662
    :try_start_0
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    new-instance v5, Lcom/conceptglobal/pmc/model/otp/GetOTP;

    invoke-direct {v5}, Lcom/conceptglobal/pmc/model/otp/GetOTP;-><init>()V

    .line 2667
    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setRespondentNo(Ljava/lang/String;)V

    .line 2668
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mSelectedMobile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setMobileNo(Ljava/lang/String;)V

    .line 2669
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setPdaid(Ljava/lang/String;)V

    .line 2670
    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/otp/GetOTP;->setCustomerType(Ljava/lang/String;)V

    .line 2671
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 2672
    invoke-virtual {v6, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2673
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetTestimonialConsentOTP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2675
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2676
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    const-class v3, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;

    invoke-virtual {v6, v4, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;

    .line 2679
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Success"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2680
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->getData()Lcom/conceptglobal/pmc/model/otp/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/otp/Data;->getOTP()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mOTP:Ljava/lang/String;

    .line 2681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mOTP:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2683
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2687
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initialization()V
    .locals 4

    const v0, 0x7f090460

    .line 817
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->toolbarText:Landroid/widget/TextView;

    .line 818
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    .line 819
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->intentGetData:Landroid/content/Intent;

    .line 820
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 821
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const v0, 0x7f09041e

    .line 822
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09052c

    .line 824
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvFarmer:Landroid/widget/TextView;

    .line 825
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09051d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnDealer:Landroid/widget/Button;

    .line 826
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090522

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnDiscription:Landroid/widget/Button;

    .line 827
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09019b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->etDiscription:Landroid/widget/EditText;

    .line 828
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090503

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvIsBayerFarmer:Landroid/widget/TextView;

    .line 829
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090576

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvRetailers:Landroid/widget/TextView;

    .line 830
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0902b7

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lladdActivities:Landroid/widget/LinearLayout;

    .line 831
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnSave:Landroid/widget/Button;

    .line 832
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnInactive:Landroid/widget/Button;

    const/16 v1, 0x8

    .line 833
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0900c5

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnVisit:Landroid/widget/Button;

    .line 835
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0905be

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->custDetailsText:Landroid/widget/TextView;

    .line 836
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f090082

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnCustomerDetails:Landroid/widget/Button;

    .line 837
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0905c1

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 838
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v3, 0x7f090085

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnTerritoryDetails:Landroid/widget/Button;

    .line 840
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f09021c

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->gridView:Landroid/widget/GridView;

    .line 843
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f09021d

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mVideoGridView:Landroid/widget/GridView;

    const/4 v0, 0x0

    .line 844
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->video_thumbnail1:Landroid/widget/ImageView;

    .line 845
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->video_thumbnail2:Landroid/widget/ImageView;

    const v0, 0x7f0902de

    .line 846
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lvLastVisitData:Landroid/widget/ListView;

    const v0, 0x7f090409

    .line 847
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->slLastVistdata:Landroid/widget/ScrollView;

    const v0, 0x7f0902a7

    .line 848
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->llLastvisitBody:Landroid/widget/LinearLayout;

    .line 849
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnDealer:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvRetailers:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnLatLng:Landroid/widget/ImageView;

    .line 852
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09054e

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLatitude:Landroid/widget/TextView;

    .line 853
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090557

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLongitude:Landroid/widget/TextView;

    .line 854
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090352

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvpictures:Landroid/widget/TextView;

    .line 855
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0905ec

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvVideos:Landroid/widget/TextView;

    .line 856
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLatitude:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLatitudeListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->imagelist:Ljava/util/ArrayList;

    .line 859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->images:Ljava/util/List;

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videos:Ljava/util/List;

    const v0, 0x7f0903b9

    .line 862
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->scrollView:Landroid/widget/ScrollView;

    const v0, 0x7f090600

    .line 863
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->webView:Landroid/webkit/WebView;

    .line 864
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090553

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvAlert:Landroid/widget/TextView;

    .line 868
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090445

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->fullDetailsBtn:Landroid/widget/TextView;

    const v0, 0x7f090335

    .line 869
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mentryValues:Ljava/util/List;

    return-void
.end method

.method private insertPictureData()V
    .locals 8

    .line 1295
    const-string v0, "SAAttributeActivity"

    .line 1301
    :try_start_0
    new-instance v1, Lcom/conceptglobal/pmc/model/PictureReportingData;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/PictureReportingData;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1303
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 1307
    :goto_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1309
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setImageId(J)V

    .line 1310
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

    .line 1312
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1313
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1318
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 1320
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPicturePath(Ljava/lang/String;)V

    .line 1322
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPdaCreatedDate(Ljava/lang/String;)V

    .line 1323
    const-string v5, "false"

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setServerStatus(Ljava/lang/String;)V

    .line 1324
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPDAID(Ljava/lang/String;)V

    .line 1325
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedBy(Ljava/lang/String;)V

    .line 1326
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedDate(Ljava/lang/String;)V

    .line 1327
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedBy(Ljava/lang/String;)V

    .line 1328
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedDate(Ljava/lang/String;)V

    .line 1329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceType(Ljava/lang/String;)V

    .line 1330
    const-string v5, "0"

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setAssignmentId(Ljava/lang/String;)V

    .line 1331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 1334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceID(Ljava/lang/String;)V

    .line 1338
    :try_start_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertPictureDetails(Lcom/conceptglobal/pmc/model/PictureReportingData;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    .line 1340
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1341
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_0
    return-void
.end method

.method private isValidData(Z)Z
    .locals 14

    .line 2064
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->listAttributes_Assgnmt:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2069
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "SAAttributeActivity"

    if-ge v3, v5, :cond_c

    .line 2070
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2090
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

    .line 2091
    :try_start_1
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2094
    :cond_1
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2097
    :cond_2
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v7, :cond_3

    .line 2099
    :try_start_2
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2104
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

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

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

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2110
    :cond_6
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2111
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2114
    :cond_7
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v7, :cond_8

    .line 2116
    :try_start_4
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2121
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

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

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

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 2127
    invoke-static {v6, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    if-nez v4, :cond_d

    if-eqz p1, :cond_d

    .line 2133
    :try_start_6
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ctx:Landroid/content/Context;

    check-cast p1, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;

    .line 2134
    invoke-interface {p1, v0}, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;->onValidate(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 2136
    invoke-static {v6, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2138
    :goto_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getApplicationContext()Landroid/content/Context;

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

    .line 2139
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2142
    :cond_d
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p1

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/common/Queries;->getIsTSTLatLongMandatory(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_f

    .line 2143
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_e

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_f

    .line 2144
    :cond_e
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2145
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2146
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->scrollView:Landroid/widget/ScrollView;

    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$18;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$18;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_f
    move v2, v4

    :goto_6
    return v2

    .line 2065
    :cond_10
    :goto_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return v2
.end method

.method private otpValidation()V
    .locals 4

    .line 1557
    :try_start_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1558
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    .line 1559
    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerNameMobileQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1558
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerNameMobileData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v0

    .line 1560
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getFarmerName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mSelectedName:Ljava/lang/String;

    .line 1561
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getMobile()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mSelectedMobile:Ljava/lang/String;

    .line 1562
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mSelectedRespondentNo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1564
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    .line 1565
    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getRetailerNameMobileQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1564
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDealerNameMobileData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/DealerMaster;

    move-result-object v0

    .line 1566
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->getContactName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mSelectedName:Ljava/lang/String;

    .line 1567
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->getMobileNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mSelectedMobile:Ljava/lang/String;

    .line 1568
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DealerMaster;->getContactId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mSelectedRespondentNo:Ljava/lang/String;

    .line 1582
    :cond_2
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getpmc_tstconfirmVisitCompleteDialogText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->showAlertCancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1584
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private prepareAttributeData()V
    .locals 8

    .line 1763
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1764
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1765
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v5

    const-string v6, ""

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 1768
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1772
    :cond_1
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1773
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1774
    :cond_2
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Multiselect Dropdown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1776
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1777
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArrIds_Assgnmt:Ljava/util/List;

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

    .line 1779
    array-length v5, v4

    if-lez v5, :cond_5

    .line 1780
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 1788
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_5

    .line 1789
    new-instance v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    .line 1790
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeId(I)V

    .line 1791
    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1793
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1797
    :cond_3
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 1798
    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_3

    .line 1800
    :cond_4
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

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

    .line 1807
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 1808
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1809
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 1810
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1811
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    if-eqz v3, :cond_7

    .line 1812
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 1813
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method private saveDataIntoDataBase(I)V
    .locals 28

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1614
    const-string v2, "FarmerFormActivity"

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->insertPictureData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    .line 1616
    const-string v4, ""

    const-string v5, "0"

    const v6, 0x7f100001

    const-string v7, "SAAttributeActivity"

    const/4 v8, 0x1

    if-eq v0, v8, :cond_a

    const/4 v8, 0x2

    if-eq v0, v8, :cond_0

    goto/16 :goto_d

    .line 1687
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->prepareAttributeData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 1691
    :try_start_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1692
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    iget v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    iget-wide v11, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivityTST(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1694
    :cond_1
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    iget v11, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    iget v15, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    iget-wide v13, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v16, v13

    move v13, v0

    move v14, v8

    invoke-static/range {v9 .. v21}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertTSTFarmerActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1697
    :try_start_3
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1699
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1700
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    :cond_2
    move-object v13, v5

    .line 1702
    :goto_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selCustomerId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selSegmentID:I

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v0, :cond_5

    .line 1704
    :cond_4
    :try_start_4
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selCustomerId:Ljava/lang/String;

    iget v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selSegmentID:I

    iget-wide v11, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateTSTAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1706
    :try_start_5
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1709
    :cond_5
    :goto_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1710
    :cond_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 1711
    :goto_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 1712
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->images:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1715
    :cond_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1716
    :goto_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 1717
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videos:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateVideoServerStatus(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1724
    :cond_8
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    iget-wide v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    const/4 v8, 0x2

    invoke-virtual/range {v3 .. v8}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForTestimonials(ILjava/lang/String;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1726
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-wide v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 1727
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-wide v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    const-string v11, "0"

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->locationProvider:Ljava/lang/String;

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->GPSTimeStamp:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateTSTAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1729
    :cond_9
    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    iget-wide v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    const-string v22, "0"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->locationProvider:Ljava/lang/String;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->GPSTimeStamp:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v19, 0x0

    move-wide/from16 v20, v3

    move-object/from16 v23, v0

    move-object/from16 v24, v5

    invoke-static/range {v14 .. v24}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertTSTAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 1732
    :try_start_6
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1734
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->finish()V

    goto/16 :goto_d

    .line 1622
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->prepareAttributeData()V

    .line 1629
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b

    .line 1630
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    iget v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    iget-wide v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivitySelfAssign(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1633
    :cond_b
    :try_start_7
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    iget v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    iget v14, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    iget-wide v12, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-wide v15, v12

    move v12, v0

    move v13, v2

    invoke-static/range {v8 .. v20}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdateTST(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    .line 1636
    :try_start_8
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1638
    :goto_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v8, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-virtual {v2, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 1639
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iget-wide v14, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    const-string v16, "false"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->locationProvider:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->GPSTimeStamp:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-static/range {v8 .. v18}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateTSTAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1641
    :cond_c
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    iget-wide v8, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    const-string v25, "false"

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->locationProvider:Ljava/lang/String;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->GPSTimeStamp:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move-wide/from16 v23, v8

    move-object/from16 v26, v2

    move-object/from16 v27, v10

    invoke-static/range {v17 .. v27}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertTSTAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1645
    :goto_7
    :try_start_9
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    iget v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->activityId:I

    iget-wide v12, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/conceptglobal/pmc/common/Queries;->getchildDetailsActivity(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->updateChildTransactionDetails(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 1647
    :try_start_a
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    const/4 v0, 0x0

    .line 1649
    :goto_9
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 1650
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->images:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    .line 1653
    :goto_a
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 1654
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1658
    :cond_e
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1659
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_b

    :cond_f
    move-object v13, v5

    .line 1661
    :goto_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selCustomerId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selSegmentID:I

    if-nez v0, :cond_11

    :cond_10
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    if-nez v0, :cond_12

    .line 1663
    :cond_11
    :try_start_b
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selCustomerId:Ljava/lang/String;

    iget v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selSegmentID:I

    iget-wide v11, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateTSTAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    .line 1666
    :try_start_c
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1671
    :cond_12
    :goto_c
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1672
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1673
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Service initiated"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1674
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 1675
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 1679
    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    .line 1680
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1681
    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->startActivity(Landroid/content/Intent;)V

    .line 1682
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->finish()V

    goto :goto_d

    .line 1618
    :cond_14
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveNCloseDialogInUFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->showAlertCancel(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    .line 1742
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    return-void
.end method

.method private saveTableAttributeData()V
    .locals 3

    .line 1747
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->fragmentsList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1748
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->fragmentsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1749
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->fragmentsList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    .line 1750
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isDataValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1751
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->testMethod(I)V

    goto :goto_0

    .line 1753
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setActionBar()V
    .locals 4

    .line 798
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 799
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 800
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 801
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 802
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 803
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090591

    .line 804
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090581

    .line 805
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 806
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
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

    .line 1350
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment_Testimonial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->images:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 1352
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1353
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->images:Ljava/util/List;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->imagelist:Ljava/util/ArrayList;

    invoke-direct {v0, v4, v5, v6}, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    .line 1354
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1355
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->gridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1356
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1357
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvpictures:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1360
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvpictures:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1362
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-wide v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getVideoDetaisQry_assignment_testimonial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videos:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1363
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1364
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videos:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videoList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5}, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videoAdapter:Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    .line 1365
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1366
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mVideoGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videoAdapter:Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1367
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1368
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1370
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1371
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setDate_yearless(I)V
    .locals 2

    .line 2324
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2325
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2327
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2329
    const-string v1, "SAAttributeActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2331
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2332
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 703
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 704
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 705
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 706
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setLayoutData()V
    .locals 9

    .line 1053
    const-string v0, ""

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvFarmer:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pmcFarmerInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnDealer:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_prefDealerInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnDiscription:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitDescInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->etDiscription:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDescInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1057
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnSave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnSave:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1059
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnInactive:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnVisit:Landroid/widget/Button;

    const-string v3, "Save"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 1062
    :try_start_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    const v4, 0x7f100001

    .line 1064
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-virtual {v6, v1, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getTSTTerritoryDraftQuery(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1066
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 1069
    :cond_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-virtual {v6, v1, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getTSTEcexutionSegmentIdDraftQuery(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 1071
    iput v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selSegmentID:I

    .line 1072
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->transId:J

    invoke-virtual {v6, v1, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getTSTEcexutionSegmentValueDraftQuery(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selCustomerId:Ljava/lang/String;

    .line 1073
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v8, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selSegmentID:I

    invoke-virtual {v7, v5, v8}, Lcom/conceptglobal/pmc/common/Queries;->getCustomerNameBySegmentValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1074
    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selSegmentID:I

    if-eq v6, v3, :cond_1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    if-ne v6, v2, :cond_2

    .line 1075
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->custDetailsText:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1077
    :cond_2
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->custDetailsText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1080
    :try_start_2
    const-string v5, "SAAttributeActivity"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1085
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {v5, v1}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryNamesListQuery(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1086
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 1087
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/TerritoryMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/TerritoryMaster;->getTerritoryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/TerritoryMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TerritoryMaster;->getTerritoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 1091
    :cond_4
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->etDiscription:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getVisitDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLatitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_5

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLongitude()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_5

    .line 1093
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLatitude:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvLongitude:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getRemarks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->locationProvider:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1099
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tag:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 1175
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1176
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnInactive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnVisit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1178
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tvRetailers:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1179
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->btnLatLng:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1180
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->fullDetailsBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->custDetailsText:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$9;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$9;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1190
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->territoryDetailsText:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$10;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$10;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method private setVideoThumbnail()V
    .locals 0

    return-void
.end method

.method private settingData()V
    .locals 2

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Testimonial("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 1111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 1112
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mYear:I

    const/4 v1, 0x2

    .line 1113
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mMonth:I

    const/4 v1, 0x5

    .line 1114
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mDay:I

    .line 1116
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0902bf

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->addLastVisitAcitivityAttributes(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private settingTabs()V
    .locals 3

    .line 891
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    const/4 v1, 0x0

    .line 892
    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 893
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 898
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10023e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Profile"

    const v2, 0x7f080112

    invoke-direct {p0, v1, v2, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10023f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capture"

    const v2, 0x7f080166

    invoke-direct {p0, v1, v2, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private showAlertCancel(Ljava/lang/String;I)V
    .locals 3

    .line 2010
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2011
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$17;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$17;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2027
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$16;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$16;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2033
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2034
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2035
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDiscardAlert()V
    .locals 3

    .line 2390
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2394
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardSelfAssignConfirmDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2396
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$23;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$23;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2404
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$24;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$24;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2413
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2414
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2415
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showGoBackDialog()V
    .locals 4

    .line 1861
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1862
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

    new-instance v3, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$14;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$14;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1868
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$15;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$15;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1875
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1876
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1877
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 1591
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1592
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$13;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$13;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1598
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1599
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showOTPVerifyDialog(Landroid/content/Context;)V
    .locals 3

    .line 2712
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 2713
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2714
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_tst_offline_draft_toast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2715
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$28;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$28;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    const/4 v1, -0x1

    const-string v2, "Ok"

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2722
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$29;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$29;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    const/4 v1, -0x2

    const-string v2, "Cancel"

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2727
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showRemarkSelectionAlert()V
    .locals 6

    .line 2423
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const-string v1, "SELECT itemType,itemValue FROM ConfigurableLookupMaster where itemKey=\'DiscardRemarks\'"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 2425
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->remarkNames:[Ljava/lang/String;

    .line 2426
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->remarkids:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2428
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 2429
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->remarkids:[Ljava/lang/String;

    aget-object v4, v0, v2

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 2430
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->remarkNames:[Ljava/lang/String;

    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2432
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2434
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_remarksForNotDoneSelfAssign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2435
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->remarkNames:[Ljava/lang/String;

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$25;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$25;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2486
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->d_remarks:Landroid/app/Dialog;

    .line 2487
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2488
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->d_remarks:Landroid/app/Dialog;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$26;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$26;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private updateDisplay_yearless()V
    .locals 2

    .line 2312
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mFiledStr:Ljava/lang/String;

    .line 2313
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2315
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2317
    const-string v1, "SAAttributeActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2319
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setDate_yearless(I)V

    return-void
.end method

.method private validateFarmerWithOTP()Z
    .locals 5

    const/4 v0, 0x0

    .line 2694
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "FarmerOTPRoleId"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithActiveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2695
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 2696
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 2697
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 2698
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 2699
    aget-object v4, v1, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2706
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
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

    .line 2187
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->listAttributes_Assgnmt:Ljava/util/List;

    .line 2188
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr_Assgnmt:Ljava/util/List;

    .line 2189
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArrIds_Assgnmt:Ljava/util/List;

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

    .line 485
    iget v7, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mForOperations:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mForOperations:I

    .line 486
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 487
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 488
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v10, v12, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0xa

    const/4 v11, 0x4

    const/4 v13, 0x0

    .line 489
    invoke-virtual {v10, v9, v11, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 490
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    .line 492
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 495
    iget v10, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->layoutId:I

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 497
    new-instance v10, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-direct {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 502
    iget-object v11, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    const v14, 0x7f11015b

    invoke-virtual {v10, v11, v14}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 503
    invoke-virtual {v10, v9}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setGravity(I)V

    const/4 v9, 0x5

    .line 504
    invoke-virtual {v10, v9, v13, v13, v13}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setPadding(IIII)V

    if-eqz v3, :cond_1

    .line 507
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

    .line 509
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

    .line 512
    :cond_1
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    :goto_0
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 515
    iget v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mForDates:I

    add-int/2addr v3, v8

    iput v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mForDates:I

    .line 525
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

    .line 526
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 527
    const-string v3, "operation"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 528
    iget v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mForOperations:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    .line 529
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

    .line 530
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 531
    iget-object v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    .line 532
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v5, 0x11

    .line 533
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const v5, 0x7f0800d7

    .line 534
    invoke-virtual {v1, v3, v3, v5, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_2

    .line 536
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setEditableFalse(Landroid/widget/EditText;)V

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

    .line 539
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 p11, v7

    if-eqz v3, :cond_5

    .line 540
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 541
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 542
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 543
    iget v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 544
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 545
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v1, 0x7f080096

    .line 546
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 547
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v1, 0x1

    if-eq v6, v1, :cond_4

    .line 551
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_4
    :goto_4
    move-object v5, v3

    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v6, v3

    goto :goto_2

    .line 554
    :cond_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 555
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 556
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 557
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 558
    iget v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 559
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f080096

    .line 560
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 561
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 562
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->datesListenerYearless:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 565
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_4

    :cond_6
    const/4 v7, 0x1

    .line 568
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v7, "b"

    if-eqz v3, :cond_8

    .line 569
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 570
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 571
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 572
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 573
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v5, 0x2

    .line 574
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 575
    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v7, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v7, v5, v3

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v3, 0x5

    .line 576
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_7

    .line 578
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_7
    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v3, v16

    :goto_5
    move-object v5, v3

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x1

    .line 581
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_b

    .line 582
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 583
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 584
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f080096

    .line 585
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v3, 0x11

    .line 586
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 587
    const-string v3, "RespondentNo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 588
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 589
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 590
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    move-object/from16 v17, v9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 592
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v17, v9

    const/16 v9, 0x32

    invoke-direct {v3, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v7, v1

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v1, 0x5

    .line 593
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_6
    const/4 v1, 0x1

    if-eq v6, v1, :cond_a

    .line 596
    invoke-direct {v0, v5}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setEditableFalse(Landroid/widget/EditText;)V

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

    .line 598
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 599
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 600
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 601
    const-string v5, "d"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 602
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 603
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x2002

    .line 604
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_c

    .line 607
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_c
    move-object v7, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v9, v6

    goto/16 :goto_9

    .line 609
    :cond_d
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 610
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 611
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 612
    const-string v5, "e"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 613
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 614
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x20

    .line 615
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_e

    .line 618
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_e
    move-object v9, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    goto :goto_9

    .line 620
    :cond_f
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 621
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 622
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 623
    const-string v7, "n"

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v7, 0x7f080096

    .line 624
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v7, 0x11

    .line 625
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v7, 0x2

    .line 626
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    if-lez v5, :cond_10

    .line 628
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    .line 630
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v9, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_8
    const/4 v3, 0x5

    .line 632
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_11

    .line 634
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_11
    move-object v6, v1

    goto/16 :goto_7

    :cond_12
    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    goto/16 :goto_5

    .line 638
    :goto_9
    new-instance v11, Landroid/widget/EditText;

    invoke-direct {v11, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 639
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v9

    const v9, 0x3f19999a    # 0.6f

    move-object/from16 p5, v14

    const/4 v14, -0x1

    invoke-direct {v0, v14, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 640
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p1, v7

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v9, v14, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 641
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    invoke-direct {v7, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 642
    invoke-virtual {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    invoke-virtual {v11, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "DropDown"

    if-eqz v0, :cond_13

    .line 645
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    move-object/from16 v14, p1

    move-object/from16 v9, p11

    move-object/from16 p1, v11

    move-object/from16 v0, v17

    :goto_b
    move-object/from16 v11, p3

    goto/16 :goto_f

    .line 646
    :cond_13
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 647
    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 648
    :cond_14
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 649
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_15
    move-object/from16 v0, v17

    .line 650
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 651
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c
    move-object/from16 v14, p1

    :goto_d
    move-object/from16 v9, p11

    move-object/from16 p1, v11

    goto :goto_b

    .line 652
    :cond_16
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_17

    .line 653
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    .line 654
    :cond_17
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v14, p1

    .line 655
    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_18
    move-object/from16 v14, p1

    .line 656
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 p1, v11

    if-eqz v17, :cond_19

    move-object/from16 v11, p5

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 v11, v16

    if-eqz v17, :cond_1a

    .line 657
    invoke-virtual {v11, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v9, p11

    goto :goto_b

    :cond_19
    move-object/from16 v11, v16

    .line 658
    :cond_1a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1b

    move-object/from16 v16, v11

    move-object/from16 v11, p3

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 659
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_1b
    move-object/from16 v16, v11

    move-object/from16 v11, p3

    :cond_1c
    :goto_e
    move-object/from16 v9, p11

    .line 661
    :goto_f
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 663
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_10
    move-object/from16 p3, v11

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    :goto_11
    move-object/from16 v11, p13

    goto/16 :goto_13

    .line 664
    :cond_1d
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 665
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 666
    :cond_1e
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 667
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 668
    :cond_1f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 669
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 670
    :cond_20
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_21

    .line 671
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 672
    :cond_21
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 673
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 674
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

    .line 675
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12

    :cond_23
    move-object/from16 v17, v14

    move-object/from16 v14, v16

    .line 676
    :cond_24
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    .line 677
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_25
    :goto_12
    move-object/from16 p3, v11

    goto :goto_11

    .line 679
    :goto_13
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v9, p0

    .line 680
    iget-object v11, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mattributesnamesArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v10, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArrIds:Ljava/util/ArrayList;

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 683
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 684
    :cond_26
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 685
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 686
    :cond_27
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 687
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 688
    :cond_28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 689
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 690
    :cond_29
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    .line 691
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 692
    :cond_2a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 693
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 694
    :cond_2b
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 695
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 696
    :cond_2c
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 697
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_2d
    :goto_14
    iget v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->layoutId:I

    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 788
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

    .line 2194
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->fragmentsList:Ljava/util/List;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1889
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

    .line 1960
    const-string p1, "ImagePath"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->imagePath:Ljava/lang/String;

    .line 1961
    const-string p1, "imageId"

    const-wide/16 v3, 0x0

    invoke-virtual {p3, p1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->imageId:J

    .line 1967
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->imageId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailQueryBYImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1969
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mVideoBitmap:Landroid/graphics/Bitmap;

    .line 1970
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->video_thumbnail1:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1971
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->video_thumbnail1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1972
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->imagePath:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 1973
    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mVideoBitmap:Landroid/graphics/Bitmap;

    .line 1974
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->video_thumbnail1:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1975
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->video_thumbnail1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 1922
    const-string p1, "FarmerId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1923
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selCustomerId:Ljava/lang/String;

    .line 1925
    :cond_4
    const-string p1, "SegmentId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1926
    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selSegmentID:I

    .line 1928
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selCustomerId:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->selSegmentID:I

    if-eqz p1, :cond_a

    .line 1930
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->custDetailsText:Landroid/widget/TextView;

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

    .line 1932
    const-string p2, "MBAACTIVITY"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_6
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 1894
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1895
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1898
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1899
    aget-object p1, p1, v2

    .line 1900
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {p3, p1}, Lcom/conceptglobal/pmc/common/Queries;->getListOfAttributes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 1901
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_a

    .line 1902
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

    .line 1904
    :try_start_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p1, p3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerAttributeDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p3

    .line 1906
    :try_start_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tag:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1911
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    const/4 p1, -0x1

    if-eq p2, p1, :cond_9

    if-eqz p2, :cond_8

    goto :goto_1

    .line 1948
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1943
    :cond_9
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->fetchLocation()V

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

    .line 1384
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 1385
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1405
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 1406
    invoke-virtual {p0, p1, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1509
    :sswitch_1
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    const-string v4, "farmerType"

    const-string v5, "fromTransaction"

    const-string v6, "farmerId"

    const-string v7, "SegmentId"

    if-ne p1, v3, :cond_1

    .line 1511
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1512
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1513
    const-string p1, "The Farmer Is Unsanitized, You Can\'t Edit. "

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1517
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1519
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1520
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1521
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1522
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1523
    const-string v0, "Farmer"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1524
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 1526
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1527
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1528
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1530
    const-string v0, "Planter"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1531
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 1533
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1534
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1535
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1536
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1537
    const-string v0, "Retailer"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 1540
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1541
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1542
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1543
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1544
    const-string v0, "Distributor"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1545
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1396
    :sswitch_2
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->isValidData(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1397
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->checkCustomerDetails()Z

    move-result p1

    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->checkTerritorydetails()Z

    move-result p1

    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->checkImagesMandatory()Z

    move-result p1

    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->checkVideoMandatory()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1398
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->otpValidation()V

    goto :goto_0

    .line 1387
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->saveDataIntoDataBase(I)V

    goto :goto_0

    .line 1392
    :sswitch_4
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->showDiscardAlert()V

    goto :goto_0

    .line 1411
    :sswitch_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->fetchLocation()V

    goto :goto_0

    .line 1467
    :sswitch_6
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1492
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1493
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->lastVisitData:Ljava/util/List;

    const/4 v0, 0x0

    const v1, 0x7f0902bf

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 1494
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1495
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1497
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1498
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1504
    :cond_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100153

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->showNoInternetDialog(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09008c -> :sswitch_6
        0x7f0900a2 -> :sswitch_5
        0x7f0900a6 -> :sswitch_4
        0x7f0900b5 -> :sswitch_3
        0x7f0900c5 -> :sswitch_2
        0x7f090445 -> :sswitch_1
        0x7f090576 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClose()V
    .locals 1

    .line 2234
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->otpVerificationDialog:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->dismissDialog()V

    return-void
.end method

.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 2179
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2180
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->tabHost:Landroid/widget/TabHost;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 0

    .line 2200
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setAdapter()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 261
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003b

    .line 267
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setContentView(I)V

    .line 268
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    .line 269
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 270
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    const p1, 0x7f09045f

    .line 271
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 272
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 273
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->initialization()V

    .line 274
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getData()V

    .line 275
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->settingTabs()V

    .line 276
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setLayoutData()V

    .line 277
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    const/16 v0, 0xa

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->createOperationAttributes()V

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->settingData()V

    .line 280
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setListeners()V

    .line 281
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->segmentId:I

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->bindOperations()V

    .line 284
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->gridView:Landroid/widget/GridView;

    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$1;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 294
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mVideoGridView:Landroid/widget/GridView;

    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$2;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0901e3

    .line 309
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 313
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$3;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901e0

    .line 326
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 327
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$4;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->message:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "send"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 374
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videoComressReceiver:Landroid/content/BroadcastReceiver;

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

    .line 734
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$7;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mDay:I

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$7;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 742
    const-string v0, "Select Day-Month"

    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 745
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "year"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 749
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1

    .line 732
    :cond_2
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mYear:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mMonth:I

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mDay:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1831
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024c

    .line 1832
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->miDraft:Landroid/view/MenuItem;

    .line 1833
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1834
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->miDraft:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1835
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1836
    :cond_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 2526
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2527
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->videoComressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2528
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1846
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1853
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->saveDataIntoDataBase(I)V

    .line 1856
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1848
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->showGoBackDialog()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1986
    const-string p2, "onRequestPermissionResult"

    const-string v0, "SAAttributeActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 1988
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 1991
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1992
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 1994
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->fetchLocation()V

    goto :goto_0

    .line 1997
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResendOTP()V
    .locals 3

    .line 2218
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mOTP:Ljava/lang/String;

    .line 2219
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    const-string v1, "OTP has been sent to your mobile number."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2221
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->callOTPAsync()V

    goto :goto_0

    .line 2223
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->showOTPVerifyDialog(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 2499
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 2502
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setAdapter()V

    .line 2503
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setVideoThumbnail()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 2165
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 2171
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onStop()V

    return-void
.end method

.method public onSubmitOTP(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2205
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->mOTP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2206
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->otpVerificationDialog:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->dismissDialog()V

    .line 2207
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getpmc_tstconfirmVisitCompleteDialogText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->showAlertCancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 2210
    :cond_0
    const-string p1, "Please enter valid OTP."

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onVerifyLater()V
    .locals 0

    return-void
.end method
