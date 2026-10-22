.class public Lcom/conceptglobal/pmc/fo/SAAttributeActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "SAAttributeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;
.implements Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;
.implements Lcom/conceptglobal/pmc/utils/CompressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/SAAttributeActivity$BooleanWrapper;,
        Lcom/conceptglobal/pmc/fo/SAAttributeActivity$DecimalDigitsInputFilter;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final DATEDIALOGID_YEARLESS:I = 0x1

.field private static final GETCUSTOMER:I = 0x3

.field private static final GETNEWACTIVITY:I = 0x2

.field private static final GETRETAILERLIST:I = 0x1

.field private static final INITIALCROPID:I = -0x1

.field private static final SA_TAG:Ljava/lang/String; = "SelfAssignment"

.field private static final TAG:Ljava/lang/String; = "SAAttributeActivity"

.field public static campaignID:Ljava/lang/String; = ""

.field public static isRestoredActivity:Z = false

.field private static updateCount:I = 0x1


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

.field private context:Landroid/content/Context;

.field private custDetailsText:Landroid/widget/TextView;

.field protected d_remarks:Landroid/app/Dialog;

.field private datasaveReceiver:Landroid/content/BroadcastReceiver;

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

.field isDistributerEligibletoUpdate:Z

.field private isDraftSave:Z

.field private isImageDeleted:Z

.field private isMIActivity:Z

.field private isSelfAssign:I

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

.field private llactAddress:Landroid/widget/LinearLayout;

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

.field private selCustomerId:Ljava/lang/String;

.field private selSegmentID:I

.field private slLastVistdata:Landroid/widget/ScrollView;

.field private tabHost:Landroid/widget/TabHost;

.field private tag:Ljava/lang/String;

.field private territoryDetailsText:Landroid/widget/TextView;

.field private textChangeListenerIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

.field private total_CampaignIDs:Ljava/lang/String;

.field private transId:J

.field tvAlert:Landroid/widget/TextView;

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

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 150
    const-string v0, "MBAActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->dateDialogID:I

    .line 161
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->textChangeListenerIds:Ljava/util/ArrayList;

    const/4 v2, 0x1

    .line 181
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isDistributerEligibletoUpdate:Z

    .line 196
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selCustomerId:Ljava/lang/String;

    .line 200
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    .line 201
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isTableViewActivity:Z

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->sartiMoilesList:Ljava/util/ArrayList;

    .line 211
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->GPSTimeStamp:Ljava/lang/String;

    .line 231
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isMIActivity:Z

    .line 232
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->locationProvider:Ljava/lang/String;

    const/4 v2, 0x0

    .line 239
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->hAttributes:Ljava/util/HashMap;

    .line 243
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    const/4 v3, -0x1

    .line 247
    iput v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mForOperations:I

    iput v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mForDates:I

    .line 248
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->layoutId:I

    .line 250
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->datePos:I

    .line 252
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mFiledStr:Ljava/lang/String;

    .line 253
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->updateDOS:Ljava/lang/String;

    .line 260
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignStatus:Ljava/lang/String;

    .line 262
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->total_CampaignIDs:Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignIDList:Ljava/util/ArrayList;

    .line 830
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->datesListener:Landroid/view/View$OnClickListener;

    .line 840
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$5;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->datesListenerYearless:Landroid/view/View$OnClickListener;

    .line 894
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$7;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$7;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->operationListener:Landroid/view/View$OnClickListener;

    .line 1402
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$11;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$11;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLatitudeListener:Landroid/text/TextWatcher;

    .line 2623
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$18;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$18;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2655
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$19;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$19;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2724
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$20;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$20;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videoComressReceiver:Landroid/content/BroadcastReceiver;

    .line 2732
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$21;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->camaigndata_receiver:Landroid/content/BroadcastReceiver;

    .line 2828
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$22;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$22;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->message:Landroid/content/BroadcastReceiver;

    .line 3110
    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$27;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$27;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->datasaveReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/List;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;J)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->captureImage(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isDisplayOthers:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isDisplayOthers:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TabHost;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setTab(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    return p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isMIActivity:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/content/Context;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/view/MenuItem;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->miDraft:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/List;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->saveDataIntoDataBase(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)I
    .locals 0

    .line 146
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mYear:I

    return p1
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mMonth:I

    return p0
.end method

.method static synthetic access$2302(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)I
    .locals 0

    .line 146
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mDay:I

    return p0
.end method

.method static synthetic access$2402(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)I
    .locals 0

    .line 146
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mDay:I

    return p1
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->dateDialogID:I

    return p0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->updateDisplay_yearless()V

    return-void
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setAdapter()V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignIDList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;J)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->captureVideo(J)V

    return-void
.end method

.method static synthetic access$3002(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->sartiMoilesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isImageDeleted:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showRemarkSelectionAlert()V

    return-void
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->prepareAttributeData()V

    return-void
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/List;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)[Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->remarkNames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->total_CampaignIDs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->total_CampaignIDs:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)I
    .locals 0

    .line 146
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->datePos:I

    return p1
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/EditText;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->etDiscription:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->locationProvider:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->GPSTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->GPSTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tv_address:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Landroid/location/Location;Landroid/widget/TextView;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->bindAddress(Landroid/location/Location;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Z)Z
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isValidData(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)Z
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->saveTableAttributeData(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->checkCustomerDetails()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->checkTerritorydetails()Z

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->txt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->checkImagesMandatory()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->checkVideoMandatory()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->checkAllMandatoryImages()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Ljava/lang/String;I)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showAlertCancel(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    return-object p0
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

    .line 3424
    const-string v2, "\'"

    const-string v3, ""

    const-string v4, "1"

    const-string v5, "false"

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    .line 3425
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    move-object/from16 v9, p1

    .line 3426
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 3427
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3428
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3430
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3431
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3432
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getChildLevelId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3436
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

    .line 3437
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 3438
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3439
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3440
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3441
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3442
    new-instance v13, Lcom/conceptglobal/pmc/model/FarmerMaster;

    invoke-direct {v13}, Lcom/conceptglobal/pmc/model/FarmerMaster;-><init>()V

    .line 3443
    const-string v14, "true"

    invoke-virtual {v13, v14}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setisNew(Ljava/lang/String;)V

    .line 3444
    invoke-virtual {v13, v5}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setServerupdatedstatus(Ljava/lang/String;)V

    .line 3445
    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v15

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setPdaid(Ljava/lang/String;)V

    .line 3446
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

    .line 3447
    invoke-virtual {v13, v7}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setStatus(I)V

    .line 3448
    invoke-virtual {v13, v4}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setTypeofFarmer(Ljava/lang/String;)V

    .line 3449
    invoke-virtual {v13, v4}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setFarmerTypeId(Ljava/lang/String;)V

    .line 3450
    const-string v8, "True"

    invoke-virtual {v13, v8}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setIsActive(Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 3451
    invoke-virtual {v13, v8}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setAudiencefarmer(I)V

    .line 3452
    invoke-virtual {v13, v5}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setServerupdatedstatus(Ljava/lang/String;)V

    .line 3453
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/conceptglobal/pmc/common/Queries;->getActivityShortCode(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3454
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateAudianceFarmer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setColumn5(Ljava/lang/String;)V

    .line 3456
    new-instance v8, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-direct {v8}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;-><init>()V

    .line 3457
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setRespondentNo(Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 3459
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_4

    move-object/from16 v15, p1

    .line 3460
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 3461
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 3462
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingAudianceFramerObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getListAudianceData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/AudianceFarmer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3463
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FarmerMaster"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3464
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3465
    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3466
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Mobile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3467
    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/utils/Encryption;->encryptRemovenewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3470
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 3471
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 3477
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getTableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FarmerCropDetails"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3478
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AudianceFarmer;->getDbColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3479
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

    .line 3482
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 3483
    invoke-static {v13, v9, v10}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAudianceFarmerDetails(Lcom/conceptglobal/pmc/model/FarmerMaster;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3485
    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 3486
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

    .line 3491
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-void
.end method

.method private addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1257
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1258
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 1259
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1260
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0xa

    const/4 v6, 0x4

    .line 1261
    invoke-virtual {v2, v4, v6, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1262
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1263
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1266
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1267
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x3

    .line 1269
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, -0x1000000

    .line 1270
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1271
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1272
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1274
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1275
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1276
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 1277
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setGravity(I)V

    const p2, 0x7f0800e2

    .line 1278
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1279
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1280
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, p1, p2, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1281
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1282
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->llLastvisitBody:Landroid/widget/LinearLayout;

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

    .line 1244
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 1245
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
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

    invoke-direct {p0, v2, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
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

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1251
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/LastVisitModel;

    .line 1252
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->addLastVisitAcitivityAttributes(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 1024
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 1025
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const v3, 0x7f0c0135

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090459

    .line 1026
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1027
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090230

    .line 1028
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1029
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1030
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 1031
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1032
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isMIActivity:Z

    const-string p2, "TRANSID"

    const-string p3, "ACTIVITYNAME"

    const-string v1, "ISSELFASSIGN"

    const-string v2, "SEGMENTID"

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 1033
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    const-class v6, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1034
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1036
    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1037
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1038
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1040
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1041
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x20000

    .line 1042
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const/16 p3, 0x2000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1044
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_2

    .line 1046
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    const-class v6, Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1048
    :try_start_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getActivityDisplayType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1049
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    const-class v7, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1050
    :try_start_1
    iput-boolean v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isTableViewActivity:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v8, v5

    move-object v5, p1

    move-object p1, v8

    .line 1054
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object p1, v5

    .line 1056
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1057
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1058
    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1059
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1060
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1062
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1063
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_2

    .line 1070
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f090417

    .line 1071
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_2

    .line 1072
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100240

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f090418

    .line 1073
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_2

    .line 1074
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10023c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f090414

    .line 1075
    invoke-virtual {v0, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 1077
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private bindAddress(Landroid/location/Location;Landroid/widget/TextView;)V
    .locals 4

    .line 3497
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getAddressWithLatLong(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object p1

    .line 3498
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3500
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private bindOperations()V
    .locals 11

    .line 565
    const-string v0, "TerritoryMaster"

    const-string v1, "FarmerMaster"

    const-string v2, "DealerMaster"

    const-string v3, "SAAttributeActivity"

    :try_start_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->bindQuery:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerOrRetailerBindDataDynamic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mentryValues:Ljava/util/List;

    .line 567
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    .line 568
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 569
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropdown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 570
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

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

    .line 573
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "RetailerShopName"

    const-string v9, "ContactId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mentryValues:Ljava/util/List;

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

    .line 575
    :try_start_2
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 578
    :cond_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

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

    .line 580
    :try_start_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "FarmerName"

    const-string v9, "RespondentNo"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mentryValues:Ljava/util/List;

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

    .line 582
    :try_start_4
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 583
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 585
    :cond_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

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

    .line 587
    :try_start_5
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "territoryName"

    const-string v9, "territoryId"

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mentryValues:Ljava/util/List;

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

    .line 589
    :try_start_6
    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 592
    :cond_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mentryValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 595
    :cond_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mentryValues:Ljava/util/List;

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

    .line 600
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private captureImage(J)V
    .locals 6

    .line 1385
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Navigation"

    const-string v2, "Image Capture Click"

    const-string v3, "SelfAssignment"

    invoke-static {v1, v2, v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1387
    const-string v1, "activityId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1388
    const-string v1, "assignmentId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1390
    :try_start_0
    const-string v1, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1392
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1393
    const-string v3, "SAAttributeActivity"

    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1395
    :goto_0
    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "setReferenceID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1396
    const-string v1, "attributeId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1397
    const-string v1, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1398
    const-string v1, "imageId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p1, 0x65

    .line 1399
    invoke-virtual {p0, v0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private captureVideo(J)V
    .locals 6

    .line 3094
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3095
    const-string v1, "activityId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3096
    const-string v1, "assignmentId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3098
    :try_start_0
    const-string v1, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    const-string v5, "SelfAssignment"

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

    .line 3100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3101
    const-string v3, "SAAttributeActivity"

    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3103
    :goto_0
    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "setReferenceID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3104
    const-string v1, "attributeId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3105
    const-string v1, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3106
    const-string v1, "imageId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p1, 0xca

    .line 3107
    invoke-virtual {p0, v0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private checkAllMandatoryImages()Z
    .locals 8

    const/4 v0, 0x1

    .line 3070
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getAllImagesMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImagesPathDetail(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imglstConfigId:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3071
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imglstConfigId:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3072
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imglstConfigId:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getItemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3073
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3074
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {v5, v3, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getImagesAvailableOrNot(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 3076
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Please take photo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imglstConfigId:Ljava/util/ArrayList;

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

    .line 3085
    const-string v2, "SAAttributeActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkCustomerDetails()Z
    .locals 5

    .line 2339
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2340
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 2341
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selCustomerId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selSegmentID:I

    if-nez v0, :cond_0

    .line 2342
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 2348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkImagesMandatory()Z
    .locals 6

    const/4 v0, 0x1

    .line 3036
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getImageIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3037
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3038
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsSelectImageToast()Ljava/lang/String;

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

    .line 3044
    const-string v2, "SAAttributeActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkTerritorydetails()Z
    .locals 4

    const/4 v0, 0x0

    .line 3023
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    const v2, 0x7f100001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

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

    .line 3024
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 3028
    const-string v2, "SAAttributeActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkVideoMandatory()Z
    .locals 6

    const/4 v0, 0x1

    .line 3052
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getVideoIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3053
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3054
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 3060
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

    .line 502
    invoke-virtual {v15, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    .line 503
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->hAttributes:Ljava/util/HashMap;

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mattributesnamesArr:Ljava/util/ArrayList;

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mOprDatesArr:Ljava/util/ArrayList;

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntrySpinnerArr:Ljava/util/ArrayList;

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds:Ljava/util/ArrayList;

    .line 510
    iget v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

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

    .line 513
    :cond_1
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    goto :goto_1

    .line 511
    :cond_2
    :goto_0
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    .line 516
    :cond_3
    :goto_1
    iget v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    if-eq v0, v11, :cond_8

    if-eq v0, v13, :cond_7

    if-eq v0, v14, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    if-eq v0, v12, :cond_4

    goto :goto_2

    .line 528
    :cond_4
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Planter"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    .line 530
    :cond_5
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Village"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 525
    :cond_6
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "Distributor"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 522
    :cond_7
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    goto :goto_2

    .line 519
    :cond_8
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDynanicFields(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    .line 535
    :goto_2
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 538
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->hAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-lez v10, :cond_9

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_9

    .line 542
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getIsMandatory()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    .line 543
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbColumnName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationType()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getValidationExpression()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v8

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinLength()I

    move-result v16

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v17

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v18

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDecimalLength()I

    move-result v19

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    iget-object v11, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

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

    .line 542
    invoke-virtual/range {v0 .. v14}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILandroid/widget/LinearLayout;I)V

    .line 544
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->dynamicColumnnames:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

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

    .line 549
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->attributesArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_5

    .line 552
    :cond_a
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 553
    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->dynamicColumnnames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    iget v1, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

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

    .line 557
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from DealerMaster where contactId =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->bindQuery:Ljava/lang/String;

    goto :goto_5

    .line 555
    :cond_d
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from FarmerMaster where RespondentNo =\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->bindQuery:Ljava/lang/String;

    :cond_e
    :goto_5
    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 3128
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3129
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 3132
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$28;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$28;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    const-string v2, "SAAttributeActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getData(Landroid/os/Bundle;)V
    .locals 7

    .line 1087
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    .line 1088
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->intentGetData:Landroid/content/Intent;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1089
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "ISSELFASSIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isSelfAssign:I

    .line 1090
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "ACTIVITYID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    .line 1091
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    .line 1092
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityName:Ljava/lang/String;

    .line 1093
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->intentGetData:Landroid/content/Intent;

    const-string v1, "TRANSID"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    .line 1094
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v0

    const-string v1, ")"

    const-string v3, " Details("

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 1099
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 1105
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSegmentType(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v4, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnCustomerDetails:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1107
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->custDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnCustomerDetails:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1110
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->custDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1112
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getAssignmentVisitDetailSelfAssign(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAssignmentVisitDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    .line 1113
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLastvistFarmerData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLastVistData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitData:Ljava/util/List;

    .line 1114
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1115
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1119
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitModelHash:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/LastVisitModel;->getLastVisitDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/LastVisitModel;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    .line 1123
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getQueryActivityType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1124
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isMIActivity:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 1128
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tag:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1134
    :cond_4
    :goto_4
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getCampaignID(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    .line 1136
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .line 1138
    :goto_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1139
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignIDList:Ljava/util/ArrayList;

    .line 1141
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1142
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignIDList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    .line 1147
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_6
    if-eqz p1, :cond_6

    .line 1151
    :try_start_3
    const-string v1, "edit_text_id_values_2"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1153
    sput-boolean v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isRestoredActivity:Z

    .line 1154
    const-string p1, "SAAttributeActivity"

    const-string v0, "isRestoredActivity"

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_6
    return-void
.end method

.method private initialization()V
    .locals 4

    .line 938
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    .line 939
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->intentGetData:Landroid/content/Intent;

    .line 940
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 941
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const v0, 0x7f09041e

    .line 942
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09052b

    .line 944
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvFarmer:Landroid/widget/TextView;

    .line 945
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09051c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnDealer:Landroid/widget/Button;

    .line 946
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090521

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnDiscription:Landroid/widget/Button;

    .line 947
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09019a

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->etDiscription:Landroid/widget/EditText;

    .line 948
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090502

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvIsBayerFarmer:Landroid/widget/TextView;

    .line 949
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090575

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvRetailers:Landroid/widget/TextView;

    .line 950
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0902b7

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lladdActivities:Landroid/widget/LinearLayout;

    .line 951
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnSave:Landroid/widget/Button;

    .line 952
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnInactive:Landroid/widget/Button;

    const/16 v1, 0x8

    .line 953
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 954
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0900c4

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnVisit:Landroid/widget/Button;

    .line 955
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0905bd

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->custDetailsText:Landroid/widget/TextView;

    .line 956
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f090081

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnCustomerDetails:Landroid/widget/Button;

    .line 957
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f0905c0

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 958
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v3, 0x7f090084

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnTerritoryDetails:Landroid/widget/Button;

    .line 960
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v3, 0x7f09021b

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->gridView:Landroid/widget/GridView;

    const v0, 0x7f0902de

    .line 962
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lvLastVisitData:Landroid/widget/ListView;

    const v0, 0x7f090409

    .line 963
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->slLastVistdata:Landroid/widget/ScrollView;

    const v0, 0x7f0902a7

    .line 964
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->llLastvisitBody:Landroid/widget/LinearLayout;

    .line 965
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnDealer:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvRetailers:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnLatLng:Landroid/widget/ImageView;

    .line 968
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09054d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLatitude:Landroid/widget/TextView;

    .line 969
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090556

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLongitude:Landroid/widget/TextView;

    .line 970
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090352

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvpictures:Landroid/widget/TextView;

    .line 971
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0905ec

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvVideos:Landroid/widget/TextView;

    .line 972
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f0904f9

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tv_address:Landroid/widget/TextView;

    const v0, 0x7f0902ca

    .line 973
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->llactAddress:Landroid/widget/LinearLayout;

    .line 974
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLatitude:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLatitudeListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 978
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09021d

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mVideoGridView:Landroid/widget/GridView;

    .line 979
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imagelist:Ljava/util/ArrayList;

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imglstConfigId:Ljava/util/ArrayList;

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->images:Ljava/util/List;

    .line 982
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videos:Ljava/util/List;

    const v0, 0x7f0903b9

    .line 984
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->scrollView:Landroid/widget/ScrollView;

    const v0, 0x7f090600

    .line 985
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->webView:Landroid/webkit/WebView;

    .line 986
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090553

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvAlert:Landroid/widget/TextView;

    .line 987
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnViewHistory:Landroid/widget/Button;

    .line 988
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 989
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnViewHistory:Landroid/widget/Button;

    const-string v1, "Show History"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 990
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const v1, 0x7f090445

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->fullDetailsBtn:Landroid/widget/TextView;

    const v0, 0x7f090335

    .line 991
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->dynamicColumnnames:Ljava/lang/StringBuilder;

    .line 993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mentryValues:Ljava/util/List;

    .line 994
    const-string v0, ""

    sput-object v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    return-void
.end method

.method private insertPictureData()V
    .locals 8

    .line 1419
    const-string v0, "SAAttributeActivity"

    .line 1423
    new-instance v1, Lcom/conceptglobal/pmc/model/PictureReportingData;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/PictureReportingData;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 1424
    :goto_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1426
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setImageId(J)V

    .line 1427
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "SelfAssignment"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 1429
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1430
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1435
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 1437
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPicturePath(Ljava/lang/String;)V

    .line 1439
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPdaCreatedDate(Ljava/lang/String;)V

    .line 1440
    const-string v5, "false"

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setServerStatus(Ljava/lang/String;)V

    .line 1441
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setPDAID(Ljava/lang/String;)V

    .line 1442
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedBy(Ljava/lang/String;)V

    .line 1443
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setCreatedDate(Ljava/lang/String;)V

    .line 1444
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedBy(Ljava/lang/String;)V

    .line 1445
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setUpdatedDate(Ljava/lang/String;)V

    .line 1446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceType(Ljava/lang/String;)V

    .line 1447
    const-string v5, "0"

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setAssignmentId(Ljava/lang/String;)V

    .line 1448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setActivityId(Ljava/lang/String;)V

    .line 1451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/PictureReportingData;->setReferenceID(Ljava/lang/String;)V

    .line 1455
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertPictureDetails(Lcom/conceptglobal/pmc/model/PictureReportingData;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 1457
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1458
    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private isExpensesNo(Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2360
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2361
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2363
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    const/16 v3, 0x375

    if-ne v2, v3, :cond_0

    .line 2364
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2365
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "No"

    .line 2366
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2367
    new-instance p1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$BooleanWrapper;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$BooleanWrapper;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Z)V

    .line 2368
    const-string v2, "You are selected expenses required No"

    invoke-direct {p0, v2, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showAlertExp(Ljava/lang/String;Lcom/conceptglobal/pmc/fo/SAAttributeActivity$BooleanWrapper;)Z

    move-result p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method private isValidData(Z)Z
    .locals 20

    move-object/from16 v1, p0

    .line 2385
    const-string v2, "dd-MM-yyyy"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 2401
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
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v14, "SAAttributeActivity"

    if-ge v12, v0, :cond_17

    .line 2402
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2421
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x34f

    if-ne v3, v4, :cond_1

    .line 2422
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 2424
    :cond_1
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x350

    if-ne v3, v4, :cond_2

    .line 2425
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 2427
    :cond_2
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x351

    if-ne v3, v4, :cond_3

    .line 2428
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 2430
    :cond_3
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x352

    if-ne v3, v4, :cond_4

    .line 2431
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 2433
    :cond_4
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x320

    if-ne v3, v4, :cond_5

    .line 2434
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    .line 2436
    :cond_5
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x31d

    if-ne v3, v4, :cond_6

    .line 2437
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 2439
    :cond_6
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x306

    if-ne v3, v4, :cond_7

    .line 2440
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2442
    :cond_7
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x35d

    if-ne v3, v4, :cond_8

    .line 2443
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2447
    :cond_8
    :try_start_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v4, "0"

    const-string v15, "TextBoxN"

    move-object/from16 v16, v4

    const-string v4, "TextBoxND"

    if-ne v3, v5, :cond_11

    .line 2448
    :try_start_1
    sget-object v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_6

    .line 2451
    :cond_9
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

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

    if-nez v3, :cond_a

    :goto_1
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 2453
    :cond_a
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Dropdown"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Multiselect Dropdown"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

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

    if-nez v3, :cond_c

    goto :goto_1

    .line 2456
    :cond_c
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v5

    if-ge v3, v5, :cond_d

    const/4 v13, 0x0

    .line 2459
    :cond_d
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v3, :cond_e

    .line 2461
    :try_start_2
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    const/4 v13, 0x0

    .line 2466
    :cond_e
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_f
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v3

    const-wide/16 v17, 0x0

    cmp-long v5, v3, v17

    if-eqz v5, :cond_16

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

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

    if-lez v3, :cond_10

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_10
    move-object/from16 v4, v16

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14

    cmp-long v0, v3, v14

    if-gez v0, :cond_16

    goto/16 :goto_1

    .line 2472
    :cond_11
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

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

    if-eqz v3, :cond_16

    .line 2473
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v5

    if-ge v3, v5, :cond_12

    const/4 v13, 0x0

    .line 2476
    :cond_12
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v3, :cond_13

    .line 2478
    :try_start_4
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

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

    goto :goto_4

    :catch_1
    const/4 v13, 0x0

    .line 2483
    :cond_13
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_14
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v3

    const-wide/16 v17, 0x0

    cmp-long v5, v3, v17

    if-eqz v5, :cond_16

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

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

    if-lez v3, :cond_15

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_15
    move-object/from16 v4, v16

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    cmp-long v0, v3, v14

    if-gez v0, :cond_16

    goto/16 :goto_1

    :catch_2
    move-exception v0

    .line 2489
    invoke-static {v14, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_6
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_17
    if-nez v13, :cond_19

    if-eqz p1, :cond_19

    .line 2495
    :try_start_6
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isTableViewActivity:Z

    if-eqz v0, :cond_18

    .line 2496
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;

    const/4 v3, 0x1

    .line 2497
    invoke-interface {v0, v3}, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;->onValidate(Z)V

    goto :goto_7

    .line 2499
    :cond_18
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;

    const/4 v3, 0x1

    .line 2500
    invoke-interface {v0, v3}, Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;->onValidate(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 2503
    invoke-static {v14, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2505
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 2506
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2509
    :cond_19
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/common/Queries;->getIsLatLongMandatory(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLatLondMandatory(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1b

    .line 2510
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1b

    .line 2511
    :cond_1a
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2512
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2513
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v3, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$17;

    invoke-direct {v3, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$17;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    const/4 v13, 0x0

    .line 2524
    :cond_1b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v0, v3, :cond_1c

    .line 2525
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "The start km reading should not be greater than the end km reading."

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v13, 0x0

    .line 2528
    :cond_1c
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2529
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    .line 2530
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "Total Quantity Remain should be zero."

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x0

    goto :goto_8

    :cond_1d
    move v4, v13

    .line 2540
    :goto_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2542
    :try_start_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 2543
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 2544
    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->timeDifferenceInMinutes(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-gez v0, :cond_1e

    .line 2546
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "The Start Date should not be greater than the End Date."

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v4, 0x0

    goto :goto_9

    :catch_4
    move-exception v0

    .line 2550
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_1e
    :goto_9
    return v4

    .line 2386
    :cond_1f
    :goto_a
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    const/4 v2, 0x0

    return v2
.end method

.method static synthetic lambda$setBottomViewPadding$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 412
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const v1, 0x1020013

    .line 415
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TabWidget;

    if-eqz p0, :cond_0

    .line 418
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingLeft()I

    move-result v1

    .line 419
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingTop()I

    move-result v2

    .line 420
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingRight()I

    move-result v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 417
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/TabWidget;->setPadding(IIII)V

    :cond_0
    return-object p1
.end method

.method private prepareAttributeData()V
    .locals 10

    .line 2034
    const-string v0, "Multiselect Dropdown"

    const-string v1, "Dropdown"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2036
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2037
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2038
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2039
    :cond_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2040
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const v6, 0x7f100001

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2041
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

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

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 2047
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v4, 0x0

    .line 2049
    :goto_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 2050
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2052
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v7

    const-string v8, ""

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "test"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v6

    if-ne v6, v9, :cond_4

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2057
    :cond_4
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2058
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2059
    :cond_5
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2061
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 2062
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

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

    if-eqz v6, :cond_8

    .line 2064
    array-length v7, v6

    if-lez v7, :cond_8

    .line 2065
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 2073
    :goto_3
    array-length v8, v6

    if-ge v7, v8, :cond_8

    .line 2074
    new-instance v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v8, v5}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 2075
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeId(I)V

    .line 2076
    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 2078
    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2082
    :cond_6
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2083
    invoke-virtual {v5, v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_4

    .line 2085
    :cond_7
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2092
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 2093
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2094
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_c

    .line 2095
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2096
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    if-eqz v1, :cond_a

    .line 2097
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_a

    .line 2098
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    return-void
.end method

.method private prepareCampaignDetails()Lorg/json/JSONObject;
    .locals 6

    .line 3357
    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3359
    :try_start_0
    const-string v2, "CampignActivityId"

    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3360
    const-string v2, "CampignSource"

    const-string v3, "PMC"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3361
    const-string v2, "_id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3362
    const-string v2, "CampaignTitle"

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3363
    const-string v2, "CampaignDescription"

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3364
    const-string v2, "CampaignStatus"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3365
    const-string v2, "CampaignProfileImage"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3366
    const-string v2, "CampignLatLong"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3367
    const-string v2, "CampignLocation"

    const-string v3, "Hyd"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3368
    const-string v2, "CampignSubLocation"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3369
    const-string v2, "CampignSubLocationLatLong"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3370
    const-string v2, "CampaignStartDate"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3371
    const-string v2, "CampaignEndDate"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3380
    const-string v2, "VMNType"

    const-string v3, "Call"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3381
    const-string v2, "CampaignScheduleDate"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3382
    const-string v2, "CampaignScheduleTime"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3385
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3387
    const-string v3, "CampaignProductProfile"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3390
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 3391
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3392
    const-string v4, "NeoIntId"

    const-string v5, "2343679239492055534"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3393
    const-string v4, "Crop Name"

    const-string v5, "Paddy"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3394
    const-string v4, "Crop Code"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3395
    const-string v4, "CropId"

    const-string v5, "14544556"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3397
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3398
    const-string v3, "CampaignCrops"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3401
    const-string v2, "HasApprovals"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3403
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 3404
    const-string v4, "Moments"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3406
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3407
    const-string v4, "Zone"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3408
    const-string v4, "Region"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3409
    const-string v4, "Territory"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3411
    const-string v0, "ESADetails"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3413
    const-string v0, "LotteryFlag"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3414
    const-string v0, "DiscountFlag"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private saveDataIntoDataBase(I)V
    .locals 51

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1725
    const-string v2, "Something went wrong please perform activity again."

    const-string v3, "FarmerFormActivity"

    const-string v4, "  --  "

    const-string v5, "mandatory value empty "

    const-string v6, "SAattributesActivity"

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->insertPictureData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    const/4 v7, 0x0

    if-eqz v0, :cond_26

    .line 1727
    const-string v8, ","

    const-string v9, "Completed"

    const-string v10, "0"

    const-string v11, ""

    const v12, 0x7f100001

    const-string v13, "SAAttributeActivity"

    const/4 v14, 0x1

    if-eq v0, v14, :cond_e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_16

    .line 1892
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isCapaignCompleatedForDraftActivity:Z

    if-nez v0, :cond_2

    .line 1893
    sget-object v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignStatus:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1894
    :cond_1
    const-string v0, "Farmer Attendance Campaign is in progress. First complete the campaign before save this activity in draft."

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showAlert(Ljava/lang/String;)V

    return-void

    .line 1900
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->prepareAttributeData()V

    .line 1901
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->saveTableAttributeData(I)Z

    .line 1902
    iput-boolean v14, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isDraftSave:Z

    .line 1903
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isTableViewActivity:Z

    if-eqz v0, :cond_3

    .line 1904
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    goto :goto_0

    .line 1906
    :cond_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f

    .line 1911
    :goto_0
    :try_start_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1912
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    iget v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    iget-wide v14, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {v2, v4, v5, v14, v15}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivitySelfAssign(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1914
    :cond_4
    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    iget v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    iget v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    iget-wide v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v16, v0

    move/from16 v20, v2

    move-wide/from16 v21, v4

    invoke-static/range {v14 .. v26}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1917
    :try_start_3
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1919
    :goto_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1920
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v10

    .line 1922
    :goto_2
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selCustomerId:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selSegmentID:I

    if-nez v2, :cond_7

    :cond_6
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v2, :cond_8

    .line 1924
    :cond_7
    :try_start_4
    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selCustomerId:Ljava/lang/String;

    iget v15, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selSegmentID:I

    iget-wide v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    const/16 v16, 0x0

    move-wide/from16 v17, v4

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1926
    :try_start_5
    invoke-static {v13, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    const/4 v0, 0x0

    .line 1929
    :goto_4
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 1931
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->images:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatusVisitDone(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1935
    :cond_9
    :goto_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_a

    .line 1936
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videos:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateVideoServerStatus(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1941
    :cond_a
    :try_start_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1942
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignIDList:Ljava/util/ArrayList;

    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->total_CampaignIDs:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 1945
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1947
    :cond_b
    :goto_6
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    iget-wide v7, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    const/4 v9, 0x2

    invoke-virtual/range {v4 .. v9}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForSelfActivities(ILjava/lang/String;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1949
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {v2, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 1950
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget-wide v10, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    const-string v12, "0"

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->locationProvider:Ljava/lang/String;

    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->GPSTimeStamp:Ljava/lang/String;

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileStartTime()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileEndTime()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSStartTime()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSEndTime()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->total_CampaignIDs:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tv_address:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v4 .. v20}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1952
    :cond_c
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    iget-wide v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    const-string v29, "0"

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->locationProvider:Ljava/lang/String;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->GPSTimeStamp:Ljava/lang/String;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->total_CampaignIDs:Ljava/lang/String;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tv_address:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v21, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v0

    move-wide/from16 v27, v4

    move-object/from16 v30, v2

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    invoke-static/range {v21 .. v33}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 1955
    :try_start_8
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f

    .line 1958
    :goto_7
    :try_start_9
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateLastVisitedDate(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1959
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1960
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1963
    :catch_4
    :cond_d
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->finish()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    goto/16 :goto_16

    .line 1734
    :cond_e
    :try_start_b
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getIsCampaignRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 1735
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v15

    iget v12, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {v15, v12}, Lcom/conceptglobal/pmc/common/Queries;->getCampaignConfiguration(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v14, :cond_f

    if-ne v0, v14, :cond_f

    .line 1736
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isCapaignCompleatedForDraftActivity:Z

    if-nez v0, :cond_f

    .line 1737
    const-string v0, "Farmer Attendance Campaign is mandatory to complete the activity."

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showAlert(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    return-void

    :catch_5
    move-exception v0

    .line 1742
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1744
    :cond_f
    sget-object v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_10

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignStatus:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    sget-boolean v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isCapaignCompleatedForDraftActivity:Z

    if-nez v0, :cond_11

    .line 1745
    const-string v0, "Farmer Attendance Campaign is in progress. First complete the campaign before finishing this activity."

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showAlert(Ljava/lang/String;)V

    return-void

    .line 1750
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->prepareAttributeData()V

    .line 1751
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isTableViewActivity:Z

    if-eqz v0, :cond_12

    .line 1752
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    goto :goto_8

    .line 1754
    :cond_12
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    .line 1760
    :goto_8
    :try_start_d
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isTableViewActivity:Z

    if-nez v0, :cond_17

    const/4 v0, 0x0

    .line 1761
    :goto_9
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_17

    .line 1762
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1763
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v9

    if-ne v9, v14, :cond_16

    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 1764
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1765
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    .line 1768
    :try_start_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    :catch_6
    const/4 v5, 0x0

    .line 1772
    :goto_a
    :try_start_f
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    const-string v9, "mandatory value empty dropdown "

    if-ge v5, v8, :cond_14

    .line 1773
    :try_start_10
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Multiselect Dropdown"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1774
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showErrorAlertDialog(Ljava/lang/String;)V

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1779
    :cond_14
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v5

    const-string v8, "Dropdown"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1780
    invoke-static {v0, v14}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setFieldDataEmpty(IZ)V

    .line 1781
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

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showAlert(Ljava/lang/String;)V

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1784
    :cond_15
    invoke-static {v0, v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setFieldDataEmpty(IZ)V

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Please enter  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showAlert(Ljava/lang/String;)V

    .line 1786
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

    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    :goto_b
    return-void

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 1800
    :cond_17
    :try_start_11
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 1801
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignIDList:Ljava/util/ArrayList;

    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->total_CampaignIDs:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    .line 1804
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1806
    :cond_18
    :goto_c
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_19

    .line 1807
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    iget v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    iget-wide v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivitySelfAssign(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    .line 1810
    :cond_19
    :try_start_13
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    iget v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    iget v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    iget-wide v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v23, v4

    move-wide/from16 v24, v5

    invoke-static/range {v17 .. v29}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V

    .line 1811
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 1812
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1813
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1814
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    iget v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    iget v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    iget-wide v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    const/16 v27, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v2

    move-object/from16 v18, v0

    move/from16 v19, v3

    move/from16 v24, v4

    move-wide/from16 v25, v5

    invoke-static/range {v17 .. v27}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsWithSequenceId(Ljava/util/List;Ljava/lang/String;IIIIIIJI)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    goto :goto_d

    :catch_8
    move-exception v0

    .line 1817
    :try_start_14
    invoke-static {v13, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    .line 1820
    :cond_1a
    :goto_d
    :try_start_15
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1822
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1823
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignFarmersData:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1824
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1826
    :cond_1b
    iget v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-direct {v1, v0, v11, v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->addAudianceFarmerDetails(Ljava/util/List;Ljava/lang/String;I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    goto :goto_f

    :catch_9
    move-exception v0

    .line 1829
    :try_start_16
    invoke-static {v13, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1831
    :cond_1c
    :goto_f
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    .line 1832
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    iget-wide v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    const-string v25, "false"

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->locationProvider:Ljava/lang/String;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->GPSTimeStamp:Ljava/lang/String;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileStartTime()Ljava/lang/String;

    move-result-object v28

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileEndTime()Ljava/lang/String;

    move-result-object v29

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSStartTime()Ljava/lang/String;

    move-result-object v30

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSEndTime()Ljava/lang/String;

    move-result-object v31

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->total_CampaignIDs:Ljava/lang/String;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tv_address:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move-wide/from16 v23, v2

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v32, v6

    invoke-static/range {v17 .. v33}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1834
    :cond_1d
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->etDiscription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v36

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v37

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v38

    iget-wide v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    const-string v42, "false"

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->locationProvider:Ljava/lang/String;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->GPSTimeStamp:Ljava/lang/String;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileStartTime()Ljava/lang/String;

    move-result-object v45

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileEndTime()Ljava/lang/String;

    move-result-object v46

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSStartTime()Ljava/lang/String;

    move-result-object v47

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->timeDetails:Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSEndTime()Ljava/lang/String;

    move-result-object v48

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->total_CampaignIDs:Ljava/lang/String;

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tv_address:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v50

    const/16 v34, 0x0

    const/16 v39, 0x0

    move-object/from16 v35, v0

    move-wide/from16 v40, v2

    move-object/from16 v43, v4

    move-object/from16 v44, v5

    move-object/from16 v49, v6

    invoke-static/range {v34 .. v50}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    .line 1838
    :goto_10
    :try_start_17
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v17

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    iget v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    iget-wide v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    const/16 v20, 0x0

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-wide/from16 v21, v4

    invoke-virtual/range {v17 .. v22}, Lcom/conceptglobal/pmc/common/Queries;->getchildDetailsActivity(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->updateChildTransactionDetails(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    goto :goto_11

    :catch_a
    move-exception v0

    .line 1840
    :try_start_18
    invoke-static {v13, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    const/4 v0, 0x0

    .line 1848
    :goto_12
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 1849
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->images:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1e
    const/4 v0, 0x0

    .line 1852
    :goto_13
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 1853
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1858
    :cond_1f
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    const v2, 0x7f100001

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1859
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_20
    move-object v0, v10

    .line 1861
    :goto_14
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selCustomerId:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    iget v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selSegmentID:I

    if-nez v2, :cond_22

    :cond_21
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_f

    if-nez v2, :cond_23

    .line 1863
    :cond_22
    :try_start_19
    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selCustomerId:Ljava/lang/String;

    iget v15, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selSegmentID:I

    iget-wide v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    const/16 v16, 0x0

    move-wide/from16 v17, v2

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentActivitiesCustomerDetails(Ljava/lang/String;IIJLjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    .line 1865
    :try_start_1a
    invoke-static {v13, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1868
    :cond_23
    :goto_15
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1869
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1870
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Service initiated"

    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1871
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 1872
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f

    .line 1877
    :cond_24
    :try_start_1b
    const-string v2, "ActivityTimeDetails"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SA End --"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    .line 1881
    :catch_c
    :try_start_1c
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateLastVisitedDate(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1882
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1883
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    .line 1886
    :catch_d
    :cond_25
    :try_start_1d
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    .line 1887
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1888
    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1889
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->finish()V

    goto :goto_16

    :catch_e
    move-exception v0

    .line 1793
    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showErrorAlertDialog(Ljava/lang/String;)V

    .line 1794
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1729
    :cond_26
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_saveNCloseDialogInUFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v7}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showAlertCancel(Ljava/lang/String;I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f

    goto :goto_16

    :catch_f
    move-exception v0

    .line 1971
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    return-void
.end method

.method private saveTableAttributeData()V
    .locals 3

    .line 2018
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->fragmentsList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2019
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->fragmentsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2020
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->fragmentsList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    .line 2021
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isDataValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2022
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->testMethod(I)V

    goto :goto_0

    .line 2024
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveTableAttributeData(I)Z
    .locals 5

    .line 1977
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->fragmentsList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1978
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isTableViewActivity:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1979
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->fragmentsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1980
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->fragmentsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 1982
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->prepareDataDraft()V

    .line 1983
    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->testMethod(I)V

    goto :goto_1

    .line 1985
    :cond_0
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isDataValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1986
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->prepareDataDraft()V

    .line 1987
    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->testMethod(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1990
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private sendCampaignDetails()V
    .locals 3

    .line 3307
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->prepareCampaignDetails()Lorg/json/JSONObject;

    move-result-object v0

    .line 3310
    :try_start_0
    const-string v1, "campaignId"

    sget-object v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3311
    const-string v1, "userName"

    const-string v2, "kaveriTM2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3312
    const-string v1, "password"

    const-string v2, "Pass@12345"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setActionBar()V
    .locals 4

    .line 919
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 920
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 921
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 922
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 923
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 924
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090591

    .line 925
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090581

    .line 926
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 927
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 928
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

    .line 1466
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->images:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 1467
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1468
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->images:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imagelist:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v4, v5}, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    .line 1469
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1470
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->gridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1471
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1472
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvpictures:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1475
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvpictures:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1477
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-wide v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getVideoDetaisQry_assignment_testimonial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videos:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1478
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1479
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videos:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videoList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5}, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videoAdapter:Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    .line 1480
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1481
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mVideoGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videoAdapter:Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1482
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1483
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1485
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mVideoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1486
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setBottomViewPadding(Landroid/widget/TabHost;)V
    .locals 1

    const p1, 0x7f09041e

    .line 411
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private setDate_yearless(I)V
    .locals 2

    .line 2685
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2686
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2688
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2690
    const-string v1, "SAAttributeActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2692
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2693
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 824
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 825
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 826
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 827
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setLayoutData()V
    .locals 9

    .line 1169
    const-string v0, ""

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvFarmer:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pmcFarmerInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1170
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnDealer:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_prefDealerInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnDiscription:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitDescInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->etDiscription:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDescInFFA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnSave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnSave:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1175
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnInactive:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnVisit:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_visitCompleteButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 1178
    :try_start_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    const v4, 0x7f100001

    .line 1180
    :try_start_1
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {v6, v1, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryDraftQuery(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1182
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 1185
    :cond_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {v6, v1, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getEcexutionSegmentIdDraftQuery(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 1187
    iput v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selSegmentID:I

    .line 1188
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->transId:J

    invoke-virtual {v6, v1, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getEcexutionSegmentValueDraftQuery(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selCustomerId:Ljava/lang/String;

    .line 1189
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v8, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selSegmentID:I

    invoke-virtual {v7, v5, v8}, Lcom/conceptglobal/pmc/common/Queries;->getCustomerNameBySegmentValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1190
    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selSegmentID:I

    if-eq v6, v3, :cond_1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    if-ne v6, v2, :cond_2

    .line 1191
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->custDetailsText:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1193
    :cond_2
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->custDetailsText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1196
    :try_start_2
    const-string v5, "SAAttributeActivity"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1201
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {v5, v1}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryNamesListQuery(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTerritoryDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1202
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 1203
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/TerritoryMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/TerritoryMaster;->getTerritoryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/TerritoryMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TerritoryMaster;->getTerritoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 1207
    :cond_4
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->etDiscription:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getVisitDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLatitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_5

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLongitude()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_5

    .line 1209
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLatitude:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvLongitude:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->visitDetails:Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->getRemarks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->locationProvider:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1215
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tag:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 1290
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1291
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnInactive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1292
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnVisit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1293
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvRetailers:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1294
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnLatLng:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1295
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->fullDetailsBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1296
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->custDetailsText:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$8;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$8;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1305
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->territoryDetailsText:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$9;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$9;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method private setTab(I)V
    .locals 2

    .line 3160
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 3161
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 3163
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :goto_0
    return-void
.end method

.method private setVideoThumbnail()V
    .locals 0

    return-void
.end method

.method private settingData()V
    .locals 3

    .line 1226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 1227
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mYear:I

    const/4 v1, 0x2

    .line 1228
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mMonth:I

    const/4 v1, 0x5

    .line 1229
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mDay:I

    .line 1231
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitData:Ljava/util/List;

    const v1, 0x7f0902bf

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1235
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->addLastVisitAcitivityAttributes(Ljava/util/List;)V

    goto :goto_0

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tvAlert:Landroid/widget/TextView;

    const-string v2, "Please click on \u201cShow History\u201d to view last activity details in Online mode."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private settingTabs()V
    .locals 3

    .line 1004
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    const/4 v1, 0x0

    .line 1005
    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 1006
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 1008
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 1009
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_lastVisitTabName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080108

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 1010
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_customerDetailsTabName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08010b

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 1012
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_activityLastVisitText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080112

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    .line 1013
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_finishTabSelfAssignText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080166

    invoke-direct {p0, v0, v2, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private showAccessDeniedDialog()V
    .locals 4

    .line 3266
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3268
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_accessDeniedDialog()Ljava/lang/String;

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

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$33;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$33;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3273
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3274
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3275
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    .line 3167
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3168
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$29;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$29;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3176
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3177
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertCancel(Ljava/lang/String;I)V
    .locals 3

    .line 2307
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2308
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$16;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$16;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2324
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$15;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$15;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2330
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2331
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2332
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertExp(Ljava/lang/String;)V
    .locals 3

    .line 3182
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3183
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$30;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$30;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3196
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3197
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3198
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertExp(Ljava/lang/String;Lcom/conceptglobal/pmc/fo/SAAttributeActivity$BooleanWrapper;)Z
    .locals 3

    .line 3213
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3214
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$31;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$31;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Lcom/conceptglobal/pmc/fo/SAAttributeActivity$BooleanWrapper;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3222
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3223
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3224
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    .line 3226
    :cond_0
    iget-boolean p1, p2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$BooleanWrapper;->value:Z

    return p1
.end method

.method private showDiscardAlert()V
    .locals 3

    .line 2849
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2853
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_discardSelfAssignConfirmDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2855
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$23;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$23;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2863
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$24;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$24;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2872
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2873
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2874
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showErrorAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 3231
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3232
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$32;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$32;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3240
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3241
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3242
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showGoBackDialog()V
    .locals 4

    .line 2145
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2146
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

    new-instance v3, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$13;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$13;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2152
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$14;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$14;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2159
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2160
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2161
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 1702
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1703
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$12;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$12;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1709
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1710
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1711
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showRemarkSelectionAlert()V
    .locals 6

    .line 2882
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const-string v1, "SELECT itemType,itemValue FROM ConfigurableLookupMaster where itemKey=\'DiscardRemarks\'"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 2884
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->remarkNames:[Ljava/lang/String;

    .line 2885
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->remarkids:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2887
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 2888
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->remarkids:[Ljava/lang/String;

    aget-object v4, v0, v2

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 2889
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->remarkNames:[Ljava/lang/String;

    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2891
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2893
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_remarksForNotDoneSelfAssign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2894
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->remarkNames:[Ljava/lang/String;

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2958
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->d_remarks:Landroid/app/Dialog;

    .line 2959
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2960
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->d_remarks:Landroid/app/Dialog;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$26;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$26;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private startFlutterActivity()V
    .locals 1

    .line 3299
    sget-object v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3300
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->sendCampaignDetails()V

    goto :goto_0

    .line 3302
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->sendInitialData()V

    :goto_0
    return-void
.end method

.method private updateDisplay_yearless()V
    .locals 2

    .line 2673
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mFiledStr:Ljava/lang/String;

    .line 2674
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2676
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2678
    const-string v1, "SAAttributeActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2680
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setDate_yearless(I)V

    return-void
.end method

.method private validateDistributerUpdateStatus()V
    .locals 5

    .line 3248
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "DistributerNonUpdateRoleIDs"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithActiveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3249
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 3250
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 3251
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3252
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 3253
    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3254
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isDistributerEligibletoUpdate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
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

    .line 2582
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    .line 2583
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    .line 2584
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

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

    .line 606
    iget v7, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mForOperations:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mForOperations:I

    .line 607
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 608
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 609
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v10, v12, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0xa

    const/4 v11, 0x4

    const/4 v13, 0x0

    .line 610
    invoke-virtual {v10, v9, v11, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 611
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    .line 613
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 616
    iget v10, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->layoutId:I

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 618
    new-instance v10, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-direct {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 623
    iget-object v11, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    const v14, 0x7f11015b

    invoke-virtual {v10, v11, v14}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 624
    invoke-virtual {v10, v9}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setGravity(I)V

    const/4 v9, 0x5

    .line 625
    invoke-virtual {v10, v9, v13, v13, v13}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setPadding(IIII)V

    if-eqz v3, :cond_1

    .line 628
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

    .line 630
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

    .line 633
    :cond_1
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    :goto_0
    invoke-virtual {v10, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 636
    iget v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mForDates:I

    add-int/2addr v3, v8

    iput v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mForDates:I

    .line 646
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

    .line 647
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 648
    const-string v3, "operation"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 649
    iget v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mForOperations:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    .line 650
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

    .line 651
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 652
    iget-object v3, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    .line 653
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v5, 0x11

    .line 654
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const v5, 0x7f0800d7

    .line 655
    invoke-virtual {v1, v3, v3, v5, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_2

    .line 657
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setEditableFalse(Landroid/widget/EditText;)V

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

    .line 660
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 p11, v7

    if-eqz v3, :cond_5

    .line 661
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 662
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 663
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 664
    iget v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 665
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 666
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v1, 0x7f080096

    .line 667
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 668
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v1, 0x1

    if-eq v6, v1, :cond_4

    .line 672
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_4
    :goto_4
    move-object v5, v3

    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v6, v3

    goto :goto_2

    .line 675
    :cond_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 676
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 677
    iget-object v5, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 678
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 679
    iget v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mForDates:I

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setId(I)V

    const/16 v1, 0x11

    .line 680
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f080096

    .line 681
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v1, 0x7f0800c8

    const/4 v5, 0x0

    .line 682
    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 683
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->datesListenerYearless:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 686
    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_4

    :cond_6
    const/4 v7, 0x1

    .line 689
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v7, "b"

    if-eqz v3, :cond_8

    .line 690
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 691
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 692
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 693
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 694
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v5, 0x2

    .line 695
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 696
    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v7, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v7, v5, v3

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v3, 0x5

    .line 697
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_7

    .line 699
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_7
    move-object/from16 v17, v9

    move-object/from16 p3, v11

    move-object/from16 v3, v16

    :goto_5
    move-object v5, v3

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x1

    .line 702
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_b

    .line 703
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 704
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 705
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f080096

    .line 706
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v3, 0x11

    .line 707
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 708
    const-string v3, "RespondentNo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 709
    iget-object v1, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 710
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 711
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    move-object/from16 v17, v9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 713
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v17, v9

    const/16 v9, 0x32

    invoke-direct {v3, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v7, v1

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v1, 0x5

    .line 714
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_6
    const/4 v1, 0x1

    if-eq v6, v1, :cond_a

    .line 717
    invoke-direct {v0, v5}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setEditableFalse(Landroid/widget/EditText;)V

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

    .line 719
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 720
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 721
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 722
    const-string v5, "d"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 723
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 724
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x2002

    .line 725
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_c

    .line 728
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_c
    move-object v7, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v9, v6

    goto/16 :goto_9

    .line 730
    :cond_d
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 731
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 732
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 733
    const-string v5, "e"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f080096

    .line 734
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v5, 0x11

    .line 735
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v5, 0x20

    .line 736
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    if-eq v6, v3, :cond_e

    .line 739
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_e
    move-object v9, v1

    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    goto :goto_9

    .line 741
    :cond_f
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 742
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 743
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 744
    const-string v7, "n"

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v7, 0x7f080096

    .line 745
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const/16 v7, 0x11

    .line 746
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v7, 0x2

    .line 747
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    if-lez v5, :cond_10

    .line 749
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    .line 751
    new-array v7, v3, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v9, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_8
    const/4 v3, 0x5

    .line 753
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v3, 0x1

    if-eq v6, v3, :cond_11

    .line 755
    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_11
    move-object v6, v1

    goto/16 :goto_7

    :cond_12
    move-object/from16 p3, v11

    move-object/from16 v1, v16

    move-object v3, v1

    goto/16 :goto_5

    .line 759
    :goto_9
    new-instance v11, Landroid/widget/EditText;

    invoke-direct {v11, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 760
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v9

    const v9, 0x3f19999a    # 0.6f

    move-object/from16 p5, v14

    const/4 v14, -0x1

    invoke-direct {v0, v14, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 761
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p1, v7

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v9, v14, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 762
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    invoke-direct {v7, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 763
    invoke-virtual {v10, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    invoke-virtual {v11, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "DropDown"

    if-eqz v0, :cond_13

    .line 766
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    move-object/from16 v14, p1

    move-object/from16 v9, p11

    move-object/from16 p1, v11

    move-object/from16 v0, v17

    :goto_b
    move-object/from16 v11, p3

    goto/16 :goto_f

    .line 767
    :cond_13
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 768
    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 769
    :cond_14
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 770
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_15
    move-object/from16 v0, v17

    .line 771
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 772
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c
    move-object/from16 v14, p1

    :goto_d
    move-object/from16 v9, p11

    move-object/from16 p1, v11

    goto :goto_b

    .line 773
    :cond_16
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_17

    .line 774
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    .line 775
    :cond_17
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v14, p1

    .line 776
    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_18
    move-object/from16 v14, p1

    .line 777
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 p1, v11

    if-eqz v17, :cond_19

    move-object/from16 v11, p5

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 v11, v16

    if-eqz v17, :cond_1a

    .line 778
    invoke-virtual {v11, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v9, p11

    goto :goto_b

    :cond_19
    move-object/from16 v11, v16

    .line 779
    :cond_1a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1b

    move-object/from16 v16, v11

    move-object/from16 v11, p3

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 780
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_1b
    move-object/from16 v16, v11

    move-object/from16 v11, p3

    :cond_1c
    :goto_e
    move-object/from16 v9, p11

    .line 782
    :goto_f
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 783
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 784
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_10
    move-object/from16 p3, v11

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    :goto_11
    move-object/from16 v11, p13

    goto/16 :goto_13

    .line 785
    :cond_1d
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 786
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 787
    :cond_1e
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 788
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 789
    :cond_1f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 790
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 791
    :cond_20
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_21

    .line 792
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 793
    :cond_21
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 794
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 795
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

    .line 796
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_12

    :cond_23
    move-object/from16 v17, v14

    move-object/from16 v14, v16

    .line 797
    :cond_24
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25

    .line 798
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_25
    :goto_12
    move-object/from16 p3, v11

    goto :goto_11

    .line 800
    :goto_13
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v9, p0

    .line 801
    iget-object v11, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mattributesnamesArr:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object v10, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds:Ljava/util/ArrayList;

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 804
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 805
    :cond_26
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 806
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 807
    :cond_27
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 808
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 809
    :cond_28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 810
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 811
    :cond_29
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    .line 812
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 813
    :cond_2a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 814
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 815
    :cond_2b
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 816
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 817
    :cond_2c
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 818
    iget-object v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_2d
    :goto_14
    iget v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->layoutId:I

    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 909
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

    .line 2589
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->fragmentsList:Ljava/util/List;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 2173
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/16 p2, 0x65

    .line 2174
    const-string v0, "ImagePath"

    if-eq p1, p2, :cond_1

    const/16 p2, 0xca

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p3, :cond_9

    .line 2256
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imagePath:Ljava/lang/String;

    .line 2257
    const-string p1, "imageId"

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imageId:J

    goto/16 :goto_1

    .line 2226
    :cond_1
    const-string p1, "SelfAssignment"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Navigation"

    const-string v2, "Image Capture End"

    invoke-static {v1, v2, p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_9

    .line 2228
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->imagePath:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    .line 2206
    const-string p1, "FarmerId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2207
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selCustomerId:Ljava/lang/String;

    .line 2209
    :cond_3
    const-string p1, "SegmentId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2210
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selSegmentID:I

    .line 2212
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selCustomerId:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->selSegmentID:I

    if-eqz p1, :cond_9

    .line 2214
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->custDetailsText:Landroid/widget/TextView;

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

    .line 2216
    const-string p2, "MBAACTIVITY"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_5
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    .line 2178
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2179
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2182
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2183
    aget-object p1, p1, v1

    .line 2184
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    invoke-virtual {p3, p1}, Lcom/conceptglobal/pmc/common/Queries;->getListOfAttributes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 2185
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_9

    .line 2186
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2188
    :try_start_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p1, p3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerAttributeDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p3

    .line 2190
    :try_start_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tag:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 2195
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tag:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    const/4 p1, -0x1

    if-eq p2, p1, :cond_8

    if-eqz p2, :cond_7

    goto :goto_1

    .line 2244
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 2239
    :cond_8
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->fetchLocation()V

    :cond_9
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

    .line 1499
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 1500
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 1546
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 1547
    invoke-virtual {p0, p1, v4}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 1650
    :sswitch_1
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    const-string v3, "farmerType"

    const-string v5, "fromTransaction"

    const-string v6, "farmerId"

    const-string v7, "SegmentId"

    if-ne p1, v4, :cond_1

    .line 1652
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1653
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1654
    const-string p1, "The Farmer Is Unsanitized, You Can\'t Edit. "

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1658
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1660
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1661
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1662
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1663
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1664
    const-string v0, "Farmer"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1665
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_1
    if-ne p1, v2, :cond_2

    .line 1667
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1668
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1669
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1671
    const-string v0, "Planter"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_2
    if-ne p1, v1, :cond_3

    .line 1674
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1675
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1676
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1677
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1678
    const-string v0, "Retailer"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1679
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 1681
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isDistributerEligibletoUpdate:Z

    if-nez p1, :cond_4

    .line 1682
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showAccessDeniedDialog()V

    return-void

    .line 1685
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1686
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1687
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1688
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1689
    const-string v0, "Distributor"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1690
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :sswitch_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1519
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 1520
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->listAttributes_Assgnmt:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1523
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    const-string v6, "EXPREQORNOT"

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1525
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    .line 1527
    :goto_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 1528
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArr_Assgnmt:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 1534
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_expnorelated_dilog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showAlertExp(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1536
    :cond_7
    invoke-direct {p0, v4}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isValidData(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0, v4}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->saveTableAttributeData(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1537
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->checkCustomerDetails()Z

    move-result p1

    if-ne p1, v4, :cond_b

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->checkTerritorydetails()Z

    move-result p1

    if-ne p1, v4, :cond_b

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->checkImagesMandatory()Z

    move-result p1

    if-ne p1, v4, :cond_b

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->checkVideoMandatory()Z

    move-result p1

    if-ne p1, v4, :cond_b

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->checkAllMandatoryImages()Z

    move-result p1

    if-ne p1, v4, :cond_b

    .line 1538
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_confirmVisitCompleteDialogText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showAlertCancel(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1502
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->saveDataIntoDataBase(I)V

    goto/16 :goto_2

    .line 1507
    :sswitch_4
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showDiscardAlert()V

    goto/16 :goto_2

    .line 1552
    :sswitch_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->fetchLocation()V

    goto/16 :goto_2

    .line 1608
    :sswitch_6
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1609
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnViewHistory:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Show History"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const v1, 0x7f0902bf

    if-eqz p1, :cond_8

    .line 1610
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnViewHistory:Landroid/widget/Button;

    const-string v0, "Back"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1612
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1613
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1614
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1615
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1616
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 1617
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1618
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFormData()V

    .line 1629
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlLastVisitHistory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->farmerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 1632
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->btnViewHistory:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1633
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1634
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->lastVisitData:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 1635
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1636
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1638
    :cond_9
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->slLastVistdata:Landroid/widget/ScrollView;

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1639
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1645
    :cond_a
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100153

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showNoInternetDialog(Ljava/lang/String;)V

    :cond_b
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09008c -> :sswitch_6
        0x7f0900a1 -> :sswitch_5
        0x7f0900a5 -> :sswitch_4
        0x7f0900b4 -> :sswitch_3
        0x7f0900c4 -> :sswitch_2
        0x7f090445 -> :sswitch_1
        0x7f090575 -> :sswitch_0
    .end sparse-switch
.end method

.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 2574
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2575
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 0

    .line 2595
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setAdapter()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "SA Start --"

    .line 272
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0c003a

    .line 276
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setContentView(I)V

    .line 277
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-lt v1, v2, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f060052

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 279
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Z)V

    .line 281
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 284
    invoke-static {v1, v4, v4}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;II)V

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f060051

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 291
    :cond_1
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    .line 292
    new-instance v1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 293
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    const v1, 0x7f09045f

    .line 294
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 295
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 296
    const-string v1, "SelfAssignment"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Navigation"

    const-string v6, "onCreate"

    invoke-static {v5, v6, v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->initialization()V

    .line 298
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setBottomViewPadding(Landroid/widget/TabHost;)V

    .line 299
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getData(Landroid/os/Bundle;)V

    .line 300
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->settingTabs()V

    .line 301
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setLayoutData()V

    .line 302
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    const/16 v1, 0x12

    const/16 v2, 0xa

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    .line 303
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->createOperationAttributes()V

    .line 304
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 306
    :cond_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->settingData()V

    .line 307
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setListeners()V

    .line 308
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->segmentId:I

    if-eq p1, v5, :cond_3

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_3

    .line 309
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->bindOperations()V

    .line 311
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->gridView:Landroid/widget/GridView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0901de

    .line 331
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 333
    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {p1, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901df

    .line 346
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->activityId:I

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/common/Queries;->getVideoIsMandatory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v5, 0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_5

    const-wide/16 v5, 0x2

    cmp-long v7, v1, v5

    if-nez v7, :cond_4

    goto :goto_0

    .line 352
    :cond_4
    invoke-virtual {p1, v4}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    goto :goto_1

    .line 350
    :cond_5
    :goto_0
    invoke-virtual {p1, v3}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 355
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 358
    :goto_1
    new-instance v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    invoke-virtual {p1, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->message:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "send"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 393
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videoComressReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "CompressedSuccess"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 395
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->datasaveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DataSaved"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 397
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 398
    const-string v1, "Campaign_FARMERS_List"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->camaigndata_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 402
    :try_start_1
    const-string v3, "ActivityTimeDetails"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    :catch_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->validateDistributerUpdateStatus()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 855
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$6;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mDateSetListener_Yearless:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mDay:I

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$6;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 863
    const-string v0, "Select Day-Month"

    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 866
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "year"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 870
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1

    .line 853
    :cond_2
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mYear:I

    iget v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mMonth:I

    iget v7, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mDay:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 2116
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024c

    .line 2117
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->miDraft:Landroid/view/MenuItem;

    .line 2118
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2119
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->miDraft:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2120
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 4

    .line 2998
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2999
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->videoComressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3000
    const-string v0, "SelfAssignment"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onDestroy"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->datasaveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3002
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->camaigndata_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3003
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isDraftSave:Z

    const-string v1, "campaignId"

    if-nez v0, :cond_0

    sget-object v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignStatus:Ljava/lang/String;

    const-string v2, "Completed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3004
    new-instance v0, Landroid/content/Intent;

    const-string v2, "CLOSE_ACTIVITY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3005
    sget-object v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3006
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 3008
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3010
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3014
    :catch_0
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2137
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->saveDataIntoDataBase(I)V

    .line 2140
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 2132
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showGoBackDialog()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2282
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2283
    const-string p2, "onRequestPermissionResult"

    const-string v0, "SAAttributeActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 2285
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 2288
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2289
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 2291
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->fetchLocation()V

    goto :goto_0

    .line 2294
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 469
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 483
    :try_start_0
    const-string v0, "edit_text_id_values_2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 485
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 487
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 488
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 489
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 490
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    :cond_0
    const-string p1, "SAAttributeActivity"

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

    .line 2971
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 2972
    const-string v0, "SelfAssignment"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onResume"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->gettingBackImagesList(Landroid/content/Context;)V

    .line 2974
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setAdapter()V

    .line 2975
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setVideoThumbnail()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 433
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 448
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->mEntryArrIds_Assgnmt:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 451
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 452
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 457
    :cond_0
    const-string v2, "edit_text_id_values_2"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 458
    const-string p1, "SAAttributeActivity"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 461
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 2560
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 2566
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onStop()V

    return-void
.end method

.method public sendInitialData()V
    .locals 4

    .line 3322
    const-string v0, ""

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->prepareCampaignDetails()Lorg/json/JSONObject;

    move-result-object v1

    .line 3324
    :try_start_0
    const-string v2, "rootUrl"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3325
    const-string v2, "baseUrl"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3326
    const-string v2, "rootUrlWithPort"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3327
    const-string v2, "accessToken"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3331
    const-string v2, "userName"

    const-string v3, "kaveriTM2"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3332
    const-string v2, "password"

    const-string v3, "Pass@12345"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3334
    const-string v2, "clientId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3335
    const-string v2, "clientSecret"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3336
    const-string v2, "neointIdentityService"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
