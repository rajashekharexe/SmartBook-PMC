.class public Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;
.super Landroid/app/Activity;
.source "AttributesActivityCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/CropChanger;
.implements Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;,
        Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$NumericDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$loadDataTask;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final GET_CAM_IMG_FIRST:I = 0x65

.field private static final ISDONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AttributesActivity"

.field private static final TIMEDIALOGID:I = 0x1

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

.field private activityId:I

.field private activityName:Ljava/lang/String;

.field private assignmentDetails:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

.field private assignmentID:I

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

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private image1Path:Ljava/lang/String;

.field private imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

.field private imageFile:Ljava/io/File;

.field private imageView:Landroid/widget/ImageView;

.field private imgLastVistDetails:Landroid/widget/ImageView;

.field private isPlanned:I

.field private isSelfassign:I

.field private ismba:I

.field private layoutId:I

.field listener:Lcom/conceptglobal/pmc/utils/CompressListener;

.field private locationBtn:Landroid/widget/Button;

.field private locationFlag:I

.field private locationInfo:Lcom/conceptglobal/pmc/model/LocationInfo;

.field private locationLayout:Landroid/widget/LinearLayout;

.field private locationService:Lcom/conceptglobal/pmc/utils/LocationService;

.field private locationView:Landroid/view/View;

.field private mAddDynamicLinear:Landroid/widget/LinearLayout;

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

.field private noofvillagesEdt:Landroid/widget/EditText;

.field private objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

.field operationListener:Landroid/view/View$OnClickListener;

.field operationListenerMultiSelect:Landroid/view/View$OnClickListener;

.field private queries:Lcom/conceptglobal/pmc/common/Queries;

.field private ratingBar:Landroid/widget/RatingBar;

.field private remarkNames:[Ljava/lang/String;

.field private remarkids:[Ljava/lang/String;

.field private segmentId:I

.field private speachText:Landroid/widget/EditText;

.field private textActivityName:Landroid/widget/TextView;

.field private textChanged:Ljava/lang/String;

.field private timePos:I

.field timesListener:Landroid/view/View$OnClickListener;

.field private transId:J

.field private tvLastVisitDetails:Landroid/widget/TextView;

.field private updateDOS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 105
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->layoutId:I

    const/16 v1, 0x64

    .line 146
    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->REQ_CODE_SPEECH_INPUT:I

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->childValuelistAttributes:Ljava/util/List;

    const/4 v1, -0x1

    .line 155
    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForOperations:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForDates:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForTime:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mRating:I

    .line 157
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->datePos:I

    .line 158
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->timePos:I

    const-wide/16 v1, -0x1

    .line 162
    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->defaultMinDate:J

    .line 163
    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->defaultMaxDate:J

    .line 171
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mFiledStr:Ljava/lang/String;

    .line 175
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationFlag:I

    .line 189
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    .line 190
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEditIds:Ljava/util/Map;

    const/4 v2, 0x0

    .line 199
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    .line 201
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    .line 226
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->countVillage:I

    .line 232
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->brandsList:Ljava/util/List;

    .line 240
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->textChanged:Ljava/lang/String;

    .line 1748
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$8;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->operationListener:Landroid/view/View$OnClickListener;

    .line 1910
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$9;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 2135
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$10;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$10;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->datesListener:Landroid/view/View$OnClickListener;

    .line 2143
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$11;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$11;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->timesListener:Landroid/view/View$OnClickListener;

    .line 2238
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$13;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$13;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2258
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$14;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$14;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 2405
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$15;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 105
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/List;
    .locals 1

    .line 105
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->listAttributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->findModelPosition(Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Landroid/widget/LinearLayout;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1310(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I
    .locals 2

    .line 105
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForOperations:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForOperations:I

    return v0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Ljava/util/List;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mattributesnamesArr:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500()Ljava/util/List;
    .locals 1

    .line 105
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArrIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I
    .locals 0

    .line 105
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->transId:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;I)Ljava/util/List;
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->filterAttributesByFilterAttribute(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Ljava/util/Map;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEditIds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Landroid/content/Context;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I
    .locals 0

    .line 105
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->segmentId:I

    return p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I
    .locals 0

    .line 105
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ismba:I

    return p0
.end method

.method static synthetic access$2202(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;I)I
    .locals 0

    .line 105
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->datePos:I

    return p1
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I
    .locals 0

    .line 105
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->timePos:I

    return p0
.end method

.method static synthetic access$2302(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;I)I
    .locals 0

    .line 105
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->timePos:I

    return p1
.end method

.method static synthetic access$2402(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;I)I
    .locals 0

    .line 105
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mYear:I

    return p1
.end method

.method static synthetic access$2502(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;I)I
    .locals 0

    .line 105
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mMonth:I

    return p1
.end method

.method static synthetic access$2602(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;I)I
    .locals 0

    .line 105
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDay:I

    return p1
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->updateDisplay()V

    return-void
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Landroid/widget/ImageView;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;I)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->loadAttributes(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I
    .locals 0

    .line 105
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityId:I

    return p0
.end method

.method static synthetic access$3002(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->speachText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->promptSpeechInput()V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I
    .locals 0

    .line 105
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->assignmentID:I

    return p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->farmerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method

.method static synthetic access$702(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->findCurrentLocation()V

    return-void
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method private addDynamicLayoutVillageDetails(IILandroid/widget/LinearLayout;)V
    .locals 19

    move-object/from16 v9, p0

    .line 1543
    new-instance v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    const/4 v11, 0x0

    .line 1546
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->farmerId:Ljava/lang/String;

    iget v3, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityId:I

    move/from16 v4, p2

    invoke-virtual {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getSelectedAttributeQueryUpdate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->AlertlistAttributes:Ljava/util/List;

    .line 1547
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1548
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getApplicationContext()Landroid/content/Context;

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

    .line 1553
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1554
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1557
    :cond_0
    const-string v0, ""

    move/from16 v12, p1

    move-object v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v12, :cond_4

    .line 1558
    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v3, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v13, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1559
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 1560
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1561
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1562
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v14, 0xa

    .line 1563
    invoke-virtual {v13, v11, v11, v11, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1564
    iget v3, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->layoutId:I

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1569
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, -0xbbbbbc

    .line 1570
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1571
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v1, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1573
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    .line 1574
    :goto_1
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 1575
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1577
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->childValuelistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1579
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1580
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_2

    :cond_1
    move-object/from16 v16, v0

    goto :goto_2

    :cond_2
    move-object/from16 v16, v2

    .line 1587
    :goto_2
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object v6, v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    move-object v7, v13

    move/from16 v18, v8

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V

    add-int/lit8 v8, v18, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    .line 1590
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1591
    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v3, p3

    .line 1593
    invoke-virtual {v3, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v15

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private captureImage(ILjava/lang/String;)V
    .locals 4

    .line 2113
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 2114
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PMC"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".JPEG"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageFile:Ljava/io/File;

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 2116
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->image1Path:Ljava/lang/String;

    .line 2119
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2121
    const-string v0, "com.conceptglobal.pmcdeepakfertilizers.provider"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageFile:Ljava/io/File;

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2125
    const-string v1, "output"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2127
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 2128
    const-string v2, ""

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v2, 0x3

    .line 2129
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2131
    :cond_1
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2132
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private checkImagesInDBandDelete()V
    .locals 6

    .line 1712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1720
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ImageDetails;

    .line 1722
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

    .line 1724
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

    .line 1533
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1534
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1535
    new-instance v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v2, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private doDiscardOperation()V
    .locals 6

    .line 2082
    const-string v0, "AttributesActivity"

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityId:I

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->farmerId:Ljava/lang/String;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityAssignmentId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDiscardForActivities(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2085
    :try_start_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 2086
    const-string v2, "2"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2088
    :try_start_2
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2089
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2093
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2096
    :goto_0
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2097
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2098
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 2100
    sput-boolean v0, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    .line 2101
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2102
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2104
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->btnnotDone:Landroid/widget/TextView;

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

    .line 1689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1691
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->listAttributes:Ljava/util/List;

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

    .line 1692
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1693
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

    .line 1696
    const-string v1, "AttributesActivity"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_2
    return-object v0
.end method

.method private findCurrentLocation()V
    .locals 4

    .line 2417
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2418
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 2421
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$16;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$16;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    const-string v2, "AttributesActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2437
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

    .line 1477
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1480
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

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 321
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 322
    const-string v2, "MODELCLASS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->assignmentDetails:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 323
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ismba:I

    .line 324
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->farmerId:Ljava/lang/String;

    .line 325
    const-string v1, "ISSELFASSIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->isSelfassign:I

    .line 326
    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->segmentId:I

    .line 327
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityId:I

    .line 328
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->isPlanned:I

    .line 329
    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityName:Ljava/lang/String;

    .line 330
    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityAssignmentId:I

    .line 332
    const-string v1, "TRANSID"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->transId:J

    .line 333
    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->assignmentID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 344
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 1

    .line 273
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->cropChageListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

    .line 275
    sput-object p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ctx:Landroid/content/Context;

    const v0, 0x7f0902bd

    .line 280
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const v0, 0x7f090050

    .line 281
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->textActivityName:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->updateDOS:Ljava/lang/String;

    .line 289
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 290
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 293
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 295
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private loadAttributes(I)V
    .locals 9

    .line 382
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->farmerId:Ljava/lang/String;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->segmentId:I

    iget v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityAssignmentId:I

    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->transId:J

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeTSTQueryUpdated(Ljava/lang/String;IIIJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCTSTActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->listAttributes:Ljava/util/List;

    .line 383
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getApplicationContext()Landroid/content/Context;

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

    .line 386
    :cond_0
    :goto_0
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->listAttributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 387
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->listAttributes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 392
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 397
    const-string v0, "AttributesActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static methodToGetData(Landroid/content/Context;)V
    .locals 3

    .line 2568
    check-cast p0, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;

    .line 2569
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->listAttributes:Ljava/util/List;

    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArrIds:Ljava/util/List;

    invoke-interface {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;->GetData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private promptSpeechInput()V
    .locals 3

    .line 2584
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2585
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2587
    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const v1, 0x7f1002a8

    .line 2589
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2588
    const-string v2, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 2591
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2593
    :catch_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1002a7

    .line 2594
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2593
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2595
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private setData()V
    .locals 2

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mattributesnamesArr:Ljava/util/List;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArrIds:Ljava/util/List;

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mImageviews:Ljava/util/List;

    .line 366
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->textActivityName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityId:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->loadAttributes(I)V

    .line 368
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 369
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDay:I

    const/4 v1, 0x2

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mMonth:I

    const/4 v1, 0x1

    .line 371
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mYear:I

    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 2288
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2289
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2291
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2293
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2295
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2296
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 1704
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1705
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1706
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1707
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setListeners()V
    .locals 0

    return-void
.end method

.method private setOnTouchListener(Landroid/widget/EditText;)V
    .locals 1

    .line 2600
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$17;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$17;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 3

    .line 1497
    const-string p4, "Count"

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1498
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    .line 1499
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->farmerId:Ljava/lang/String;

    .line 1498
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    .line 1501
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ismba:I

    .line 1500
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1502
    const-string v1, "SEGMENTID"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->segmentId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1503
    const-string v1, "ISSELFASSIGN"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->isSelfassign:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1504
    const-string v1, "ParentAttributeId"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1505
    const-string p2, "AssignmentId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->assignmentID:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1506
    const-string p2, "ActivityAssignmentId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityAssignmentId:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1507
    const-string p2, "TRANSID"

    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->transId:J

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1508
    const-string p2, "DISPLAYTYPE"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1510
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

    .line 1513
    :catch_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    .line 1518
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityId:I

    .line 1516
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1519
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    .line 1521
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->isPlanned:I

    .line 1519
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x20000

    .line 1523
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x4000000

    .line 1525
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x3

    .line 1523
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 2154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2155
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$12;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$12;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2162
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2163
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 1674
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1675
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$7;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1681
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1682
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 2301
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mFiledStr:Ljava/lang/String;

    .line 2302
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2304
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2306
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2308
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->setDate(I)V

    return-void
.end method


# virtual methods
.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    .locals 38

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v0, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    .line 410
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForOperations:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForOperations:I

    .line 411
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForDates:I

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForDates:I

    .line 412
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForTime:I

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForTime:I

    .line 413
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mRating:I

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mRating:I

    .line 416
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 417
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 418
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 419
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    .line 621
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x2

    .line 419
    invoke-direct {v1, v7, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0xa

    const/4 v2, 0x4

    .line 420
    invoke-virtual {v1, v5, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 421
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    invoke-virtual {v8, v6, v6, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 423
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->layoutId:I

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 428
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, -0xbbbbbc

    .line 429
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v2

    if-ne v2, v9, :cond_0

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v4, 0x0

    .line 443
    iput-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    .line 448
    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$1;

    invoke-direct {v2, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$1;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    .line 472
    new-instance v9, Landroid/widget/EditText;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v9, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 473
    const-string v4, "Dropdown"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "TextBox"

    const-string v15, "TextBoxND"

    const-string v11, "Rating"

    const-string v13, "TextBoxN"

    move-object/from16 v20, v15

    const-string v15, "TextArea"

    move-object/from16 v21, v11

    const-string v11, "DatePicker"

    move-object/from16 v22, v13

    const-string v13, "Multiselect Dropdown"

    move-object/from16 v23, v15

    const-string v15, ""

    const v7, 0x7f07017d

    const/16 v5, 0x11

    if-eqz v4, :cond_9

    .line 474
    new-instance v4, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 475
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 476
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForOperations:I

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setId(I)V

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTextSize(F)V

    const v0, 0x7f080096

    .line 479
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 480
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x0

    .line 481
    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 482
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f0800d7

    .line 483
    invoke-virtual {v4, v7, v7, v0, v7}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 484
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 488
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

    .line 489
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->cropId:Ljava/lang/String;

    .line 490
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getCropNameQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 493
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 495
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 498
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 501
    const-string v2, "AttributesActivity"

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 508
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

    .line 511
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 509
    :cond_5
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 516
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

    .line 523
    :cond_6
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKey(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 517
    :cond_7
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 518
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKeyDefault(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 520
    :cond_8
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 527
    :goto_3
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v25

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v27

    const/16 v19, 0x0

    move-object v3, v1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v29, v3

    const/16 v17, 0x1

    move-object v3, v4

    move-object/from16 v30, v4

    move-wide/from16 v4, v25

    move-object/from16 v31, v6

    move-wide/from16 v6, v27

    move-object v14, v8

    move-object/from16 v8, p5

    move-object/from16 v16, v14

    move-object/from16 p7, v15

    const/4 v15, 0x1

    move-object v14, v9

    move-object/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$1;)V

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v15, p7

    move-object v4, v1

    goto/16 :goto_a

    :cond_9
    move-object/from16 v29, v1

    move-object/from16 v31, v6

    move-object/from16 v16, v8

    move-object v14, v9

    move-object/from16 p7, v15

    const/4 v15, 0x1

    .line 529
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 531
    new-instance v8, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 532
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 533
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 534
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForOperations:I

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setId(I)V

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setTextSize(F)V

    const v1, 0x7f080096

    .line 536
    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 537
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v7, 0x11

    .line 538
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800d7

    .line 539
    invoke-virtual {v8, v9, v9, v1, v9}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 540
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    .line 545
    :cond_a
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 548
    :cond_b
    :goto_4
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v0, :cond_10

    .line 552
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    .line 553
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->farmerId:Ljava/lang/String;

    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityAssignmentId:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v8

    :try_start_3
    iget-wide v7, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->transId:J

    move-object/from16 v3, p5

    move-object v9, v5

    move-wide v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJ)Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->brandsList:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v17, v8

    .line 555
    :goto_5
    :try_start_4
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 558
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 561
    :goto_7
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->brandsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_e

    .line 563
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandSelected()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 564
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->brandsList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->brandsList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_c

    .line 567
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_c
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->brandsList:Ljava/util/List;

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

    .line 576
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_f

    move-object/from16 v2, v17

    .line 579
    :try_start_5
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 581
    invoke-virtual {v14, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_f
    move-object/from16 v2, v17

    .line 584
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_8

    :cond_10
    move-object v2, v8

    .line 587
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v2, v8

    .line 590
    :goto_8
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    move-object/from16 v15, p7

    move-object v4, v2

    :goto_a
    move-object/from16 v18, v11

    move-object/from16 v19, v13

    move-object/from16 v33, v20

    move-object/from16 v37, v22

    move-object/from16 v32, v23

    move-object/from16 v35, v31

    const/4 v0, 0x0

    const/16 v2, 0xa

    move/from16 v13, p3

    move-object/from16 v22, v14

    const/4 v14, 0x4

    goto/16 :goto_1f

    :cond_11
    const/16 v9, 0x11

    .line 592
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v8, "0"

    if-eqz v1, :cond_17

    .line 593
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    .line 594
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 595
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForDates:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 596
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 597
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 598
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 599
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 600
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 603
    :try_start_6
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->cropId:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->cropId:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 604
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->farmerId:Ljava/lang/String;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->cropId:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->dos:Ljava/lang/String;

    .line 606
    :cond_12
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->dos:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 607
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->dos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 608
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

    .line 609
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 611
    :cond_14
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_b

    :catch_6
    move-exception v0

    .line 614
    const-string v1, "Attribute"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 617
    :goto_b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 618
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 619
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 621
    :cond_15
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    const v1, 0x7f100006

    invoke-virtual {v0, v1, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 622
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    const v1, 0x7f100005

    invoke-virtual {v0, v1, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 623
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_16

    .line 624
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100006

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 625
    :cond_16
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_19

    .line 626
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 628
    :cond_17
    const-string v1, "TimePicker"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 629
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    .line 630
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 631
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForTime:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 632
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 633
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 634
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 635
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 636
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->timesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 638
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

    .line 639
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 641
    :cond_18
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

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
    :goto_c
    move-object/from16 v15, p7

    move-object/from16 v18, v11

    move-object/from16 v19, v13

    move-object/from16 v33, v20

    move-object/from16 v37, v22

    move-object/from16 v32, v23

    move-object/from16 v35, v31

    const/16 v2, 0xa

    const/16 v20, 0x0

    move/from16 v13, p3

    :goto_d
    move-object/from16 v22, v14

    :goto_e
    const/4 v14, 0x4

    goto/16 :goto_1e

    :cond_1a
    move-object/from16 v6, v23

    .line 643
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 644
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 645
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 646
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 647
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 648
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 651
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 652
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v3, v1, [Landroid/text/InputFilter;

    const/16 v17, 0x0

    aput-object v2, v3, v17

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xfa

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v3, v15

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 653
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    new-instance v7, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v18

    const/16 v23, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v32, v6

    move-object v15, v7

    move-wide/from16 v6, v18

    move-object/from16 v18, v11

    move-object v11, v8

    move-object/from16 v8, p5

    move-object/from16 v19, v13

    const/4 v13, 0x0

    move-object/from16 v9, v23

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$1;)V

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 654
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, p7

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 655
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

    goto :goto_f

    .line 658
    :cond_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 656
    :cond_1c
    :goto_f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_1d
    move-object/from16 v15, p7

    .line 661
    :cond_1e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_10
    move/from16 v13, p3

    move-object/from16 v33, v20

    move-object/from16 v37, v22

    move-object/from16 v35, v31

    const/16 v2, 0xa

    const/16 v20, 0x0

    goto/16 :goto_d

    :cond_1f
    move-object/from16 v15, p7

    move-object/from16 v32, v6

    move-object/from16 v18, v11

    move-object/from16 v19, v13

    move-object/from16 v9, v22

    const/4 v13, 0x0

    move-object v11, v8

    .line 676
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 677
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    .line 678
    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 679
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 680
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 681
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 682
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 683
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 686
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$NumericDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v10, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$NumericDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;I)V

    aput-object v1, v2, v13

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 687
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    new-instance v8, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v17, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v13, v8

    move-object/from16 v8, p5

    move-object/from16 v22, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$1;)V

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 689
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 690
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    goto :goto_11

    .line 693
    :cond_20
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 691
    :cond_21
    :goto_11
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 696
    :cond_22
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :cond_23
    move-object/from16 v22, v9

    move-object/from16 v13, v21

    .line 698
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 699
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    .line 702
    new-instance v0, Landroid/widget/RatingBar;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    const v2, 0x1010210

    const/4 v9, 0x0

    invoke-direct {v0, v1, v9, v2}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ratingBar:Landroid/widget/RatingBar;

    .line 704
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v8, -0x1

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ratingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 706
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ratingBar:Landroid/widget/RatingBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 707
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ratingBar:Landroid/widget/RatingBar;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setTag(Ljava/lang/Object;)V

    .line 708
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ratingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 709
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ratingBar:Landroid/widget/RatingBar;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mRating:I

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setId(I)V

    .line 710
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ratingBar:Landroid/widget/RatingBar;

    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setBackgroundResource(I)V

    .line 712
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ratingBar:Landroid/widget/RatingBar;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$2;

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$2;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 721
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_24

    .line 722
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 723
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    move-object/from16 v21, v13

    move-object/from16 v33, v20

    move-object/from16 v37, v22

    move-object/from16 v35, v31

    const/16 v2, 0xa

    move/from16 v13, p3

    move-object/from16 v20, v9

    goto/16 :goto_d

    :cond_25
    move-object/from16 v4, v20

    const/4 v6, -0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 725
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 726
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 727
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 728
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 729
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 730
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 731
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 734
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 735
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$DecimalDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    const/4 v5, 0x2

    invoke-direct {v1, v10, v3, v5}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;II)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 736
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    new-instance v7, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v20

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v24

    const/16 v17, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v33, v4

    move-wide/from16 v4, v20

    move-object/from16 v34, v7

    move-wide/from16 v6, v24

    move-object/from16 v21, v13

    const/4 v13, -0x1

    move-object/from16 v8, p5

    move-object/from16 v20, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$1;)V

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 738
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 739
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

    .line 742
    :cond_26
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 740
    :cond_27
    :goto_12
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 745
    :cond_28
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_13
    move/from16 v13, p3

    move-object/from16 v37, v22

    move-object/from16 v35, v31

    const/16 v2, 0xa

    goto/16 :goto_d

    :cond_29
    move-object/from16 v33, v4

    move-object/from16 v20, v9

    move-object/from16 v21, v13

    move-object/from16 v9, v31

    const/4 v13, -0x1

    .line 759
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 760
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 761
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 762
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 763
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 764
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 765
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 768
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v3, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v2, v3, v1

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 769
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    new-instance v8, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v17, 0x0

    move-object v1, v8

    move-object/from16 v23, v2

    move-object/from16 v2, p0

    move-object v13, v8

    move-object/from16 v8, p5

    move-object/from16 v35, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$1;)V

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 780
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v0, 0x15

    move/from16 v13, p3

    move-object/from16 v9, v22

    if-eq v13, v0, :cond_2a

    const/16 v0, 0x14

    if-ne v13, v0, :cond_2b

    .line 784
    :cond_2a
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationFlag:I

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationFlag:I

    .line 787
    :cond_2b
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Budget (INR)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    .line 788
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->setEditableFalse(Landroid/widget/EditText;)V

    .line 791
    :cond_2c
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 792
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 793
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_14

    .line 794
    :cond_2d
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 795
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 796
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->setEditableFalse(Landroid/widget/EditText;)V

    .line 812
    :cond_2e
    :goto_14
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_15

    .line 815
    :cond_2f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v23, v2, v1

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v8, 0x4

    goto :goto_16

    :cond_30
    :goto_15
    const/4 v3, 0x1

    .line 813
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$DecimalDigitsInputFilter;

    const/4 v3, 0x6

    const/4 v8, 0x4

    invoke-direct {v2, v10, v8, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 817
    :goto_16
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 818
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_31

    goto :goto_17

    .line 821
    :cond_31
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 819
    :cond_32
    :goto_17
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 824
    :cond_33
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_18
    move-object/from16 v37, v9

    move-object/from16 v22, v14

    const/16 v2, 0xa

    goto/16 :goto_e

    :cond_34
    move/from16 v13, p3

    move-object/from16 v35, v9

    move-object/from16 v9, v22

    const/4 v8, 0x4

    .line 826
    const-string v1, "NumberBox"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 827
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 828
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 829
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 830
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 831
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 832
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 833
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 834
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 835
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 836
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    new-instance v6, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v22

    const/16 v17, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v36, v6

    move-wide/from16 v6, v22

    move-object/from16 v22, v14

    const/4 v14, 0x4

    move-object/from16 v8, p5

    move-object/from16 v37, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$1;)V

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 837
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 838
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_35

    goto :goto_19

    .line 841
    :cond_35
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 839
    :cond_36
    :goto_19
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 844
    :cond_37
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_38
    :goto_1a
    const/16 v2, 0xa

    goto/16 :goto_1e

    :cond_39
    move-object/from16 v37, v9

    move-object/from16 v22, v14

    const/4 v14, 0x4

    .line 859
    const-string v1, "Label"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 860
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x1

    .line 861
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 862
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 863
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 864
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const v2, 0x7f080096

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 865
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 866
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 869
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 870
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_1b

    .line 873
    :cond_3a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 871
    :cond_3b
    :goto_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 876
    :cond_3c
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_1c

    .line 879
    :cond_3d
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 877
    :cond_3e
    :goto_1c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_1a

    .line 888
    :cond_3f
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 889
    new-instance v4, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 890
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 891
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForOperations:I

    invoke-virtual {v4, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setId(I)V

    const/4 v1, 0x1

    .line 893
    invoke-virtual {v4, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setGravity(I)V

    .line 895
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "True"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 896
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "True"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 897
    invoke-virtual {v4, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    goto :goto_1d

    :cond_40
    const/4 v1, 0x0

    .line 899
    invoke-virtual {v4, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    .line 902
    :cond_41
    :goto_1d
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$3;

    invoke-direct {v0, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$3;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    invoke-virtual {v4, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v0, v4

    move-object/from16 v4, v20

    const/16 v2, 0xa

    goto :goto_1f

    .line 908
    :cond_42
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 909
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f080090

    .line 911
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 912
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 913
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 915
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_43

    .line 917
    new-instance v0, Ljava/io/File;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 920
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 921
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 924
    :cond_43
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mImageviews:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$4;

    invoke-direct {v1, v10, v13}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$4;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1e
    move-object/from16 v0, v20

    move-object v4, v0

    .line 939
    :goto_1f
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 946
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 947
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 948
    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityId:I

    invoke-virtual {v7, v13, v8}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v5

    const/high16 v7, 0x3f000000    # 0.5f

    const/16 v8, 0x64

    if-eqz v5, :cond_44

    .line 949
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v9, 0x3ee66666    # 0.45f

    const/4 v11, -0x1

    invoke-direct {v5, v11, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0x11

    .line 950
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 951
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const v14, 0x3f19999a    # 0.6f

    const/4 v8, -0x2

    invoke-direct {v9, v11, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 952
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v11, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 953
    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 954
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v8, v11, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v2, 0x30

    .line 955
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 956
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p7, v5

    const/16 v5, 0x64

    invoke-direct {v2, v11, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0xa

    .line 957
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 958
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v5, p7

    goto :goto_20

    :cond_44
    const/4 v2, -0x2

    const/16 v5, 0x64

    const/4 v11, -0x1

    .line 961
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const v9, 0x3ee66666    # 0.45f

    invoke-direct {v8, v11, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0x11

    .line 962
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 963
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v11, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 964
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v11, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v7, 0xa

    .line 965
    iput v7, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 966
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p4, v8

    const v8, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v11, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 967
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 968
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v8, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 969
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v5, p4

    :goto_20
    move-object/from16 v7, v29

    .line 974
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v11, v22

    .line 975
    invoke-virtual {v11, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 976
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    const-string v1, "NumberBox"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 978
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_21
    move-object/from16 v17, v9

    move-object/from16 v22, v11

    move-object/from16 p7, v15

    move-object/from16 v9, v16

    move-object/from16 v6, v18

    move-object/from16 v1, v19

    :goto_22
    move-object/from16 v11, v21

    move-object/from16 v5, v32

    move-object/from16 v15, v33

    move-object/from16 v3, v35

    :goto_23
    move-object/from16 v2, v37

    goto/16 :goto_29

    .line 979
    :cond_45
    const-string v1, "DropDown"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 980
    invoke-virtual {v4, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_21

    :cond_46
    move-object/from16 v1, v19

    .line 981
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 982
    invoke-virtual {v4, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v9

    move-object/from16 v22, v11

    move-object/from16 p7, v15

    move-object/from16 v9, v16

    move-object/from16 v6, v18

    goto :goto_22

    :cond_47
    move-object/from16 v3, v35

    .line 983
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 984
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v9

    move-object/from16 v22, v11

    move-object/from16 p7, v15

    move-object/from16 v9, v16

    move-object/from16 v6, v18

    :goto_24
    move-object/from16 v11, v21

    move-object/from16 v5, v32

    :goto_25
    move-object/from16 v15, v33

    goto :goto_23

    :cond_48
    move-object/from16 v6, v18

    .line 985
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_49

    .line 986
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v9

    move-object/from16 v22, v11

    move-object/from16 p7, v15

    :goto_26
    move-object/from16 v9, v16

    goto :goto_24

    :cond_49
    move-object/from16 p7, v15

    .line 987
    const-string v15, "TimePicker"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4a

    .line 988
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_27
    move-object/from16 v17, v9

    move-object/from16 v22, v11

    goto :goto_26

    .line 989
    :cond_4a
    const-string v15, "Label"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4b

    .line 990
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_27

    .line 991
    :cond_4b
    const-string v15, "image"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4c

    .line 992
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_27

    :cond_4c
    move-object/from16 v5, v32

    .line 993
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4d

    .line 994
    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v9

    move-object/from16 v22, v11

    move-object/from16 v9, v16

    move-object/from16 v11, v21

    goto :goto_25

    :cond_4d
    move-object/from16 v2, v37

    .line 995
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4e

    .line 996
    iget-object v15, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v15, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v9

    move-object/from16 v22, v11

    move-object/from16 v9, v16

    move-object/from16 v11, v21

    move-object/from16 v15, v33

    goto :goto_29

    :cond_4e
    move-object/from16 v15, v33

    .line 997
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4f

    move-object/from16 v22, v11

    .line 998
    iget-object v11, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v11, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    move-object/from16 v11, v21

    goto :goto_29

    :cond_4f
    move-object/from16 v22, v11

    move-object/from16 v11, v21

    .line 999
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_50

    .line 1000
    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v14, v8}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v9

    goto :goto_28

    :cond_50
    move-object/from16 v17, v9

    .line 1001
    const-string v9, "Checkbox"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 1002
    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_51
    :goto_28
    move-object/from16 v9, v16

    .line 1005
    :goto_29
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1006
    const-string v14, "NumberBox"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_52

    .line 1007
    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2a

    .line 1008
    :cond_52
    const-string v14, "DropDown"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_53

    .line 1009
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2a

    .line 1010
    :cond_53
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_54

    .line 1011
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2a

    .line 1012
    :cond_54
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_55

    .line 1013
    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2a

    .line 1014
    :cond_55
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_56

    .line 1015
    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1016
    :cond_56
    const-string v14, "TimePicker"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_57

    .line 1017
    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1018
    :cond_57
    const-string v14, "Label"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_58

    .line 1019
    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1020
    :cond_58
    const-string v14, "image"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_59

    .line 1021
    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1022
    :cond_59
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5a

    .line 1023
    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1024
    :cond_5a
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5b

    .line 1025
    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1026
    :cond_5b
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5c

    .line 1027
    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1028
    :cond_5c
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5d

    .line 1029
    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1030
    :cond_5d
    const-string v14, "Checkbox"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5e

    .line 1031
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1033
    :cond_5e
    :goto_2a
    iget v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->isSelfassign:I

    if-nez v14, :cond_5f

    const/4 v14, 0x1

    .line 1034
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_5f

    move-object/from16 v21, v11

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v11, v11, Landroid/widget/EditText;

    if-eqz v11, :cond_60

    .line 1035
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v11

    if-ne v11, v14, :cond_60

    .line 1036
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-direct {v10, v11}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_2b

    :cond_5f
    move-object/from16 v21, v11

    .line 1040
    :cond_60
    :goto_2b
    iget-object v11, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->queries:Lcom/conceptglobal/pmc/common/Queries;

    move-object/from16 v20, v15

    iget v15, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->activityId:I

    invoke-virtual {v14, v13, v15}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_62

    .line 1041
    new-instance v11, Landroid/widget/Button;

    invoke-direct {v11, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/high16 v14, 0x41b00000    # 22.0f

    .line 1042
    invoke-virtual {v11, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 1043
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1044
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0801d2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1045
    invoke-virtual {v11, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x1

    .line 1046
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_61

    .line 1047
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1048
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1049
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1050
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2c

    .line 1052
    :cond_61
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1055
    :goto_2c
    new-instance v8, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$5;

    move-object v14, v9

    move-object/from16 v9, p5

    invoke-direct {v8, v10, v9}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$5;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-virtual {v11, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2d

    :cond_62
    move-object v14, v9

    .line 1072
    :goto_2d
    iget v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationFlag:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_63

    .line 1073
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v11, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v8, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationLayout:Landroid/widget/LinearLayout;

    .line 1074
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1076
    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v11, v20

    move-object/from16 v15, v21

    goto/16 :goto_2e

    :cond_63
    const/4 v9, 0x2

    if-ne v8, v9, :cond_64

    .line 1079
    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1080
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 1081
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    .line 1082
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1083
    iget v9, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->layoutId:I

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1085
    new-instance v9, Landroid/widget/TextView;

    iget-object v11, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v11, -0xbbbbbc

    .line 1086
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v11, 0x4

    .line 1088
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v11, v17

    .line 1089
    invoke-virtual {v8, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    new-instance v9, Landroid/widget/Button;

    iget-object v11, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v9, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationBtn:Landroid/widget/Button;

    .line 1091
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v11

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_getButton()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v9, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationBtn:Landroid/widget/Button;

    move-object/from16 v11, p1

    move-object/from16 v15, v21

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1093
    iget-object v9, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationBtn:Landroid/widget/Button;

    const/16 v11, 0x11

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setGravity(I)V

    .line 1094
    iget-object v9, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationBtn:Landroid/widget/Button;

    const/4 v11, -0x1

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 1095
    iget-object v9, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v11, 0x7f0800c6

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1096
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const v11, 0x3ee66666    # 0.45f

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v9, v14, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v11, 0xa

    .line 1097
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1098
    iget-object v11, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationBtn:Landroid/widget/Button;

    invoke-virtual {v8, v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    iget-object v9, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1100
    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v9, p6

    move-object/from16 v11, v20

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    .line 1102
    iput v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationFlag:I

    .line 1103
    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationBtn:Landroid/widget/Button;

    new-instance v9, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$6;

    invoke-direct {v9, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$6;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2e

    :cond_64
    move-object/from16 v9, p6

    move-object/from16 v11, v20

    move-object/from16 v15, v21

    .line 1113
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1115
    :goto_2e
    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mattributesnamesArr:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    sget-object v7, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArrIds:Ljava/util/List;

    move-object/from16 v8, v22

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEditIds:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mForOperations:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    const-string v7, "NumberBox"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 1119
    sget-object v7, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    :cond_65
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 1123
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2f

    .line 1125
    :cond_66
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 1126
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2f

    .line 1128
    :cond_67
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1129
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2f

    .line 1131
    :cond_68
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1132
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2f

    .line 1134
    :cond_69
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1136
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1137
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2f

    .line 1138
    :cond_6a
    const-string v2, "DropDown"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1139
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2f

    .line 1141
    :cond_6b
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1142
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2f

    .line 1144
    :cond_6c
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1145
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2f

    .line 1147
    :cond_6d
    const-string v1, "timePicker"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1148
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeText:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2f

    .line 1150
    :cond_6e
    const-string v1, "Label"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1151
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 1153
    :cond_6f
    const-string v1, "Checkbox"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1154
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v3, p7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 1158
    :cond_70
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1159
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1160
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    :cond_71
    :goto_2f
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->layoutId:I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 2365
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v0, :cond_2

    if-eq p2, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2375
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2370
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->findCurrentLocation()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    if-ne p2, v1, :cond_5

    const/16 v0, 0x64

    if-eq p1, v0, :cond_4

    const/16 p2, 0x65

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 2387
    :cond_3
    new-instance p1, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    invoke-direct {p1, p2, p3}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CompressListener;)V

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_5

    .line 2392
    const-string p1, "android.speech.extra.RESULTS"

    .line 2393
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2394
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->speachText:Landroid/widget/EditText;

    if-eqz p2, :cond_5

    const/4 p3, 0x0

    .line 2395
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 253
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 255
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->requestWindowFeature(I)Z

    const p1, 0x7f0c0158

    .line 256
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->setContentView(I)V

    .line 257
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    .line 258
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 259
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 260
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->init()V

    .line 261
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->setListeners()V

    .line 262
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->getData()V

    .line 263
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->setData()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2232
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 2233
    new-instance v7, Landroid/app/TimePickerDialog;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

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

    .line 2206
    :cond_1
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v11, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mYear:I

    iget v12, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mMonth:I

    iget v13, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDay:I

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2208
    :try_start_0
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->defaultMinDate:J

    .line 2209
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->defaultMaxDate:J

    .line 2210
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2211
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->datePos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x5

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    const v5, 0x7f100006

    .line 2213
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

    .line 2214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2215
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2216
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {v6, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 2217
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 2218
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_2
    if-eqz v2, :cond_3

    const v5, 0x7f100005

    .line 2221
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

    .line 2222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 2223
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2224
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v4, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 2225
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2226
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

    .line 2316
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->farmerId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->dos:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2317
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mDatetext:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 2318
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->dos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2321
    const-string v0, "AttributesActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 2331
    :cond_0
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 2332
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2333
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 p1, 0x0

    .line 2335
    sput-boolean p1, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 2515
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Longitude"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2516
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2517
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2518
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2519
    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 2520
    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 2521
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 2522
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2523
    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 2524
    check-cast v7, Landroid/widget/EditText;

    .line 2525
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2526
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

    .line 2527
    :cond_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2528
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

    .line 2539
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->locationView:Landroid/view/View;

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 2502
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 2171
    :cond_0
    check-cast p2, Landroid/app/DatePickerDialog;

    .line 2173
    :try_start_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 2174
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->datePos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x5

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    const v3, 0x7f100006

    .line 2176
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

    .line 2177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 2178
    invoke-virtual {v4, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2179
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    neg-int v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 2180
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 2181
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/widget/DatePicker;->setMinDate(J)V

    goto :goto_0

    .line 2183
    :cond_1
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v3

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->defaultMinDate:J

    invoke-virtual {v3, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    :goto_0
    if-eqz v0, :cond_2

    const v3, 0x7f100005

    .line 2186
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

    .line 2187
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2188
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2189
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 2190
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2191
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    goto :goto_1

    .line 2193
    :cond_2
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->defaultMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2344
    const-string p2, "onRequestPermissionResult"

    const-string v0, "AttributesActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 2346
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 2349
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2350
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 2352
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->findCurrentLocation()V

    goto :goto_0

    .line 2355
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1733
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1734
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mImageviews:Ljava/util/List;

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

    .line 1736
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v2, :cond_0

    .line 1738
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1740
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1741
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1742
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1171
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

    .line 1181
    :goto_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 1182
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->listAttributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1206
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

    .line 1207
    :try_start_1
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    .line 1208
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    .line 1211
    :cond_0
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    .line 1212
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    .line 1215
    :cond_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v2, :cond_2

    .line 1217
    :try_start_2
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    .line 1222
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

    .line 1223
    :cond_3
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12

    cmp-long v2, v12, v5

    if-eqz v2, :cond_5

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    .line 1225
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    .line 1230
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1236
    :cond_6
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    .line 1237
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    .line 1238
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    .line 1241
    :cond_7
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v2, :cond_8

    .line 1243
    :try_start_4
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    .line 1248
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

    .line 1249
    :cond_9
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12

    cmp-long v2, v12, v5

    if-eqz v2, :cond_b

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    .line 1251
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

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

    .line 1255
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 1262
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

    .line 2545
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2547
    monitor-enter p0

    .line 2548
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2549
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2552
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

    .line 2555
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

    .line 2549
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
