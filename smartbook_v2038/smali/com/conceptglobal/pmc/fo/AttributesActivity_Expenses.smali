.class public Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;
.super Landroid/app/Activity;
.source "AttributesActivity_Expenses.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/CropChanger;
.implements Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;,
        Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$NumericDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;,
        Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$loadDataTask;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final GET_CAM_IMG_FIRST:I = 0x65

.field private static final ISDONE:I = 0x1

.field public static final REQUEST_GET_FARMERS:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "AttributesActivity"

.field private static final TIMEDIALOGID:I = 0x1

.field private static activityId:I

.field public static ctx:Landroid/content/Context;

.field private static listAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mEntryArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private static mEntryArrIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field public static textMAp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field static transId:J

.field private static webView:Landroid/webkit/WebView;


# instance fields
.field private AlertlistAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field private final REQ_CODE_SPEECH_INPUT:I

.field private activityAssignmentId:I

.field private activityName:Ljava/lang/String;

.field private assignmentDetails:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

.field private assignmentID:I

.field private atrrributesView:Landroid/widget/ScrollView;

.field private brands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public brandsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/BrandsModel;",
            ">;"
        }
    .end annotation
.end field

.field private btn:Landroid/widget/Button;

.field private btnClose:Landroid/widget/TextView;

.field private btnDiscard:Landroid/widget/TextView;

.field private btnDone:Landroid/widget/TextView;

.field private btnnotDone:Landroid/widget/TextView;

.field private childValuelistAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private countVillage:I

.field private cropChageListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

.field private cropId:Ljava/lang/String;

.field protected d_remarks:Landroid/app/Dialog;

.field private datePos:I

.field datesListener:Landroid/view/View$OnClickListener;

.field private defaultMaxDate:J

.field private defaultMinDate:J

.field private demoActivity:I

.field private dos:Ljava/lang/String;

.field private farmerId:Ljava/lang/String;

.field private farmersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/FarmerMaster;",
            ">;"
        }
    .end annotation
.end field

.field private farmersMobileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private farmersNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private image1Path:Ljava/lang/String;

.field private imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

.field private imageFile:Ljava/io/File;

.field private imageView:Landroid/widget/ImageView;

.field private imgLastVistDetails:Landroid/widget/ImageView;

.field private isPlanned:I

.field private isSelfassign:I

.field private ismba:I

.field private lastSelectedView:Landroid/widget/EditText;

.field private lastSelectedattributeModel:Lcom/conceptglobal/pmc/model/AttributeModel;

.field private lastSelectedid:Ljava/lang/String;

.field private layoutId:I

.field listener:Lcom/conceptglobal/pmc/utils/CompressListener;

.field private locationBtn:Landroid/widget/Button;

.field private locationFlag:I

.field private locationInfo:Lcom/conceptglobal/pmc/model/LocationInfo;

.field private locationLayout:Landroid/widget/LinearLayout;

.field private locationService:Lcom/conceptglobal/pmc/utils/LocationService;

.field private locationView:Landroid/view/View;

.field private mAddDynamicLinear:Landroid/widget/LinearLayout;

.field private mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDatetext:Landroid/widget/EditText;

.field private mDay:I

.field private mEntryEdt:Landroid/widget/EditText;

.field private mFiledStr:Ljava/lang/String;

.field private mForDates:I

.field private mForOperations:I

.field private mForTime:I

.field private mImageviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private mMonth:I

.field private mRating:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mTimeText:Landroid/widget/EditText;

.field private mYear:I

.field private mapEntryEdit:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mapEntryEditIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mattributesnamesArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private namesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private noofvillagesEdt:Landroid/widget/EditText;

.field private objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

.field operationListener:Landroid/view/View$OnClickListener;

.field operationListenerMultiSelect:Landroid/view/View$OnClickListener;

.field private queries:Lcom/conceptglobal/pmc/common/Queries;

.field private ratingBar:Landroid/widget/RatingBar;

.field private remarkNames:[Ljava/lang/String;

.field private remarkids:[Ljava/lang/String;

.field private rl_timer:Landroid/widget/RelativeLayout;

.field private ruleAttributeIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private segmentId:I

.field private speachText:Landroid/widget/EditText;

.field private textActivityName:Landroid/widget/TextView;

.field private textChanged:Ljava/lang/String;

.field private timePos:I

.field timesListener:Landroid/view/View$OnClickListener;

.field private tvLastVisitDetails:Landroid/widget/TextView;

.field private updateDOS:Ljava/lang/String;

.field webAppInterface:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->textMAp:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 117
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->layoutId:I

    const/16 v1, 0x64

    .line 160
    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->REQ_CODE_SPEECH_INPUT:I

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->childValuelistAttributes:Ljava/util/List;

    const/4 v1, -0x1

    .line 172
    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForOperations:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForDates:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForTime:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mRating:I

    .line 174
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->datePos:I

    .line 175
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->timePos:I

    const-wide/16 v1, -0x1

    .line 179
    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->defaultMinDate:J

    .line 180
    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->defaultMaxDate:J

    .line 188
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mFiledStr:Ljava/lang/String;

    .line 192
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationFlag:I

    .line 206
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    .line 208
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEditIds:Ljava/util/Map;

    const/4 v2, 0x0

    .line 219
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    .line 221
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    .line 246
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->countVillage:I

    .line 252
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    .line 260
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->textChanged:Ljava/lang/String;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmersList:Ljava/util/ArrayList;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->namesList:Ljava/util/ArrayList;

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmersMobileList:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmersNameList:Ljava/util/ArrayList;

    .line 2280
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$14;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$14;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->operationListener:Landroid/view/View$OnClickListener;

    .line 2442
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 2678
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$16;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$16;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->datesListener:Landroid/view/View$OnClickListener;

    .line 2686
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$17;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$17;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->timesListener:Landroid/view/View$OnClickListener;

    .line 2781
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$19;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$19;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2801
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$20;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$20;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 2955
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$21;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$21;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    .line 3179
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$24;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$24;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 117
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->assignmentID:I

    return p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/widget/EditText;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->lastSelectedView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->lastSelectedView:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->lastSelectedid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->lastSelectedid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Lcom/conceptglobal/pmc/model/AttributeModel;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->lastSelectedattributeModel:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->lastSelectedattributeModel:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->countVillage:I

    return p0
.end method

.method static synthetic access$1502(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->countVillage:I

    return p1
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getFarmersList(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Ljava/util/HashMap;)V
    .locals 0

    .line 117
    invoke-direct/range {p0 .. p5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;ILjava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->captureImage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEditIds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->findCurrentLocation()V

    return-void
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->findModelPosition(Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/widget/LinearLayout;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2410(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I
    .locals 2

    .line 117
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForOperations:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForOperations:I

    return v0
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/List;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mattributesnamesArr:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2600()Ljava/util/List;
    .locals 1

    .line 117
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArrIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)Ljava/util/List;
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->filterAttributesByFilterAttribute(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/ArrayList;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ruleAttributeIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .line 117
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Lcom/conceptglobal/pmc/model/AttributeModel;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->segmentId:I

    return p0
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ismba:I

    return p0
.end method

.method static synthetic access$3302(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->datePos:I

    return p1
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->timePos:I

    return p0
.end method

.method static synthetic access$3402(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->timePos:I

    return p1
.end method

.method static synthetic access$3502(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mYear:I

    return p1
.end method

.method static synthetic access$3602(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mMonth:I

    return p1
.end method

.method static synthetic access$3702(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDay:I

    return p1
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->updateDisplay()V

    return-void
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/widget/ImageView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->loadAttributes(I)V

    return-void
.end method

.method static synthetic access$4102(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->speachText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->promptSpeechInput()V

    return-void
.end method

.method static synthetic access$4300(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Z)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->sendWebPageLoadStatus(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->loadData()V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/ArrayList;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->namesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->namesList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Ljava/util/ArrayList;Landroid/widget/EditText;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->setAutoCompleteAdapter(Ljava/util/ArrayList;Landroid/widget/EditText;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/content/Context;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900()I
    .locals 1

    .line 117
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    return v0
.end method

.method private addDynamicLayoutVillageDetails(IILandroid/widget/LinearLayout;)V
    .locals 19

    move-object/from16 v9, p0

    .line 2092
    new-instance v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    const/4 v11, 0x0

    .line 2095
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    sget v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    move/from16 v4, p2

    invoke-virtual {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getSelectedAttributeQueryUpdate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->AlertlistAttributes:Ljava/util/List;

    .line 2096
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2097
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noAttribsAvailToastSA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2103
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2106
    :cond_0
    const-string v0, ""

    move/from16 v12, p1

    move-object v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v12, :cond_4

    .line 2107
    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v3, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v13, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 2108
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 2109
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2110
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2111
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v14, 0xa

    .line 2112
    invoke-virtual {v13, v11, v11, v11, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2113
    iget v3, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->layoutId:I

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 2118
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, -0xbbbbbc

    .line 2119
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2120
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v1, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2122
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    .line 2123
    :goto_1
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 2124
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2126
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->childValuelistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2128
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2129
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_2

    :cond_1
    move-object/from16 v16, v0

    goto :goto_2

    :cond_2
    move-object/from16 v16, v2

    .line 2136
    :goto_2
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object v6, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    move-object v7, v13

    move/from16 v18, v8

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V

    add-int/lit8 v8, v18, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    .line 2139
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2140
    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v3, p3

    .line 2142
    invoke-virtual {v3, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v15

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private captureImage(ILjava/lang/String;)V
    .locals 4

    .line 2656
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    .line 2657
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->setPictureReportingContext(Landroid/content/Context;)V

    .line 2658
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Navigation"

    const-string v2, "Image Capture Click"

    const-string v3, "Expenses"

    invoke-static {v1, v2, v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2660
    const-string v1, "activityId"

    sget v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2661
    const-string v1, "assignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityAssignmentId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2662
    const-string v1, "AttributeID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2663
    const-string p1, "AttributeName"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2665
    :try_start_0
    const-string p1, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueForImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2667
    const-string p2, "AttributesActivity"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2668
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2670
    :goto_0
    sget-wide p1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "setReferenceID"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2671
    const-string p1, "attributeId"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2672
    const-string p1, "farmerId"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2673
    const-string p1, "imageId"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2674
    const-string p1, "IdTransid"

    sget-wide v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2675
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private checkImagesInDBandDelete()V
    .locals 6

    .line 2261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2269
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ImageDetails;

    .line 2271
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteImageActDetails(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2273
    const-string v2, "AttributesActivity"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static cloneList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;"
        }
    .end annotation

    .line 2082
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2083
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2084
    new-instance v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v2, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private doDiscardOperation()V
    .locals 6

    .line 2625
    const-string v0, "AttributesActivity"

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    sget v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityAssignmentId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDiscardForActivities(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2628
    :try_start_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 2629
    const-string v2, "2"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2631
    :try_start_2
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2632
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2636
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2639
    :goto_0
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2640
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2641
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 2643
    sput-boolean v0, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    .line 2644
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2645
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2647
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->btnnotDone:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private filterAttributesByFilterAttribute(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2240
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2241
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2242
    :cond_1
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2245
    const-string v1, "AttributesActivity"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_2
    return-object v0
.end method

.method private findCurrentLocation()V
    .locals 4

    .line 2967
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2968
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 2971
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$22;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$22;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    const-string v2, "AttributesActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2987
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private findModelPosition(Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1980
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1983
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getData()V
    .locals 5

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 379
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 380
    const-string v2, "MODELCLASS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->assignmentDetails:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 381
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ismba:I

    .line 382
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    .line 383
    const-string v1, "ISSELFASSIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->isSelfassign:I

    .line 384
    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->segmentId:I

    .line 385
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    .line 386
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->isPlanned:I

    .line 387
    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityName:Ljava/lang/String;

    .line 388
    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityAssignmentId:I

    .line 389
    const-string v1, "TRANSID"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    .line 390
    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->assignmentID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 401
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getFarmersList(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 4

    .line 1993
    const-string v0, "Count"

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1995
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    .line 1996
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    .line 1995
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1997
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    .line 1998
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ismba:I

    .line 1997
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1999
    const-string v2, "SEGMENTID"

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->segmentId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2000
    const-string v2, "ISSELFASSIGN"

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->isSelfassign:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2001
    const-string v2, "ParentAttributeId"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2002
    const-string p2, "AssignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->assignmentID:I

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2003
    const-string p2, "ActivityAssignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityAssignmentId:I

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2004
    const-string p2, "TRANSID"

    sget-wide v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    invoke-virtual {v1, p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2005
    const-string p2, "DISPLAYTYPE"

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2007
    const-string p2, "FromSelfAssignment"

    const/4 p3, 0x1

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2008
    const-string p2, "farmerType"

    const-string p3, "Farmer"

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2009
    const-string p2, "SourceQry"

    invoke-virtual {p4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2010
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "ActivityShortCode"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2011
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2013
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2016
    :catch_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2019
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    .line 2021
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    .line 2019
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2022
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    .line 2024
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->isPlanned:I

    .line 2022
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x3e9

    .line 2026
    invoke-virtual {p0, v1, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static gettingBackImagesList(Landroid/content/Context;)V
    .locals 6

    .line 3378
    sget-object p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 3379
    :goto_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3381
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    sget-object v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    sget-wide v4, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getImagesList(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 3387
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->textMAp:Ljava/util/HashMap;

    sget-object v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3388
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 3392
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static gettingImageCountMessage(Landroid/content/Context;)Z
    .locals 7

    .line 3400
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3401
    :goto_0
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3403
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    const/16 v3, 0x2d0

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 3404
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    sget-object v4, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    sget-wide v5, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getImagesList(IJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 3406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please Take photo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    .line 3412
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private init()V
    .locals 2

    .line 325
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->cropChageListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

    .line 327
    sput-object p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ctx:Landroid/content/Context;

    const v0, 0x7f0902bd

    .line 332
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const v0, 0x7f090395

    .line 333
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->rl_timer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    .line 334
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f090050

    .line 335
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->textActivityName:Landroid/widget/TextView;

    const v0, 0x7f090232

    .line 344
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->atrrributesView:Landroid/widget/ScrollView;

    const v0, 0x7f090600

    .line 345
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->updateDOS:Ljava/lang/String;

    .line 347
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 348
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 351
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 352
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 353
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private initWebViews()V
    .locals 4

    .line 308
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    const/16 v1, 0x613

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->atrrributesView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 310
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 311
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->loadData()V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->atrrributesView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 314
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private loadAttributes(I)V
    .locals 9

    .line 435
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/common/Queries;->getRuleDetails(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRuleAttributeIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ruleAttributeIds:Ljava/util/ArrayList;

    .line 436
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    sget v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityAssignmentId:I

    sget-wide v4, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/pmc/common/Queries;->getPMCExpenseActivityAttributeQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    .line 438
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noAttribsAvailToastSA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 441
    :cond_0
    :goto_0
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 442
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 447
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 452
    const-string v0, "AttributesActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private loadData()V
    .locals 5

    .line 3204
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3205
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 3223
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$26;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$26;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3234
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3235
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webAppInterface:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;

    .line 3236
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3240
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    const/16 v1, 0x56a

    const-string v2, "&transId="

    const-string v3, "?pdaid="

    if-ne v0, v1, :cond_0

    .line 3241
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlDistributorVisit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x567

    if-ne v0, v1, :cond_1

    .line 3243
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlRetailerVisit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x613

    if-ne v0, v1, :cond_4

    .line 3245
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlPOG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 3247
    :cond_2
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3249
    :try_start_0
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3252
    :goto_0
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3253
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 3255
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3256
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3257
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 3258
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3259
    const-string v1, "You are not connected to internet! \nClick on OK, to continue and complete the visit."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3260
    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$27;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$27;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    const/4 v2, -0x2

    const-string v3, "Retry"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3267
    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$28;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$28;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    const/4 v2, -0x1

    const-string v3, "Ok"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3274
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static methodToGetData(Landroid/content/Context;)V
    .locals 3

    .line 3118
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    const/16 v1, 0x613

    if-ne v0, v1, :cond_0

    .line 3120
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->webView:Landroid/webkit/WebView;

    const-string v1, "checkValidation();"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 3125
    :cond_0
    check-cast p0, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;

    .line 3126
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArrIds:Ljava/util/List;

    invoke-interface {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;->GetData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private promptSpeechInput()V
    .locals 3

    .line 3143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3144
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3146
    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const v1, 0x7f1002a8

    .line 3148
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3147
    const-string v2, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 3150
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3152
    :catch_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1002a7

    .line 3153
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3152
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3154
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private sendWebPageLoadStatus(Z)V
    .locals 2

    .line 3285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "DataSaved"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3288
    const-string v1, "IsDisplayOthersTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3289
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private setAutoCompleteAdapter(Ljava/util/ArrayList;Landroid/widget/EditText;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/EditText;",
            "I)V"
        }
    .end annotation

    .line 1588
    new-instance p3, Landroid/widget/ArrayAdapter;

    const v0, 0x7f0c00cf

    invoke-direct {p3, p0, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1591
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1599
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->dismissProgressDialog()V

    .line 1601
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance p3, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$11;

    invoke-direct {p3, p0, p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$11;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;)V

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1613
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    new-instance p3, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$12;

    invoke-direct {p3, p0, p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$12;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;)V

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setData()V
    .locals 3

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mattributesnamesArr:Ljava/util/List;

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArrIds:Ljava/util/List;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mImageviews:Ljava/util/List;

    .line 417
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->textActivityName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->loadAttributes(I)V

    .line 419
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 420
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDay:I

    const/4 v1, 0x2

    .line 421
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mMonth:I

    const/4 v1, 0x1

    .line 422
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mYear:I

    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 2831
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2832
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2834
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2836
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2838
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2839
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 2253
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2254
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 2255
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2256
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setFieldDataEmpty(IZ)V
    .locals 2

    .line 3195
    :try_start_0
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 3197
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArrIds:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const-string p1, "m"

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private setListeners()V
    .locals 0

    return-void
.end method

.method private setOnTouchListener(Landroid/widget/EditText;)V
    .locals 1

    .line 3159
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$23;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$23;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;)V"
        }
    .end annotation

    .line 2041
    const-string p4, "Count"

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2042
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    .line 2043
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    .line 2042
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2044
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    .line 2045
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ismba:I

    .line 2044
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2046
    const-string v1, "SEGMENTID"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->segmentId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2047
    const-string v1, "ISSELFASSIGN"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->isSelfassign:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2048
    const-string v1, "ParentAttributeId"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2049
    const-string p2, "AssignmentId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->assignmentID:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2050
    const-string p2, "ActivityAssignmentId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityAssignmentId:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2051
    const-string p2, "TRANSID"

    sget-wide v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2052
    const-string p2, "DISPLAYTYPE"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2053
    const-string p2, "FarmersData"

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2054
    const-string p2, "FromSelfAssignment"

    const/4 p3, 0x1

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2055
    const-string p2, "farmerType"

    const-string p3, "Farmer"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2056
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "ActivityShortCode"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2057
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2059
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2062
    :catch_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2065
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    .line 2067
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    .line 2065
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2068
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    .line 2070
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->isPlanned:I

    .line 2068
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x20000

    .line 2072
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x4000000

    .line 2074
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x3

    .line 2072
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 2697
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2698
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$18;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$18;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2704
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2705
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2706
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 2223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2224
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$13;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$13;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

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

.method private updateDisplay()V
    .locals 3

    .line 2844
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mFiledStr:Ljava/lang/String;

    .line 2845
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2847
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2849
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2851
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->setDate(I)V

    return-void
.end method


# virtual methods
.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    .locals 57

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    .line 465
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForOperations:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForOperations:I

    .line 466
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForDates:I

    add-int/2addr v0, v9

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForDates:I

    .line 467
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForTime:I

    add-int/2addr v0, v9

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForTime:I

    .line 468
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mRating:I

    add-int/2addr v0, v9

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mRating:I

    .line 471
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 472
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 473
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 474
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    .line 695
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, -0x2

    const v5, 0x3ecccccd    # 0.4f

    .line 474
    invoke-direct {v0, v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v3, 0xa

    const/4 v2, 0x4

    .line 475
    invoke-virtual {v0, v3, v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 476
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    invoke-virtual {v8, v6, v6, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 478
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->layoutId:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 483
    new-instance v6, Landroid/widget/TextView;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, -0xbbbbbc

    .line 484
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 485
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v2, 0x0

    .line 498
    iput-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    .line 503
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$1;

    invoke-direct {v0, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$1;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    .line 527
    new-instance v9, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 528
    const-string v2, "Dropdown"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v15, "Rating"

    const-string v11, "AutoCompleteTextBoxN"

    move-object/from16 v19, v15

    const-string v15, "AutoCompleteTextBox"

    move-object/from16 v20, v11

    const-string v11, "TextBoxN"

    move-object/from16 v21, v15

    const-string v15, "TextArea"

    move-object/from16 v22, v11

    const-string v11, "DatePicker"

    move-object/from16 v23, v15

    const-string v15, "Multiselect Dropdown"

    move-object/from16 v24, v11

    const-string v11, ""

    const v4, 0x7f07017d

    const/16 v3, 0x11

    if-eqz v2, :cond_9

    .line 529
    new-instance v2, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 530
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 531
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForOperations:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setId(I)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextSize(F)V

    const v0, 0x7f080096

    .line 534
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 535
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    .line 536
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 537
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f0800d8

    .line 538
    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 539
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 543
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->cropId:Ljava/lang/String;

    .line 545
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getCropNameQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 550
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 553
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 556
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 563
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 566
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 564
    :cond_5
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 571
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 578
    :cond_6
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKey(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 572
    :cond_7
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 573
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKeyDefault(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 575
    :cond_8
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 582
    :goto_3
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v27

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v29

    const/16 v31, 0x0

    const/16 v17, 0x1

    move-object v1, v0

    move-object/from16 p4, v2

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    const/16 v16, 0x0

    move-wide/from16 v4, v27

    move-object/from16 v32, v6

    move-wide/from16 v6, v29

    move-object/from16 v33, v8

    move-object/from16 v8, p5

    move-object/from16 p7, v11

    move-object v11, v9

    move-object/from16 v9, v31

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$1;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object v8, v1

    goto/16 :goto_9

    :cond_9
    move-object/from16 v32, v6

    move-object/from16 v33, v8

    move-object/from16 p7, v11

    move-object v11, v9

    .line 585
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 587
    new-instance v8, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 588
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 589
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 590
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForOperations:I

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setId(I)V

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTextSize(F)V

    const v0, 0x7f080096

    .line 592
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 593
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v6, 0x11

    .line 594
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f0800d8

    .line 595
    invoke-virtual {v8, v9, v9, v0, v9}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 596
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x2b0

    if-ne v13, v0, :cond_a

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 600
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v34

    .line 601
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v37

    const-string v39, ""

    const-string v40, ""

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v41

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    sget v43, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityAssignmentId:I

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v45

    const-string v46, ""

    sget-wide v47, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    move-object/from16 v42, v1

    move/from16 v44, v2

    .line 600
    invoke-virtual/range {v34 .. v48}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamicWithSourceQry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 602
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 603
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 604
    :goto_4
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 605
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/BrandsModel;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/BrandsModel;->setBrandSelected(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 609
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 619
    :cond_a
    :try_start_2
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v0, :cond_10

    const/16 v0, 0x2b0

    if-eq v13, v0, :cond_b

    .line 624
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    .line 625
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    sget v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v5, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityAssignmentId:I

    sget-wide v16, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v4, p5

    const/16 v9, 0x11

    move-wide/from16 v6, v16

    :try_start_4
    invoke-virtual/range {v1 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJ)Ljava/lang/String;

    move-result-object v1

    .line 624
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    const/16 v9, 0x11

    .line 628
    :goto_5
    :try_start_5
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    const/16 v9, 0x11

    .line 631
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 634
    :goto_7
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_e

    .line 636
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandSelected()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 637
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_c

    .line 640
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :cond_c
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 649
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 652
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 654
    invoke-virtual {v11, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 657
    :cond_f
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_10
    const/16 v9, 0x11

    .line 660
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    const/16 v9, 0x11

    .line 663
    :goto_8
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    move-object/from16 v18, v11

    move v3, v13

    move-object/from16 v17, v15

    move-object/from16 v56, v19

    move-object/from16 v54, v22

    move-object/from16 v50, v23

    move-object/from16 v52, v24

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v4, 0x4

    move-object/from16 v11, p7

    goto/16 :goto_27

    :cond_11
    move-object/from16 v8, v24

    const/16 v9, 0x11

    .line 666
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v6, "0"

    if-eqz v2, :cond_17

    .line 667
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    .line 668
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 669
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForDates:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    .line 670
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 671
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 672
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 673
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    const v2, 0x7f080096

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 674
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 677
    :try_start_6
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->cropId:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->cropId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 678
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->cropId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->dos:Ljava/lang/String;

    .line 680
    :cond_12
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->dos:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 681
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->dos:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 682
    :cond_13
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    .line 683
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 685
    :cond_14
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDateText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 688
    const-string v2, "Attribute"

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 691
    :goto_a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 692
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 693
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 695
    :cond_15
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    const v2, 0x7f100006

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 696
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    const v2, 0x7f100005

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 697
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_16

    .line 698
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100006

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 699
    :cond_16
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_19

    .line 700
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_b

    :cond_17
    const/4 v7, 0x1

    .line 703
    const-string v1, "TimePicker"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 704
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    .line 705
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 706
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForTime:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 707
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 708
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 709
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 710
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 711
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->timesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 713
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_18

    .line 714
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 716
    :cond_18
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectTimeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_19
    :goto_b
    move-object/from16 v52, v8

    move-object/from16 v18, v11

    move v3, v13

    move-object/from16 v17, v15

    move-object/from16 v56, v19

    move-object/from16 v54, v22

    move-object/from16 v50, v23

    const/16 v2, 0xa

    const/4 v4, 0x4

    const/16 v19, 0x0

    move-object/from16 v11, p7

    goto/16 :goto_26

    :cond_1a
    move-object/from16 v5, v23

    .line 719
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 720
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    .line 721
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 722
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 723
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 724
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const v2, 0x7f080096

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 727
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 728
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/text/InputFilter;

    const/16 v16, 0x0

    aput-object v0, v3, v16

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xfa

    invoke-direct {v0, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, v3, v7

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 729
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    new-instance v4, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v17

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v23

    const/16 v25, 0x0

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v49, v4

    move-object/from16 v50, v5

    move-wide/from16 v4, v17

    move-object/from16 v51, v6

    move-wide/from16 v6, v23

    move-object/from16 v52, v8

    move-object/from16 v8, p5

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v9, v25

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$1;)V

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 730
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v51

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, p7

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 731
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_c

    .line 734
    :cond_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 732
    :cond_1c
    :goto_c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_1d
    move-object/from16 v8, p7

    .line 737
    :cond_1e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_d
    move-object/from16 v18, v11

    move v3, v13

    move-object/from16 v56, v19

    move-object/from16 v54, v22

    const/16 v2, 0xa

    const/4 v4, 0x4

    const/16 v19, 0x0

    move-object v11, v8

    goto/16 :goto_26

    :cond_1f
    move-object/from16 v50, v5

    move-object v9, v6

    move-object/from16 v52, v8

    move-object/from16 v17, v15

    move-object/from16 v6, v22

    const/4 v15, 0x0

    move-object/from16 v8, p7

    .line 753
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 756
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    .line 757
    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 758
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 759
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 760
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 761
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 762
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 765
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/4 v7, 0x1

    new-array v1, v7, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$NumericDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v2, v10, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$NumericDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)V

    aput-object v2, v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 767
    :try_start_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "EXPTOTALSUM"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    .line 769
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 771
    :goto_e
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    if-eq v1, v0, :cond_20

    .line 772
    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    new-instance v5, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v22

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v25

    const/16 v16, 0x0

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v15, v4

    move-object/from16 v53, v5

    move-wide/from16 v4, v22

    move-object/from16 v54, v6

    move-wide/from16 v6, v25

    move-object/from16 v18, v11

    move-object v11, v8

    move-object/from16 v8, p5

    move-object v13, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$1;)V

    move-object/from16 v1, v53

    invoke-virtual {v15, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_f

    :cond_20
    move-object/from16 v54, v6

    move-object v13, v9

    move-object/from16 v18, v11

    move-object v11, v8

    .line 774
    :goto_f
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    if-ne v1, v0, :cond_21

    .line 775
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    .line 780
    :cond_21
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 781
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    goto :goto_10

    .line 784
    :cond_22
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 782
    :cond_23
    :goto_10
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 787
    :cond_24
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    move/from16 v3, p3

    goto/16 :goto_15

    :cond_25
    move-object/from16 v54, v6

    move-object v13, v9

    move-object/from16 v18, v11

    move-object/from16 v15, v21

    move-object v11, v8

    .line 789
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 790
    new-instance v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    .line 791
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSingleLine(Z)V

    .line 792
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTag(Ljava/lang/Object;)V

    .line 793
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 794
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 795
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setGravity(I)V

    .line 796
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 797
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-array v1, v9, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 800
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 801
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_26

    goto :goto_12

    .line 804
    :cond_26
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 802
    :cond_27
    :goto_12
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 807
    :cond_28
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    :goto_13
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$2;

    invoke-direct {v0, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$2;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    .line 866
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 868
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$3;

    invoke-direct {v1, v10, v14}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$3;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move/from16 v3, p3

    :goto_14
    move-object/from16 v21, v15

    :goto_15
    move-object/from16 v56, v19

    const/16 v2, 0xa

    const/4 v4, 0x4

    const/16 v19, 0x0

    goto/16 :goto_26

    :cond_29
    move-object/from16 v8, v20

    const/4 v9, 0x1

    .line 907
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 908
    new-instance v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    .line 909
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSingleLine(Z)V

    .line 910
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTag(Ljava/lang/Object;)V

    .line 911
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 912
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 913
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setGravity(I)V

    .line 914
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 915
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 916
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    new-array v1, v9, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$NumericDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v2, v10, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$NumericDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 917
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 918
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_16

    .line 921
    :cond_2a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 919
    :cond_2b
    :goto_16
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 924
    :cond_2c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    :goto_17
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$4;

    invoke-direct {v1, v10, v14}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$4;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move/from16 v3, p3

    move-object/from16 v20, v8

    goto/16 :goto_14

    :cond_2d
    move-object/from16 v6, v19

    .line 958
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 959
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    .line 962
    new-instance v0, Landroid/widget/RatingBar;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    const v2, 0x1010210

    const/4 v7, 0x0

    invoke-direct {v0, v1, v7, v2}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ratingBar:Landroid/widget/RatingBar;

    .line 964
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x1

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ratingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 966
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ratingBar:Landroid/widget/RatingBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 967
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ratingBar:Landroid/widget/RatingBar;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setTag(Ljava/lang/Object;)V

    .line 968
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ratingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 969
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ratingBar:Landroid/widget/RatingBar;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mRating:I

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setId(I)V

    .line 970
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ratingBar:Landroid/widget/RatingBar;

    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setBackgroundResource(I)V

    .line 972
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ratingBar:Landroid/widget/RatingBar;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$5;

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$5;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 981
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 982
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 983
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2e
    move/from16 v3, p3

    move-object/from16 v56, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    :goto_18
    move-object/from16 v21, v15

    :goto_19
    const/16 v2, 0xa

    const/4 v4, 0x4

    goto/16 :goto_26

    :cond_2f
    const/4 v3, -0x2

    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 985
    const-string v1, "TextBoxND"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 986
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 987
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 988
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 989
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 990
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 991
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 994
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 995
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v9, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$DecimalDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v4

    const/4 v3, 0x2

    invoke-direct {v2, v10, v4, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 996
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    new-instance v4, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v19

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v21

    const/16 v16, 0x0

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v55, v4

    move-wide/from16 v4, v19

    move-object/from16 v56, v6

    move-object/from16 v19, v7

    move-wide/from16 v6, v21

    move-object v14, v8

    move-object/from16 v8, p5

    move-object/from16 v20, v14

    const/4 v14, 0x1

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$1;)V

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 998
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 999
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    goto :goto_1a

    .line 1002
    :cond_30
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 1000
    :cond_31
    :goto_1a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 1005
    :cond_32
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1b
    move/from16 v3, p3

    goto/16 :goto_18

    :cond_33
    move-object/from16 v56, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    const/4 v14, 0x1

    .line 1019
    const-string v1, "TextBox"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1020
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    .line 1021
    invoke-virtual {v1, v14}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1022
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1023
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1024
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const v2, 0x7f080096

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1025
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 1028
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v3, v14

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1029
    iget-object v9, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    new-instance v8, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v16, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v14, v8

    move-object/from16 v8, p5

    move-object/from16 v51, v13

    move-object v13, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$1;)V

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1040
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v1, 0x15

    move/from16 v13, p3

    move-object/from16 v14, v51

    if-eq v13, v1, :cond_34

    const/16 v1, 0x14

    if-ne v13, v1, :cond_35

    .line 1044
    :cond_34
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationFlag:I

    add-int/2addr v1, v2

    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationFlag:I

    .line 1047
    :cond_35
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Budget (INR)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_36

    .line 1048
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1051
    :cond_36
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Latitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1052
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const-string v2, "Latitude"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1053
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_1c

    .line 1054
    :cond_37
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1055
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const-string v2, "Longitude"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1056
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1072
    :cond_38
    :goto_1c
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Latitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_1d

    .line 1075
    :cond_39
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x1e

    invoke-direct {v0, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v9, 0x4

    goto :goto_1e

    :cond_3a
    :goto_1d
    const/4 v2, 0x1

    .line 1073
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$DecimalDigitsInputFilter;

    const/4 v3, 0x6

    const/4 v9, 0x4

    invoke-direct {v2, v10, v9, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1077
    :goto_1e
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1078
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_1f

    .line 1081
    :cond_3b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 1079
    :cond_3c
    :goto_1f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 1084
    :cond_3d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_20
    move v3, v13

    goto/16 :goto_18

    :cond_3e
    move-object v14, v13

    const/4 v9, 0x4

    move/from16 v13, p3

    .line 1086
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1087
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 1088
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1089
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1090
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1091
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1092
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1093
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1094
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1095
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1096
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    new-instance v8, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v16, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v21, v15

    move-object v15, v8

    move-object/from16 v8, p5

    const/4 v13, 0x4

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$1;)V

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1097
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1098
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_21

    .line 1101
    :cond_3f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 1099
    :cond_40
    :goto_21
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 1104
    :cond_41
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_42
    :goto_22
    move/from16 v3, p3

    goto/16 :goto_19

    :cond_43
    move-object/from16 v21, v15

    const/4 v13, 0x4

    .line 1119
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1120
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 1121
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1122
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1123
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1124
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1125
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1126
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1129
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 1130
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_44

    goto :goto_23

    .line 1133
    :cond_44
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    .line 1131
    :cond_45
    :goto_23
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    .line 1136
    :cond_46
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_24

    .line 1139
    :cond_47
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    .line 1137
    :cond_48
    :goto_24
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_22

    .line 1148
    :cond_49
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1149
    new-instance v2, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1150
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1151
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForOperations:I

    invoke-virtual {v2, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setId(I)V

    const/4 v1, 0x1

    .line 1153
    invoke-virtual {v2, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setGravity(I)V

    .line 1155
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "True"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1156
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "True"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1157
    invoke-virtual {v2, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    goto :goto_25

    :cond_4a
    const/4 v1, 0x0

    .line 1159
    invoke-virtual {v2, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    .line 1162
    :cond_4b
    :goto_25
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$6;

    invoke-direct {v0, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$6;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    invoke-virtual {v2, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move/from16 v3, p3

    move-object v1, v2

    move-object/from16 v8, v19

    const/16 v2, 0xa

    const/4 v4, 0x4

    goto :goto_27

    .line 1168
    :cond_4c
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1169
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f080090

    .line 1171
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1172
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1173
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1175
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_4d

    .line 1177
    new-instance v0, Ljava/io/File;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1180
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1181
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1184
    :cond_4d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mImageviews:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$7;

    move/from16 v3, p3

    const/4 v4, 0x4

    invoke-direct {v1, v10, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$7;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_26
    move-object/from16 v1, v19

    move-object v8, v1

    .line 1199
    :goto_27
    new-instance v0, Landroid/widget/TextView;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1206
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1207
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1208
    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v9, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->queries:Lcom/conceptglobal/pmc/common/Queries;

    sget v13, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    invoke-virtual {v9, v3, v13}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v6

    const/16 v9, 0x64

    if-eqz v6, :cond_4e

    .line 1209
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const v13, 0x3ee66666    # 0.45f

    const/4 v14, -0x1

    invoke-direct {v6, v14, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v13, 0x11

    .line 1210
    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1211
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f000000    # 0.5f

    const/4 v4, -0x2

    invoke-direct {v13, v14, v4, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1212
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const v9, 0x3ecccccd    # 0.4f

    invoke-direct {v15, v14, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1213
    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1214
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v9, v14, v14, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0x30

    .line 1215
    iput v4, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1216
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p7, v6

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v16, v9

    const/16 v9, 0x64

    invoke-direct {v4, v14, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1217
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1218
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v6, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v6, p7

    move-object/from16 v9, v16

    goto :goto_28

    :cond_4e
    const/4 v2, -0x2

    const v4, 0x3ecccccd    # 0.4f

    const/4 v14, -0x1

    .line 1221
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const v13, 0x3ee66666    # 0.45f

    invoke-direct {v6, v14, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v13, 0x11

    .line 1222
    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1223
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, 0x0

    invoke-direct {v13, v15, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1224
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct {v4, v15, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0xa

    .line 1225
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1226
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p7, v4

    const v4, 0x3ecccccd    # 0.4f

    const/16 v15, 0x64

    invoke-direct {v2, v14, v15, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1227
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1228
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x46

    const v14, 0x3dcccccd    # 0.1f

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-direct {v4, v6, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1229
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1232
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v15, p7

    move-object v9, v4

    move-object/from16 v6, v16

    move-object v4, v2

    :goto_28
    move-object/from16 v2, v32

    .line 1237
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v14, v18

    .line 1238
    invoke-virtual {v14, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1240
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1241
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_29
    move-object/from16 p7, v11

    move-object/from16 v16, v13

    move-object/from16 v18, v14

    move-object/from16 v5, v17

    :goto_2a
    move-object/from16 v14, v20

    move-object/from16 v11, v21

    move-object/from16 v15, v33

    move-object/from16 v6, v50

    move-object/from16 v7, v52

    :goto_2b
    move-object/from16 v4, v54

    :goto_2c
    move-object/from16 v13, v56

    goto/16 :goto_32

    .line 1242
    :cond_4f
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1243
    invoke-virtual {v8, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_29

    :cond_50
    move-object/from16 v5, v17

    .line 1244
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1245
    invoke-virtual {v8, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2d
    move-object/from16 p7, v11

    move-object/from16 v16, v13

    move-object/from16 v18, v14

    goto :goto_2a

    .line 1246
    :cond_51
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1247
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2d

    :cond_52
    move-object/from16 v7, v52

    .line 1248
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1249
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2e
    move-object/from16 p7, v11

    move-object/from16 v16, v13

    move-object/from16 v18, v14

    move-object/from16 v14, v20

    move-object/from16 v11, v21

    move-object/from16 v15, v33

    move-object/from16 v6, v50

    goto :goto_2b

    .line 1250
    :cond_53
    const-string v0, "TimePicker"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1251
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2e

    .line 1252
    :cond_54
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1253
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2e

    .line 1254
    :cond_55
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1255
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2e

    :cond_56
    move-object/from16 v6, v50

    .line 1256
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1257
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 p7, v11

    move-object/from16 v16, v13

    move-object/from16 v18, v14

    move-object/from16 v14, v20

    move-object/from16 v11, v21

    move-object/from16 v15, v33

    goto/16 :goto_2b

    :cond_57
    move-object/from16 v4, v54

    .line 1258
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1259
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 p7, v11

    move-object/from16 v16, v13

    move-object/from16 v18, v14

    move-object/from16 v14, v20

    move-object/from16 v11, v21

    :goto_2f
    move-object/from16 v15, v33

    goto/16 :goto_2c

    :cond_58
    move-object/from16 p7, v11

    move-object/from16 v11, v21

    .line 1260
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1261
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v15}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v16, v13

    move-object/from16 v18, v14

    move-object/from16 v14, v20

    goto :goto_2f

    :cond_59
    move-object/from16 v18, v14

    move-object/from16 v14, v20

    .line 1262
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1263
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v15}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_30
    move-object/from16 v16, v13

    goto :goto_2f

    .line 1264
    :cond_5a
    const-string v0, "TextBoxND"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1265
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_30

    :cond_5b
    move-object/from16 v16, v13

    move-object/from16 v13, v56

    .line 1266
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1267
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v9}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_31

    .line 1268
    :cond_5c
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1269
    invoke-virtual {v1, v15}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5d
    :goto_31
    move-object/from16 v15, v33

    .line 1272
    :goto_32
    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1273
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1274
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_33

    .line 1275
    :cond_5e
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1276
    invoke-virtual {v15, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_33

    .line 1277
    :cond_5f
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1278
    invoke-virtual {v15, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_33

    .line 1279
    :cond_60
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1280
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_33

    .line 1281
    :cond_61
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1282
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_33

    .line 1283
    :cond_62
    const-string v0, "TimePicker"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1284
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_33

    .line 1285
    :cond_63
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1286
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_33

    .line 1287
    :cond_64
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1288
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_33

    .line 1289
    :cond_65
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1290
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_33

    .line 1291
    :cond_66
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1292
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_33

    .line 1293
    :cond_67
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1294
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_33

    .line 1295
    :cond_68
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1296
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_33

    .line 1297
    :cond_69
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1298
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_33

    .line 1299
    :cond_6a
    const-string v0, "TextBoxND"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1300
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_33

    .line 1301
    :cond_6b
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1302
    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1304
    :cond_6c
    :goto_33
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->isSelfassign:I

    move-object/from16 v19, v13

    if-nez v0, :cond_6d

    const/4 v13, 0x1

    .line 1305
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_6d

    .line 1306
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v0

    if-ne v0, v13, :cond_6d

    .line 1307
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1311
    :cond_6d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v13, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->queries:Lcom/conceptglobal/pmc/common/Queries;

    move-object/from16 v20, v14

    sget v14, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    invoke-virtual {v13, v3, v14}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6f

    .line 1312
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/high16 v13, 0x41b00000    # 22.0f

    .line 1313
    invoke-virtual {v0, v13}, Landroid/widget/Button;->setTextSize(F)V

    .line 1314
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1315
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08016d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v13, 0x4

    .line 1316
    invoke-virtual {v0, v13}, Landroid/widget/Button;->setGravity(I)V

    .line 1317
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x1

    .line 1318
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_6e

    .line 1319
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1320
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1321
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1322
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_34

    .line 1324
    :cond_6e
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1327
    :goto_34
    new-instance v9, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;

    move-object/from16 v13, p5

    move-object/from16 v14, v20

    invoke-direct {v9, v10, v13}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_35

    :cond_6f
    move-object/from16 v13, p5

    move-object/from16 v14, v20

    .line 1363
    :goto_35
    :try_start_8
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v10}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1364
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    move-object/from16 v20, v14

    const/16 v14, 0x64

    :try_start_9
    invoke-direct {v9, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0xb

    .line 1365
    invoke-virtual {v9, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1366
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1371
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1372
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v14

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v17
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    move-object/from16 v21, v1

    :try_start_a
    invoke-virtual/range {v17 .. v17}, Lcom/conceptglobal/pmc/common/Queries;->getExpCamReqOrNot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_70

    const/16 v1, 0x8

    .line 1374
    invoke-virtual {v9, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_36

    :cond_70
    const/4 v1, 0x0

    .line 1376
    invoke-virtual {v9, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1378
    :goto_36
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v14, 0x8

    .line 1380
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1382
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v14
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-object/from16 v24, v7

    const v7, 0x7f060138

    :try_start_b
    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1384
    invoke-virtual {v1}, Landroid/widget/TextView;->bringToFront()V

    const/high16 v7, 0x42480000    # 50.0f

    .line 1385
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTranslationZ(F)V

    .line 1386
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    const/4 v14, 0x1

    invoke-virtual {v1, v7, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1387
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f0800a1

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0x11

    .line 1388
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v7, 0x41200000    # 10.0f

    .line 1389
    invoke-virtual {v9, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 1390
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1391
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f080120

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1393
    sget-object v7, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->textMAp:Ljava/util/HashMap;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v7, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0xd

    .line 1399
    invoke-virtual {v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1401
    invoke-virtual {v9, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1403
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    move-object/from16 v17, v5

    const/4 v5, -0x2

    :try_start_c
    invoke-direct {v14, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    .line 1405
    invoke-virtual {v14, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xb

    .line 1406
    invoke-virtual {v14, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v5, 0x0

    .line 1407
    invoke-virtual {v14, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1409
    invoke-virtual {v9, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1410
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1411
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1412
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1418
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1431
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$9;

    invoke-direct {v0, v10, v13}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$9;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_39

    :catch_8
    move-exception v0

    goto :goto_38

    :catch_9
    move-exception v0

    move-object/from16 v17, v5

    goto :goto_38

    :catch_a
    move-exception v0

    goto :goto_37

    :catch_b
    move-exception v0

    move-object/from16 v21, v1

    :goto_37
    move-object/from16 v17, v5

    move-object/from16 v24, v7

    goto :goto_38

    :catch_c
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v17, v5

    move-object/from16 v24, v7

    move-object/from16 v20, v14

    .line 1468
    :goto_38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1471
    :goto_39
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_71

    .line 1472
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationLayout:Landroid/widget/LinearLayout;

    .line 1473
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1475
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    goto/16 :goto_3b

    :cond_71
    const/4 v1, 0x2

    if-ne v0, v1, :cond_72

    .line 1478
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1479
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1480
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1481
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1482
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->layoutId:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1484
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, -0xbbbbbc

    .line 1485
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x4

    .line 1487
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v13, v16

    .line 1488
    invoke-virtual {v0, v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1489
    new-instance v1, Landroid/widget/Button;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationBtn:Landroid/widget/Button;

    .line 1490
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_getButton()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1491
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationBtn:Landroid/widget/Button;

    move-object/from16 v5, p1

    move-object/from16 v7, v20

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1492
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationBtn:Landroid/widget/Button;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setGravity(I)V

    .line 1493
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationBtn:Landroid/widget/Button;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1494
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f0800c6

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1495
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v9, 0x3ee66666    # 0.45f

    const/4 v13, -0x2

    invoke-direct {v1, v5, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0xa

    .line 1496
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1497
    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationBtn:Landroid/widget/Button;

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1498
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1499
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p6

    move-object/from16 v5, v19

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 1501
    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationFlag:I

    .line 1502
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationBtn:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$10;

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$10;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3b

    :cond_72
    move-object/from16 v1, p6

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    .line 1512
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ruleAttributeIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_73

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->ruleAttributeIds:Ljava/util/ArrayList;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1514
    :try_start_d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    sget v13, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->activityId:I

    invoke-virtual {v9, v13, v3}, Lcom/conceptglobal/pmc/common/Queries;->getVisibilityType(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 1515
    const-string v9, "Visibility"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/16 v0, 0x8

    .line 1516
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_3a

    :catch_d
    move-exception v0

    .line 1519
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1522
    :cond_73
    :goto_3a
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1525
    :goto_3b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mattributesnamesArr:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArrIds:Ljava/util/List;

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1527
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEditIds:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mForOperations:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1529
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    :cond_74
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1533
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1534
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    .line 1535
    :cond_75
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1536
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1537
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    .line 1538
    :cond_76
    const-string v0, "TextBoxND"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1539
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1540
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    .line 1541
    :cond_77
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1542
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1543
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    .line 1544
    :cond_78
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1545
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    .line 1547
    :cond_79
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1548
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1549
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    .line 1550
    :cond_7a
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1552
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    .line 1554
    :cond_7b
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1555
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1556
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    :cond_7c
    move-object/from16 v1, v17

    .line 1557
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1558
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1559
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    :cond_7d
    move-object/from16 v1, v24

    .line 1560
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1561
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1562
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    .line 1563
    :cond_7e
    const-string v0, "timePicker"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1564
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1565
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeText:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    .line 1566
    :cond_7f
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1567
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 1569
    :cond_80
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1570
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1572
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1573
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 1574
    :cond_81
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1575
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1576
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1577
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    :cond_82
    :goto_3c
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->layoutId:I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 2907
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v0, :cond_2

    if-eq p2, v1, :cond_1

    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 2917
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2912
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->findCurrentLocation()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_4

    if-eq p2, v1, :cond_3

    goto :goto_0

    .line 2925
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->lastSelectedattributeModel:Lcom/conceptglobal/pmc/model/AttributeModel;

    if-eqz p1, :cond_7

    .line 2926
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->lastSelectedView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->lastSelectedid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDisplayType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->lastSelectedattributeModel:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "FarmersList"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/util/HashMap;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_7

    if-ne p2, v1, :cond_7

    const/16 v0, 0x64

    if-eq p1, v0, :cond_6

    const/16 p2, 0x65

    if-eq p1, p2, :cond_5

    goto :goto_0

    .line 2937
    :cond_5
    new-instance p1, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    invoke-direct {p1, p2, p3}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CompressListener;)V

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_6
    if-ne p2, v1, :cond_7

    if-eqz p3, :cond_7

    .line 2942
    const-string p1, "android.speech.extra.RESULTS"

    .line 2943
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2944
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->speachText:Landroid/widget/EditText;

    if-eqz p2, :cond_7

    const/4 p3, 0x0

    .line 2945
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 287
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 289
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->requestWindowFeature(I)Z

    const p1, 0x7f0c0158

    .line 290
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->setContentView(I)V

    .line 291
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    .line 292
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 293
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 294
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->init()V

    .line 295
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->setListeners()V

    .line 296
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->getData()V

    .line 297
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->setData()V

    .line 299
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    const-string v0, "FARMERS_Result"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 302
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->initWebViews()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2775
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 2776
    new-instance v7, Landroid/app/TimePickerDialog;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v7

    .line 2749
    :cond_1
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v11, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mYear:I

    iget v12, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mMonth:I

    iget v13, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDay:I

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2751
    :try_start_0
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->defaultMinDate:J

    .line 2752
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->defaultMaxDate:J

    .line 2753
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2754
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->datePos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x5

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    const v5, 0x7f100006

    .line 2756
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2757
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2758
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2759
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {v6, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 2760
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 2761
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_2
    if-eqz v2, :cond_3

    const v5, 0x7f100005

    .line 2764
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2765
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 2766
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2767
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v4, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 2768
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2769
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object p1
.end method

.method public onCropchangeListener(I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2859
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->farmerId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->dos:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2860
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mDatetext:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 2861
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->dos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2864
    const-string v0, "AttributesActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 3189
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3190
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 2874
    :cond_0
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 2875
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2876
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 p1, 0x0

    .line 2878
    sput-boolean p1, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 3065
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Longitude"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3066
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3067
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 3068
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3069
    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 3070
    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 3071
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 3072
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3073
    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 3074
    check-cast v7, Landroid/widget/EditText;

    .line 3075
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3076
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3077
    :cond_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3078
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 3089
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->locationView:Landroid/view/View;

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 3052
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 2714
    :cond_0
    check-cast p2, Landroid/app/DatePickerDialog;

    .line 2716
    :try_start_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 2717
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->datePos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x5

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    const v3, 0x7f100006

    .line 2719
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2720
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 2721
    invoke-virtual {v4, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2722
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    neg-int v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 2723
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 2724
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/widget/DatePicker;->setMinDate(J)V

    goto :goto_0

    .line 2726
    :cond_1
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v3

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->defaultMinDate:J

    invoke-virtual {v3, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    :goto_0
    if-eqz v0, :cond_2

    const v3, 0x7f100005

    .line 2729
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2730
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2731
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2732
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 2733
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2734
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    goto :goto_1

    .line 2736
    :cond_2
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->defaultMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2887
    const-string p2, "onRequestPermissionResult"

    const-string v0, "AttributesActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 2889
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 2892
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2893
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 2895
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->findCurrentLocation()V

    goto :goto_0

    .line 2898
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 3358
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3360
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->gettingBackImagesList(Landroid/content/Context;)V

    .line 3362
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mImageviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3364
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v2, :cond_0

    .line 3366
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3368
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3369
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3370
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOutOfBounds(Landroid/view/MotionEvent;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onValidate(Z)V
    .locals 14

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1666
    :goto_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 1667
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->listAttributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1691
    :try_start_0
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v3, "0"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "TextBoxN"

    const/4 v8, 0x1

    const-string v9, " - "

    const-string v10, "TextBoxND"

    const-string v11, " "

    if-ne v2, v8, :cond_6

    .line 1692
    :try_start_1
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-nez v2, :cond_0

    .line 1693
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1696
    :cond_0
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v12

    if-ge v2, v12, :cond_1

    .line 1697
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    .line 1700
    :cond_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v2, :cond_2

    .line 1702
    :try_start_2
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1707
    :catch_0
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1708
    :cond_3
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12

    cmp-long v2, v12, v5

    if-eqz v2, :cond_5

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-lez v2, :cond_4

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_5

    .line 1710
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    :cond_5
    if-eqz v8, :cond_c

    .line 1715
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1721
    :cond_6
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz v2, :cond_c

    .line 1722
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v12

    if-ge v2, v12, :cond_7

    .line 1723
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    .line 1726
    :cond_7
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v2, :cond_8

    .line 1728
    :try_start_4
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1733
    :catch_1
    :cond_8
    :try_start_5
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1734
    :cond_9
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12

    cmp-long v2, v12, v5

    if-eqz v2, :cond_b

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-lez v2, :cond_a

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_b

    .line 1736
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumValueFor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    :cond_b
    if-eqz v8, :cond_c

    .line 1740
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 1747
    const-string v2, "AttributesActivity-Validation"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method protected performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ")",
            "Lcom/conceptglobal/pmc/model/AttributeModel;"
        }
    .end annotation

    .line 3095
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3097
    monitor-enter p0

    .line 3098
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3099
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3102
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 3105
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-object p3

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3099
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
