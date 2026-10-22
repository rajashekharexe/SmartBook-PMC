.class public Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AttributesDynmicTableViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/CropChanger;
.implements Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;,
        Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$NumericDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final GET_CAM_IMG_FIRST:I = 0x65

.field private static final ISDONE:I = 0x1

.field private static final LABLE_CROP:I = 0x64

.field private static final LABLE_PEST:I = 0x65

.field private static final TAG:Ljava/lang/String; = "AttributesActivity"

.field private static final TIMEDIALOGID:I = 0x1

.field private static btnStartStop:Landroid/widget/Button;

.field public static ctx:Landroid/content/Context;

.field private static fragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

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

.field static startTimeGPS:Ljava/lang/String;

.field static starttimeMobile:Ljava/lang/String;

.field static starttimeMobileMillis:J

.field static stopTimeGPS:Ljava/lang/String;

.field static stopTimeMobile:Ljava/lang/String;

.field public static visibiltyGoneIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
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

.field private cropAndPestIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cropChageListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

.field private cropId:Ljava/lang/String;

.field protected d_remarks:Landroid/app/Dialog;

.field private datePos:I

.field datesListener:Landroid/view/View$OnClickListener;

.field private demoActivity:I

.field dialog:Landroid/app/AlertDialog;

.field private dos:Ljava/lang/String;

.field private fabADD:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

.field private fabADD2:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

.field private farmerId:Ljava/lang/String;

.field fetchLocationCall:Ljava/lang/String;

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private image1Path:Ljava/lang/String;

.field private imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

.field private imageFile:Ljava/io/File;

.field private imageView:Landroid/widget/ImageView;

.field private isDisplayCount:I

.field private isLoadingDone:Z

.field private isPlanned:I

.field private isSelfassign:I

.field private ismba:I

.field private ivInfo:Landroid/widget/ImageView;

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

.field private remarkNames:[Ljava/lang/String;

.field private remarkids:[Ljava/lang/String;

.field private rlTimerView:Landroid/widget/RelativeLayout;

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

.field private textActivityName:Landroid/widget/TextView;

.field private textChanged:Ljava/lang/String;

.field private timePos:I

.field timer:Ljava/util/Timer;

.field timesListener:Landroid/view/View$OnClickListener;

.field private transId:J

.field private tvStartTime:Landroid/widget/TextView;

.field private tvTimer:Landroid/widget/TextView;

.field private updateDOS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 119
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->layoutId:I

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->childValuelistAttributes:Ljava/util/List;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->cropAndPestIDs:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 170
    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForOperations:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForDates:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForTime:I

    .line 172
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->datePos:I

    .line 173
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->timePos:I

    .line 184
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mFiledStr:Ljava/lang/String;

    .line 188
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationFlag:I

    .line 202
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    .line 203
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    const/4 v2, 0x0

    .line 211
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    .line 213
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    .line 238
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->countVillage:I

    .line 244
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;

    .line 252
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->textChanged:Ljava/lang/String;

    .line 272
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->fetchLocationCall:Ljava/lang/String;

    .line 1796
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$8;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->operationListener:Landroid/view/View$OnClickListener;

    .line 1957
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 2112
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$10;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$10;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->datesListener:Landroid/view/View$OnClickListener;

    .line 2120
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$11;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$11;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->timesListener:Landroid/view/View$OnClickListener;

    .line 2181
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$13;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$13;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2201
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$14;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$14;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 2316
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$15;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 119
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->fragmentList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/util/List;
    .locals 1

    .line 119
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->findModelPosition(Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1410(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I
    .locals 2

    .line 119
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForOperations:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForOperations:I

    return v0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/List;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mattributesnamesArr:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600()Ljava/util/List;
    .locals 1

    .line 119
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArrIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/util/List;
    .locals 1

    .line 119
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)J
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->transId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Landroid/content/Context;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;I)Ljava/util/List;
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->filterAttributesByFilterAttribute(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->segmentId:I

    return p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->ismba:I

    return p0
.end method

.method static synthetic access$2402(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;I)I
    .locals 0

    .line 119
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->datePos:I

    return p1
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->timePos:I

    return p0
.end method

.method static synthetic access$2502(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;I)I
    .locals 0

    .line 119
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->timePos:I

    return p1
.end method

.method static synthetic access$2602(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;I)I
    .locals 0

    .line 119
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mYear:I

    return p1
.end method

.method static synthetic access$2702(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;I)I
    .locals 0

    .line 119
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$2802(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;I)I
    .locals 0

    .line 119
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDay:I

    return p1
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->updateDisplay()V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    return p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->tvTimer:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->assignmentID:I

    return p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->farmerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->findCurrentLocation()V

    return-void
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->isLoadingDone:Z

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method private addDynamicLayoutVillageDetails(IILandroid/widget/LinearLayout;)V
    .locals 19

    move-object/from16 v9, p0

    .line 1573
    new-instance v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    const/4 v11, 0x0

    .line 1576
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->farmerId:Ljava/lang/String;

    iget v3, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    move/from16 v4, p2

    invoke-virtual {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getSelectedAttributeQueryUpdate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->AlertlistAttributes:Ljava/util/List;

    .line 1577
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1578
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 1583
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1584
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1587
    :cond_0
    const-string v0, ""

    move/from16 v12, p1

    move-object v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v12, :cond_4

    .line 1588
    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v3, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v13, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1589
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 1590
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1591
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1592
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v14, 0xa

    .line 1593
    invoke-virtual {v13, v11, v11, v11, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1594
    iget v3, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->layoutId:I

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1599
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, -0xbbbbbc

    .line 1600
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1601
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v1, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1603
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    .line 1604
    :goto_1
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 1605
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1607
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->childValuelistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1609
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1610
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_2

    :cond_1
    move-object/from16 v16, v0

    goto :goto_2

    :cond_2
    move-object/from16 v16, v2

    .line 1617
    :goto_2
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object v6, v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    move-object v7, v13

    move/from16 v18, v8

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V

    add-int/lit8 v8, v18, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    .line 1620
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1621
    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v3, p3

    .line 1623
    invoke-virtual {v3, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v15

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private bindDemoValues()V
    .locals 10

    .line 2572
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "DemoAttributeCostFilterValue"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 2574
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v1, 0x26

    const-string v2, ""

    if-ne v0, v1, :cond_0

    .line 2575
    :try_start_1
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    const/16 v3, 0x34c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 2576
    :goto_0
    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    const/16 v3, 0x29

    if-ne v1, v3, :cond_1

    .line 2577
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    const/16 v3, 0x361

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2578
    :cond_1
    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_2

    .line 2579
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    const/16 v3, 0x365

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2580
    :cond_2
    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_3

    .line 2581
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    const/16 v3, 0x376

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2584
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityExpenseAmountQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 2585
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityBrandQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2586
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityBrandIdQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2587
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityProtocolPlotSizeQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2588
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityDosageQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 2591
    :try_start_2
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    const/16 v7, 0x35d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2596
    :catch_0
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "DemoProductAttributeIDS"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2597
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2598
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    .line 2599
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_5

    .line 2600
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    aget-object v8, v1, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2601
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    aget-object v8, v1, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2602
    sget-object v7, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    aget-object v9, v1, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2611
    :catch_1
    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    const/16 v3, 0x36f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2616
    :catch_2
    :try_start_5
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    const/16 v3, 0x355

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    return-void
.end method

.method private bindFarmerExpenditure()V
    .locals 3

    .line 2625
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerDemoAmountQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 2626
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    const/16 v2, 0x356

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private captureImage(ILjava/lang/String;)V
    .locals 4

    .line 2090
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 2091
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

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageFile:Ljava/io/File;

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 2093
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->image1Path:Ljava/lang/String;

    .line 2096
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2098
    const-string v0, "com.conceptglobal.pmcdeepakfertilizers.provider"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageFile:Ljava/io/File;

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2102
    const-string v1, "output"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2104
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 2105
    const-string v2, ""

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v2, 0x3

    .line 2106
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2108
    :cond_1
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2109
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private checkImagesInDBandDelete()V
    .locals 6

    .line 1760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1768
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ImageDetails;

    .line 1770
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

    .line 1772
    const-string v2, "AttributesActivity"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearStaticvalues()V
    .locals 3

    .line 294
    const-string v0, ""

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->starttimeMobile:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 295
    sput-wide v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->starttimeMobileMillis:J

    .line 296
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->stopTimeMobile:Ljava/lang/String;

    .line 297
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->startTimeGPS:Ljava/lang/String;

    .line 298
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->stopTimeGPS:Ljava/lang/String;

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

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1564
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1565
    new-instance v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v2, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private doDiscardOperation()V
    .locals 6

    .line 2059
    const-string v0, "AttributesActivity"

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->farmerId:Ljava/lang/String;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityAssignmentId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDiscardForActivities(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2062
    :try_start_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 2063
    const-string v2, "2"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2065
    :try_start_2
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2066
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2070
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2073
    :goto_0
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2074
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2075
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 2077
    sput-boolean v0, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    .line 2078
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2079
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2081
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->btnnotDone:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 2540
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2541
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 2544
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$17;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$17;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    const-string v2, "AttributesActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2566
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
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

    .line 1737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1739
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

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

    .line 1740
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1741
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

    .line 1744
    const-string v1, "AttributesActivity"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_2
    return-object v0
.end method

.method private findCurrentLocation()V
    .locals 4

    .line 2328
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2329
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 2332
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$16;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$16;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    const-string v2, "AttributesActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2349
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

    .line 1517
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1520
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
    .locals 6

    .line 376
    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 377
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 378
    const-string v3, "MODELCLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->assignmentDetails:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 379
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->ismba:I

    .line 380
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->farmerId:Ljava/lang/String;

    .line 381
    const-string v2, "ISSELFASSIGN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->isSelfassign:I

    .line 382
    const-string v2, "SEGMENTID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->segmentId:I

    .line 383
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    .line 384
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->isPlanned:I

    .line 385
    const-string v2, "ACTIVITYNAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityName:Ljava/lang/String;

    .line 386
    const-string v2, "ActivityAssignmentId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityAssignmentId:I

    .line 387
    const-string v2, "TRANSID"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->transId:J

    .line 388
    const-string v2, "AssignmentId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->assignmentID:I

    .line 399
    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    const/16 v2, 0x5c4

    if-eq v1, v2, :cond_0

    .line 400
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->fabADD:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityAssignmentId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/conceptglobal/pmc/common/Queries;->getPairID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 404
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->countVillage:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 407
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getDynamictableQry(II)Ljava/lang/String;
    .locals 4

    .line 1216
    const-string v0, "@"

    const-string v1, ""

    .line 1218
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/conceptglobal/pmc/common/Queries;->getqueryForMIDropdown(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1219
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 1220
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->cropAndPestIDs:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1221
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->cropAndPestIDs:Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1224
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method private init()V
    .locals 2

    .line 308
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->cropChageListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

    .line 310
    sput-object p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->ctx:Landroid/content/Context;

    const v0, 0x7f0902bd

    .line 315
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const v0, 0x7f090050

    .line 316
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->textActivityName:Landroid/widget/TextView;

    const v0, 0x7f090003

    .line 317
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->fabADD:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const v0, 0x7f090274

    .line 318
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->ivInfo:Landroid/widget/ImageView;

    const v0, 0x7f090493

    .line 321
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->tvTimer:Landroid/widget/TextView;

    const v0, 0x7f09008a

    .line 322
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->btnStartStop:Landroid/widget/Button;

    .line 323
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090395

    .line 324
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->rlTimerView:Landroid/widget/RelativeLayout;

    .line 326
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->fabADD:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->ivInfo:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->updateDOS:Ljava/lang/String;

    .line 344
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 345
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 348
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 350
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 352
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->fragmentList:Ljava/util/List;

    return-void
.end method

.method private loadAttributes(I)V
    .locals 9

    .line 440
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityAssignmentId:I

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->transId:J

    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    .line 441
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 444
    :cond_0
    :goto_0
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 445
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 450
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 455
    const-string v0, "AttributesActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static methodToGetData(Landroid/content/Context;)V
    .locals 3

    .line 2480
    check-cast p0, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;

    .line 2481
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;->GetData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2482
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->fragmentList:Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;->getFragmentsList(Ljava/util/List;)V

    return-void
.end method

.method public static methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;
    .locals 0

    .line 2485
    sget-object p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->stopTimeMobile:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    .line 2486
    :cond_0
    sget-object p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->performClick()Z

    .line 2488
    :cond_1
    new-instance p0, Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-direct {p0}, Lcom/conceptglobal/pmc/model/TimeDetails;-><init>()V

    .line 2489
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->starttimeMobile:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/TimeDetails;->setMobileStartTime(Ljava/lang/String;)V

    .line 2490
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->stopTimeMobile:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/TimeDetails;->setMobileEndTime(Ljava/lang/String;)V

    .line 2491
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->startTimeGPS:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/TimeDetails;->setGPSStartTime(Ljava/lang/String;)V

    .line 2492
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->stopTimeGPS:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/TimeDetails;->setGPSEndTime(Ljava/lang/String;)V

    return-object p0
.end method

.method private setData()V
    .locals 3

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mattributesnamesArr:Ljava/util/List;

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArrIds:Ljava/util/List;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mImageviews:Ljava/util/List;

    .line 423
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->textActivityName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->loadAttributes(I)V

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->isLoadingDone:Z

    .line 426
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    .line 427
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDay:I

    const/4 v2, 0x2

    .line 428
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mMonth:I

    .line 429
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mYear:I

    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 2231
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2232
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2234
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2236
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2238
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2239
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 1752
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1753
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1754
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1755
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

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

.method private showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 4

    .line 1539
    const-string v0, "Count"

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1540
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1541
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->ismba:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1542
    const-string v2, "SEGMENTID"

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->segmentId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1543
    const-string v2, "ISSELFASSIGN"

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->isSelfassign:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1544
    const-string v2, "ParentAttributeId"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1545
    const-string p2, "AssignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->assignmentID:I

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1546
    const-string p2, "ActivityAssignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityAssignmentId:I

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1547
    const-string p2, "TRANSID"

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->transId:J

    invoke-virtual {v1, p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1549
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

    .line 1551
    :catch_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1554
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1555
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->isPlanned:I

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x20000

    .line 1556
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 2131
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2132
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2133
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$12;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$12;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2139
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->dialog:Landroid/app/AlertDialog;

    .line 2140
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2141
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->dialog:Landroid/app/AlertDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_1
    return-void
.end method

.method private showTimeSettingsAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 1722
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1723
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$7;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$7;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1730
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1731
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1732
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 2244
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mFiledStr:Ljava/lang/String;

    .line 2245
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2247
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2249
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2251
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->setDate(I)V

    return-void
.end method


# virtual methods
.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    .locals 45

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v0, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    .line 468
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForOperations:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForOperations:I

    .line 469
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForDates:I

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForDates:I

    .line 470
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForTime:I

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForTime:I

    .line 473
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 474
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 475
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 476
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v7, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0xa

    const/4 v3, 0x4

    .line 477
    invoke-virtual {v1, v5, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 478
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    invoke-virtual {v8, v6, v6, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 480
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->layoutId:I

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 482
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 483
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 484
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 485
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 486
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 488
    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setId(I)V

    .line 494
    new-instance v5, Landroid/widget/TextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, -0xbbbbbc

    .line 495
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 496
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x278

    if-eq v13, v1, :cond_0

    const/16 v1, 0x27b

    if-eq v13, v1, :cond_0

    const/16 v1, 0x27f

    if-ne v13, v1, :cond_1

    :cond_0
    const/high16 v1, 0x41a00000    # 20.0f

    .line 498
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 499
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "<u>"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</u>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v1

    if-ne v1, v9, :cond_2

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v1, 0x0

    .line 514
    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    .line 519
    new-instance v3, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$3;

    invoke-direct {v3, v10}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    .line 543
    new-instance v1, Landroid/widget/EditText;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 544
    const-string v4, "Dropdown"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v9, "Label"

    move-object/from16 v18, v9

    const-string v9, "NumberBox"

    move-object/from16 v19, v9

    const-string v9, "TextBox"

    move-object/from16 v20, v9

    const-string v9, "TextBoxND"

    move-object/from16 v21, v9

    const-string v9, "TextBoxN"

    move-object/from16 v22, v9

    const-string v9, "TextArea"

    move-object/from16 v23, v9

    const-string v9, "DatePicker"

    move-object/from16 v24, v9

    const-string v9, "Multiselect Dropdown"

    move-object/from16 v25, v9

    const-string v9, ""

    const v6, 0x7f07017d

    const/16 v7, 0x11

    const/16 v30, 0x0

    if-eqz v4, :cond_b

    .line 545
    new-instance v4, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 546
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 547
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForOperations:I

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setId(I)V

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v3

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTextSize(F)V

    const v0, 0x7f080096

    .line 550
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 551
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x0

    .line 552
    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 553
    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f0800d7

    .line 554
    invoke-virtual {v4, v6, v6, v0, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 555
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 559
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 560
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->cropId:Ljava/lang/String;

    .line 561
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/conceptglobal/pmc/common/Queries;->getCropNameQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 563
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 564
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->cropAndPestIDs:Ljava/util/ArrayList;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 567
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 570
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 573
    const-string v3, "AttributesActivity"

    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 580
    :cond_5
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

    goto :goto_0

    .line 583
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->cropAndPestIDs:Ljava/util/ArrayList;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 581
    :cond_7
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 589
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    .line 596
    :cond_8
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKey(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 590
    :cond_9
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 591
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKeyDefault(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 593
    :cond_a
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 600
    :goto_3
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v31

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v33

    const/16 v29, 0x0

    move-object v6, v1

    move-object v1, v0

    move-object v3, v2

    move-object/from16 v2, p0

    move-object/from16 v35, v3

    const/16 v16, 0x1

    move-object v3, v4

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-wide/from16 v4, v31

    move-object/from16 v38, v6

    move-wide/from16 v6, v33

    move-object v14, v8

    move-object/from16 v8, p5

    move-object/from16 v39, v9

    move-object/from16 v16, v14

    move-object/from16 v15, v24

    move-object/from16 v11, v25

    const/4 v14, 0x1

    move-object/from16 v9, v29

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$1;)V

    move-object/from16 v1, v36

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object v4, v1

    goto/16 :goto_a

    :cond_b
    move-object/from16 v38, v1

    move-object/from16 v35, v2

    move-object/from16 v37, v5

    move-object/from16 v16, v8

    move-object/from16 v39, v9

    move-object/from16 v15, v24

    move-object/from16 v11, v25

    const/4 v14, 0x1

    .line 602
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 604
    new-instance v7, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 605
    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 606
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 607
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForOperations:I

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setId(I)V

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setTextSize(F)V

    const v1, 0x7f080096

    .line 609
    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 610
    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v8, 0x11

    .line 611
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800d7

    .line 612
    invoke-virtual {v7, v9, v9, v1, v9}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 613
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    .line 618
    :cond_c
    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 621
    :cond_d
    :goto_4
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_13

    .line 625
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    .line 626
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->farmerId:Ljava/lang/String;

    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityAssignmentId:I

    iget-wide v8, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->transId:J

    move-object/from16 v3, p5

    move-object v14, v5

    move-wide v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJ)Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {v14, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;

    .line 627
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    invoke-virtual {v1, v2, v13}, Lcom/conceptglobal/pmc/common/Queries;->getMultiSelectCountDisplayValue(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->isDisplayCount:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 629
    :try_start_3
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 632
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 635
    :goto_6
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_10

    .line 637
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandSelected()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 638
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_e

    .line 641
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_e
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 650
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 653
    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->isDisplayCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Selected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f100002

    .line 655
    invoke-virtual {v7, v2, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_7

    .line 657
    :cond_11
    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_7
    move-object/from16 v14, v38

    .line 660
    :try_start_4
    invoke-virtual {v14, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_12
    move-object/from16 v14, v38

    .line 663
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_13
    move-object/from16 v14, v38

    .line 666
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v14, v38

    .line 669
    :goto_8
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    move-object v4, v7

    move-object/from16 v25, v11

    move-object/from16 v38, v14

    move-object/from16 v24, v15

    :goto_a
    move-object/from16 v1, v18

    move-object/from16 v44, v19

    move-object/from16 v42, v22

    move-object/from16 v41, v23

    move-object/from16 v0, v30

    move-object/from16 v14, v39

    const/16 v3, 0xa

    const/4 v11, 0x4

    move-object/from16 v22, v21

    goto/16 :goto_22

    :cond_14
    move-object/from16 v14, v38

    .line 671
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v9, "0"

    const/16 v17, 0x0

    if-eqz v1, :cond_1a

    .line 672
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    .line 673
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 674
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForDates:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 675
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 676
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 677
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 678
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 679
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 682
    :try_start_5
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->cropId:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->cropId:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 683
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->farmerId:Ljava/lang/String;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->cropId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->dos:Ljava/lang/String;

    .line 685
    :cond_15
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->dos:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    .line 686
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->dos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 687
    :cond_16
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    .line 688
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 690
    :cond_17
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    .line 693
    const-string v1, "Attribute"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 696
    :goto_b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 697
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 698
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 700
    :cond_18
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_19

    .line 701
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100006

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 702
    :cond_19
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1c

    .line 703
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 704
    :cond_1a
    const-string v1, "TimePicker"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 705
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    .line 706
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 707
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForTime:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 708
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 709
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 710
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 711
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 712
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->timesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 714
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 715
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 717
    :cond_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectTimeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1c
    :goto_c
    move-object/from16 v25, v11

    move-object/from16 v38, v14

    move-object/from16 v24, v15

    move-object/from16 v1, v18

    move-object/from16 v44, v19

    move-object/from16 v42, v22

    move-object/from16 v41, v23

    move-object/from16 v14, v39

    const/16 v3, 0xa

    const/4 v11, 0x4

    :goto_d
    move-object/from16 v22, v21

    goto/16 :goto_21

    :cond_1d
    move-object/from16 v8, v23

    .line 719
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 720
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 721
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 722
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 723
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 724
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 725
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setGravity(I)V

    .line 726
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v7, 0x2

    new-array v1, v7, [Landroid/text/InputFilter;

    const/16 v23, 0x0

    aput-object v3, v1, v23

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xfa

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 727
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v4, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v24

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v26

    const/16 v28, 0x0

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v40, v4

    move-wide/from16 v4, v24

    const/16 v24, 0x11

    move-wide/from16 v6, v26

    move-object/from16 v41, v8

    move-object/from16 v24, v15

    const/16 v15, 0x11

    move-object/from16 v8, p5

    move-object v15, v9

    move-object/from16 v25, v11

    const/4 v11, 0x0

    move-object/from16 v9, v28

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$1;)V

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 728
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v39

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 729
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_e

    .line 732
    :cond_1e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 730
    :cond_1f
    :goto_e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_20
    move-object/from16 v9, v39

    .line 735
    :cond_21
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    move-object/from16 v38, v14

    move-object/from16 v1, v18

    move-object/from16 v44, v19

    move-object/from16 v42, v22

    const/16 v3, 0xa

    const/4 v11, 0x4

    move-object v14, v9

    goto/16 :goto_d

    :cond_22
    move-object/from16 v41, v8

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move-object/from16 v8, v22

    const/4 v11, 0x0

    move-object v15, v9

    move-object/from16 v9, v39

    .line 750
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 751
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    .line 752
    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 753
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 754
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 755
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 756
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 757
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 758
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$NumericDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v10, v3}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$NumericDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;I)V

    aput-object v1, v2, v11

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 759
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v7, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v22

    const/16 v26, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v11, v7

    move-wide/from16 v6, v22

    move-object/from16 v42, v8

    move-object/from16 v8, p5

    move-object/from16 v38, v14

    move-object v14, v9

    move-object/from16 v9, v26

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$1;)V

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 761
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 762
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_23

    goto :goto_10

    .line 765
    :cond_23
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 763
    :cond_24
    :goto_10
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 768
    :cond_25
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    move-object/from16 v1, v18

    move-object/from16 v44, v19

    move-object/from16 v22, v21

    :goto_12
    const/16 v3, 0xa

    const/4 v11, 0x4

    goto/16 :goto_21

    :cond_26
    move-object/from16 v42, v8

    move-object/from16 v38, v14

    move-object/from16 v11, v21

    move-object v14, v9

    .line 770
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 771
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 772
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 773
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 774
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 775
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 776
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 777
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 778
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$DecimalDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    const/4 v9, 0x2

    invoke-direct {v1, v10, v3, v9}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;II)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 779
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v8, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v21, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v22, v11

    move-object v11, v8

    move-object/from16 v8, p5

    const/4 v13, 0x2

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$1;)V

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 781
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 782
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_27

    goto :goto_13

    .line 785
    :cond_27
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 783
    :cond_28
    :goto_13
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 788
    :cond_29
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_14
    move/from16 v13, p3

    :goto_15
    move-object/from16 v1, v18

    move-object/from16 v44, v19

    goto/16 :goto_12

    :cond_2a
    move-object/from16 v22, v11

    move-object/from16 v11, v20

    const/4 v13, 0x2

    .line 802
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 803
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 804
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 805
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 806
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 807
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 808
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 809
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v13, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 810
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v7

    const/16 v20, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v21, v3

    move-object v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-object/from16 v8, p5

    move-object v13, v9

    move-object/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$1;)V

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 821
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v0, 0x15

    move/from16 v13, p3

    const/4 v9, 0x2

    if-eq v13, v0, :cond_2b

    const/16 v0, 0x14

    if-ne v13, v0, :cond_2c

    .line 825
    :cond_2b
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationFlag:I

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationFlag:I

    .line 828
    :cond_2c
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Budget (INR)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2d

    .line 829
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 832
    :cond_2d
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 833
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 834
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_16

    .line 835
    :cond_2e
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 836
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 837
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 853
    :cond_2f
    :goto_16
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_17

    .line 856
    :cond_30
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v9, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v21, v1, v2

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v8, 0x4

    goto :goto_18

    :cond_31
    :goto_17
    const/4 v3, 0x1

    .line 854
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$DecimalDigitsInputFilter;

    const/4 v3, 0x6

    const/4 v8, 0x4

    invoke-direct {v2, v10, v8, v3}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 858
    :goto_18
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 859
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_32

    goto :goto_19

    .line 862
    :cond_32
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 860
    :cond_33
    :goto_19
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 865
    :cond_34
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1a
    move-object/from16 v20, v11

    goto/16 :goto_15

    :cond_35
    move/from16 v13, p3

    move-object/from16 v7, v19

    const/4 v8, 0x4

    const/4 v9, 0x2

    .line 867
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 868
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 869
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 870
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 871
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 872
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 873
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 874
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 875
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 876
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 877
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v6, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v19

    const/16 v21, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v43, v6

    move-object/from16 v44, v7

    move-wide/from16 v6, v19

    move-object/from16 v20, v11

    const/4 v11, 0x4

    move-object/from16 v8, p5

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$1;)V

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 878
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 879
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_36

    goto :goto_1b

    .line 882
    :cond_36
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 880
    :cond_37
    :goto_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 885
    :cond_38
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1c
    move-object/from16 v1, v18

    :cond_39
    :goto_1d
    const/16 v3, 0xa

    goto/16 :goto_21

    :cond_3a
    move-object/from16 v44, v7

    move-object/from16 v20, v11

    move-object/from16 v1, v18

    const/4 v11, 0x4

    .line 900
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 901
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v3, 0x1

    .line 902
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 903
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 904
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 905
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const v3, 0x7f080096

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 906
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 907
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 911
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 912
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

    goto :goto_1e

    .line 915
    :cond_3b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    .line 913
    :cond_3c
    :goto_1e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    .line 918
    :cond_3d
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_1f

    .line 921
    :cond_3e
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    .line 919
    :cond_3f
    :goto_1f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_1d

    .line 930
    :cond_40
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 931
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 932
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 933
    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForOperations:I

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setId(I)V

    const/4 v2, 0x1

    .line 935
    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setGravity(I)V

    .line 937
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "True"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 938
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "True"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 939
    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    goto :goto_20

    :cond_41
    const/4 v2, 0x0

    .line 941
    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    .line 944
    :cond_42
    :goto_20
    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$4;

    invoke-direct {v2, v10}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v4, v17

    const/16 v3, 0xa

    goto :goto_22

    .line 950
    :cond_43
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 951
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f080090

    .line 953
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 954
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 955
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 957
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_44

    .line 959
    new-instance v0, Ljava/io/File;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 962
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 963
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 966
    :cond_44
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mImageviews:Ljava/util/List;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$5;

    invoke-direct {v2, v10, v13}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$5;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_21
    move-object/from16 v4, v17

    move-object/from16 v0, v30

    .line 981
    :goto_22
    new-instance v2, Landroid/widget/TextView;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 988
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 989
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 990
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    const/4 v15, -0x2

    invoke-direct {v6, v9, v15, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 991
    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v11, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    invoke-virtual {v11, v13, v3}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v3

    const/16 v11, 0x64

    if-eqz v3, :cond_45

    .line 992
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v8, 0x3ee66666    # 0.45f

    invoke-direct {v3, v9, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v8, 0x11

    .line 993
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 994
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const v11, 0x3f19999a    # 0.6f

    invoke-direct {v8, v9, v15, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 995
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v17, v3

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v11, v9, v15, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v15, 0xa

    .line 996
    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 997
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v15, v9, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v3, 0x30

    .line 998
    iput v3, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 999
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p4, v8

    const/16 v8, 0x64

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-direct {v3, v9, v8, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v8, 0xa

    .line 1000
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object v8, v3

    move-object v15, v11

    move-object/from16 v3, v17

    move-object/from16 v9, v37

    move-object/from16 v11, p4

    goto :goto_23

    :cond_45
    const/16 v3, 0xa

    const/16 v8, 0x64

    const/high16 v15, 0x3f000000    # 0.5f

    .line 1003
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3ee66666    # 0.45f

    invoke-direct {v11, v9, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v3, 0x11

    .line 1004
    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1005
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v3, v9, v8, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 p4, v3

    .line 1006
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v8, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v15, 0xa

    .line 1007
    iput v15, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1008
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v17, v3

    const v3, 0x3ecccccd    # 0.4f

    move-object/from16 v18, v11

    const/16 v11, 0x64

    invoke-direct {v8, v9, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1009
    iput v15, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1010
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v11, 0x3e4ccccd    # 0.2f

    const/4 v15, -0x2

    invoke-direct {v3, v9, v15, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v11, p4

    move-object/from16 v15, v17

    move-object/from16 v3, v18

    move-object/from16 v9, v37

    .line 1012
    :goto_23
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v39, v14

    move-object/from16 v14, v38

    .line 1013
    invoke-virtual {v14, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1014
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v2, v44

    .line 1015
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1016
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_24
    move-object/from16 v17, v11

    move-object/from16 v38, v14

    move-object/from16 v11, v16

    move-object/from16 v7, v20

    move-object/from16 v8, v22

    move-object/from16 v14, v24

    move-object/from16 v5, v25

    :goto_25
    move-object/from16 v3, v41

    :goto_26
    move-object/from16 v6, v42

    goto/16 :goto_2a

    .line 1017
    :cond_46
    const-string v5, "DropDown"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1018
    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    :cond_47
    move-object/from16 v5, v25

    .line 1019
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 1020
    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v11

    move-object/from16 v38, v14

    move-object/from16 v11, v16

    move-object/from16 v7, v20

    :goto_27
    move-object/from16 v8, v22

    move-object/from16 v14, v24

    goto :goto_25

    :cond_48
    move-object/from16 v7, v20

    .line 1021
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_49

    .line 1022
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v11

    move-object/from16 v38, v14

    move-object/from16 v11, v16

    goto :goto_27

    :cond_49
    move-object/from16 v38, v14

    move-object/from16 v14, v24

    .line 1023
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4a

    .line 1024
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v11

    :goto_28
    move-object/from16 v11, v16

    move-object/from16 v8, v22

    goto :goto_25

    :cond_4a
    move-object/from16 v17, v11

    .line 1025
    const-string v11, "TimePicker"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4b

    .line 1026
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_28

    .line 1027
    :cond_4b
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4c

    .line 1028
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_28

    .line 1029
    :cond_4c
    const-string v6, "image"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 1030
    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_28

    :cond_4d
    move-object/from16 v3, v41

    .line 1031
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 1032
    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v11, v16

    move-object/from16 v8, v22

    goto/16 :goto_26

    :cond_4e
    move-object/from16 v6, v42

    .line 1033
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 1034
    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v8, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v11, v16

    move-object/from16 v8, v22

    goto :goto_2a

    :cond_4f
    move-object/from16 v8, v22

    .line 1035
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_50

    .line 1036
    iget-object v11, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v11, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_29

    .line 1037
    :cond_50
    const-string v11, "Checkbox"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_51

    .line 1038
    invoke-virtual {v0, v15}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_51
    :goto_29
    move-object/from16 v11, v16

    .line 1040
    :goto_2a
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1041
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_52

    .line 1042
    iget-object v15, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2b

    .line 1043
    :cond_52
    const-string v15, "DropDown"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_53

    .line 1044
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2b

    .line 1045
    :cond_53
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_54

    .line 1046
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2b

    .line 1047
    :cond_54
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_55

    .line 1048
    iget-object v15, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2b

    .line 1049
    :cond_55
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_56

    .line 1050
    iget-object v15, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2b

    .line 1051
    :cond_56
    const-string v15, "TimePicker"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_57

    .line 1052
    iget-object v15, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2b

    .line 1053
    :cond_57
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_58

    .line 1054
    iget-object v15, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2b

    .line 1055
    :cond_58
    const-string v15, "image"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_59

    .line 1056
    iget-object v15, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2b

    .line 1057
    :cond_59
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5a

    .line 1058
    iget-object v15, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2b

    .line 1059
    :cond_5a
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5b

    .line 1060
    iget-object v15, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2b

    .line 1061
    :cond_5b
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5c

    .line 1062
    iget-object v15, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2b

    .line 1063
    :cond_5c
    const-string v15, "Checkbox"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5d

    .line 1064
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1066
    :cond_5d
    :goto_2b
    iget-object v15, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-object/from16 v18, v1

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    move-object/from16 v19, v2

    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    invoke-virtual {v1, v13, v2}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5f

    .line 1067
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1068
    const-string v2, "ISSELFASSIGN"

    iget v15, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->isSelfassign:I

    invoke-virtual {v1, v2, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1069
    const-string v2, "ParentAttributeId"

    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1070
    const-string v2, "TRANSID"

    move-object/from16 v24, v14

    iget-wide v14, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->transId:J

    invoke-virtual {v1, v2, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1071
    const-string v2, "ActivityAssignmentId"

    iget v14, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityAssignmentId:I

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1072
    const-string v2, "SEGMENTID"

    iget v14, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->segmentId:I

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1073
    const-string v2, "Count"

    iget v14, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->countVillage:I

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1074
    const-string v2, "pairId"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string v2, "AssignmentId"

    iget v14, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->assignmentID:I

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1076
    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    invoke-direct {v10, v13, v2}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getDynamictableQry(II)Ljava/lang/String;

    move-result-object v2

    const-string v14, "FirstDropDownDataQry"

    invoke-virtual {v1, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v2

    iget v14, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1078
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v2

    iget v14, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->isPlanned:I

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1079
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    iget-object v14, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v2

    iget v14, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->ismba:I

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "fragment"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 1086
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1088
    :cond_5e
    new-instance v2, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;-><init>()V

    .line 1089
    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getId()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "fragment"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v14, v2, v13}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1091
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->fragmentList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_5f
    move-object/from16 v24, v14

    .line 1117
    :goto_2c
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationFlag:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_60

    .line 1118
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v13, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationLayout:Landroid/widget/LinearLayout;

    .line 1119
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1121
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    goto/16 :goto_2d

    :cond_60
    const/4 v2, 0x2

    if-ne v1, v2, :cond_61

    .line 1124
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1125
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 1126
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 1127
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1128
    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->layoutId:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1130
    new-instance v2, Landroid/widget/TextView;

    iget-object v11, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v11, -0xbbbbbc

    .line 1131
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v11, 0x4

    .line 1133
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v11, v17

    .line 1134
    invoke-virtual {v1, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1135
    new-instance v2, Landroid/widget/Button;

    iget-object v11, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationBtn:Landroid/widget/Button;

    .line 1136
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v11

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_getButton()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationBtn:Landroid/widget/Button;

    move-object/from16 v11, p1

    move-object/from16 v13, v19

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1138
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationBtn:Landroid/widget/Button;

    const/16 v11, 0x11

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setGravity(I)V

    .line 1139
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationBtn:Landroid/widget/Button;

    const/4 v11, -0x1

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 1140
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0800c6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1141
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v14, 0x3ee66666    # 0.45f

    const/4 v15, -0x2

    invoke-direct {v2, v11, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v11, 0xa

    .line 1142
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1143
    iget-object v11, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationBtn:Landroid/widget/Button;

    invoke-virtual {v1, v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1145
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v2, p6

    move-object/from16 v14, v18

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 1147
    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationFlag:I

    .line 1148
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationBtn:Landroid/widget/Button;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$6;

    invoke-direct {v2, v10}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$6;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2d

    :cond_61
    move-object/from16 v2, p6

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    .line 1158
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 1159
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_62

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    instance-of v15, v15, Landroid/widget/EditText;

    if-eqz v15, :cond_62

    .line 1160
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v15

    if-ne v15, v1, :cond_62

    .line 1161
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-direct {v10, v11}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_62
    move-object/from16 v1, v35

    .line 1164
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1166
    :goto_2d
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mattributesnamesArr:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArrIds:Ljava/util/List;

    move-object/from16 v2, v38

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v9, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mForOperations:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1170
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v9, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    :cond_63
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1174
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1176
    :cond_64
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1177
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1179
    :cond_65
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1180
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1182
    :cond_66
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1183
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1185
    :cond_67
    const-string v1, "DropDown"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1186
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1188
    :cond_68
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1189
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    :cond_69
    move-object/from16 v1, v24

    .line 1191
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1192
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1194
    :cond_6a
    const-string v1, "timePicker"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1195
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1197
    :cond_6b
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1198
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 1200
    :cond_6c
    const-string v1, "Checkbox"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1201
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v3, v39

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 1205
    :cond_6d
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1206
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1207
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    :cond_6e
    :goto_2e
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->layoutId:I

    return-void
.end method

.method public getCascadingQuery(Lcom/conceptglobal/pmc/model/AttributeModel;I)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 1887
    const-string v3, ""

    .line 1888
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1890
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1894
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, " IN ( "

    const-string v6, ")"

    const/4 v7, 0x1

    const-string v8, " "

    if-eqz v0, :cond_2

    .line 1895
    :try_start_1
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1896
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 1897
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1901
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v3

    .line 1907
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v9

    if-eqz v9, :cond_4

    .line 1908
    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1909
    sget-object v5, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 1910
    sget-object v5, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1914
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    :goto_2
    move-object v5, v3

    .line 1920
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v9

    if-eqz v9, :cond_6

    .line 1921
    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1922
    sget-object v6, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v6

    if-ne v6, v7, :cond_6

    .line 1923
    sget-object v6, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1927
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " IN ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_6
    :goto_4
    move-object v6, v3

    .line 1931
    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1932
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1934
    :cond_7
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, " and "

    if-nez v7, :cond_8

    .line 1936
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    :cond_8
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    :cond_9
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1948
    const-string v5, "AttributesActivity"

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1949
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1951
    :cond_a
    :goto_6
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    .line 1952
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v10

    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->farmerId:Ljava/lang/String;

    iget v13, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    iget v14, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityAssignmentId:I

    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v15

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1951
    invoke-virtual/range {v7 .. v16}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 2287
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    const/4 v0, -0x1

    if-ne p1, p3, :cond_2

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2296
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2291
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->findCurrentLocation()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    if-ne p2, v0, :cond_4

    const/16 p2, 0x65

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 2308
    :cond_3
    new-instance p1, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    invoke-direct {p1, p2, p3}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CompressListener;)V

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1680
    const-string v0, ""

    const-string v1, "Stop"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f09008a

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 1683
    :cond_0
    :try_start_0
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Start"

    if-eqz p1, :cond_1

    .line 1684
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->timer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1685
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->timer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 1686
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1687
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1688
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->stopTimeMobile:Ljava/lang/String;

    .line 1690
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->fetchLocationCall:Ljava/lang/String;

    .line 1691
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->fetchLocation()V

    goto :goto_0

    .line 1693
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTimeAutomatic(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1694
    const-string p1, "Please select datetime of type auto from settings, to start timer"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->showTimeSettingsAlertDialog(Ljava/lang/String;)V

    return-void

    .line 1697
    :cond_2
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->timer:Ljava/util/Timer;

    .line 1698
    new-instance v4, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask;

    invoke-direct {v4, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1f4

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1699
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1700
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1701
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->starttimeMobile:Ljava/lang/String;

    .line 1702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->starttimeMobileMillis:J

    .line 1703
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->stopTimeGPS:Ljava/lang/String;

    .line 1704
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->stopTimeMobile:Ljava/lang/String;

    .line 1707
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->fetchLocationCall:Ljava/lang/String;

    .line 1708
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->fetchLocation()V

    .line 1709
    iget p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->activityId:I

    const/16 v0, 0x26

    if-eq p1, v0, :cond_3

    const/16 v0, 0x29

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_3

    const/16 v0, 0x17

    if-ne p1, v0, :cond_4

    .line 1710
    :cond_3
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->bindDemoValues()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1714
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 279
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 281
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0c0063

    .line 282
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->setContentView(I)V

    .line 283
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    .line 284
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->clearStaticvalues()V

    .line 285
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 286
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 287
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->init()V

    .line 288
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->setListeners()V

    .line 289
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->getData()V

    .line 290
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->setData()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2175
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 2176
    new-instance v7, Landroid/app/TimePickerDialog;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

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

    .line 2151
    :cond_1
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v11, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mYear:I

    iget v12, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mMonth:I

    iget v13, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDay:I

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2153
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2154
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->datePos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x5

    if-eqz v2, :cond_2

    const v4, 0x7f100006

    .line 2156
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 2158
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2159
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v0

    invoke-virtual {v5, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 2160
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 2161
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_2
    if-eqz v2, :cond_3

    const v4, 0x7f100005

    .line 2164
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 2166
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2167
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v5, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 2168
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2169
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

    .line 2259
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->farmerId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->dos:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2260
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mDatetext:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 2261
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->dos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2264
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

    .line 2274
    :cond_0
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 2275
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2276
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 p1, 0x0

    .line 2278
    sput-boolean p1, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 2427
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Longitude"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2428
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2429
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2430
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2431
    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 2432
    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 2433
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 2434
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2435
    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 2436
    check-cast v7, Landroid/widget/EditText;

    .line 2437
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2438
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

    .line 2439
    :cond_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2440
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

    .line 2451
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->locationView:Landroid/view/View;

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 2414
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2501
    const-string p2, "onRequestPermissionResult"

    const-string v0, "AttributesActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 2503
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 2506
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2507
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 2509
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->findCurrentLocation()V

    goto :goto_0

    .line 2512
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1781
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 1782
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mImageviews:Ljava/util/List;

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

    .line 1784
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v2, :cond_0

    .line 1786
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1788
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1789
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1790
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1232
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

    .line 1242
    :goto_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 1243
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1267
    :try_start_0
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "0"

    const/4 v4, 0x0

    const-string v5, "TextBoxND"

    const-wide/16 v6, 0x0

    const-string v8, "TextBoxN"

    const/4 v9, 0x1

    const-string v10, " - "

    const-string v11, " "

    if-ne v2, v9, :cond_5

    .line 1268
    :try_start_1
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

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

    .line 1269
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

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

    .line 1272
    :cond_0
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

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

    .line 1273
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    .line 1276
    :cond_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1277
    :cond_2
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12

    cmp-long v2, v12, v6

    if-eqz v2, :cond_4

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

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

    if-lez v2, :cond_3

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_4

    .line 1279
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

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

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    :cond_4
    if-eqz v9, :cond_a

    .line 1283
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1288
    :cond_5
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

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

    if-eqz v2, :cond_a

    .line 1289
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

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

    if-ge v2, v12, :cond_6

    .line 1290
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_minimumLengthFor()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    .line 1293
    :cond_6
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1294
    :cond_7
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12

    cmp-long v2, v12, v6

    if-eqz v2, :cond_9

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

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

    if-lez v2, :cond_8

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_9

    .line 1296
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

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

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    :cond_9
    if-eqz v9, :cond_a

    .line 1300
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1306
    const-string v2, "AttributesActivity-Validation"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_b
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

    .line 2457
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2459
    monitor-enter p0

    .line 2460
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2461
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2464
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

    .line 2467
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

    .line 2461
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
