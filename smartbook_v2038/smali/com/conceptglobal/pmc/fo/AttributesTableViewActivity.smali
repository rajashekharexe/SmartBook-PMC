.class public Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AttributesTableViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/CropChanger;
.implements Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;
.implements Lcom/conceptglobal/pmc/interfaces/GetTableDataInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;,
        Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$NumericDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask;
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

.field public static startTimeGPS:Ljava/lang/String;

.field public static starttimeMobile:Ljava/lang/String;

.field public static starttimeMobileMillis:J

.field public static stopTimeGPS:Ljava/lang/String;

.field public static stopTimeMobile:Ljava/lang/String;

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

.field private farmerId:Ljava/lang/String;

.field farmerSelectedReceiver:Landroid/content/BroadcastReceiver;

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

.field private speachText:Landroid/widget/EditText;

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

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 115
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->layoutId:I

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->childValuelistAttributes:Ljava/util/List;

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->cropAndPestIDs:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 164
    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForOperations:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForDates:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForTime:I

    .line 166
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->datePos:I

    .line 167
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->timePos:I

    .line 178
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mFiledStr:Ljava/lang/String;

    .line 182
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationFlag:I

    .line 196
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    .line 197
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    const/4 v2, 0x0

    .line 208
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    .line 210
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    .line 235
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->countVillage:I

    .line 241
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->brandsList:Ljava/util/List;

    .line 249
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->textChanged:Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->namesList:Ljava/util/ArrayList;

    .line 271
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->fetchLocationCall:Ljava/lang/String;

    .line 295
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerSelectedReceiver:Landroid/content/BroadcastReceiver;

    .line 2312
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$12;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->operationListener:Landroid/view/View$OnClickListener;

    .line 2634
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$13;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$13;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 2868
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$14;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$14;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->datesListener:Landroid/view/View$OnClickListener;

    .line 2876
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$15;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->timesListener:Landroid/view/View$OnClickListener;

    .line 2937
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$17;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$17;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2957
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$18;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$18;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 3072
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$19;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$19;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->bindFarmerExpenditure()V

    return-void
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->findCurrentLocation()V

    return-void
.end method

.method static synthetic access$1200()Ljava/util/List;
    .locals 1

    .line 115
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/common/Queries;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1600()Ljava/util/List;
    .locals 1

    .line 115
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/model/AttributeModel;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->isSelfassign:I

    return p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)J
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->transId:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->segmentId:I

    return p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->countVillage:I

    return p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->isPlanned:I

    return p0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ismba:I

    return p0
.end method

.method static synthetic access$2500()Ljava/util/List;
    .locals 1

    .line 115
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->fragmentList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->isLoadingDone:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->findModelPosition(Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3110(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I
    .locals 2

    .line 115
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForOperations:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForOperations:I

    return v0
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/List;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mattributesnamesArr:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3300()Ljava/util/List;
    .locals 1

    .line 115
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;I)Ljava/util/List;
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->filterAttributesByFilterAttribute(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;I)I
    .locals 0

    .line 115
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->datePos:I

    return p1
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->timePos:I

    return p0
.end method

.method static synthetic access$3702(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;I)I
    .locals 0

    .line 115
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->timePos:I

    return p1
.end method

.method static synthetic access$3802(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;I)I
    .locals 0

    .line 115
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mYear:I

    return p1
.end method

.method static synthetic access$3902(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;I)I
    .locals 0

    .line 115
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->namesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;I)I
    .locals 0

    .line 115
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDay:I

    return p1
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->namesList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->updateDisplay()V

    return-void
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->tvTimer:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Ljava/util/ArrayList;Landroid/widget/EditText;I)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->setAutoCompleteAdapter(Ljava/util/ArrayList;Landroid/widget/EditText;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/content/Context;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I
    .locals 0

    .line 115
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->assignmentID:I

    return p0
.end method

.method private addDynamicLayoutVillageDetails(IILandroid/widget/LinearLayout;)V
    .locals 19

    move-object/from16 v9, p0

    .line 2103
    new-instance v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    const/4 v11, 0x0

    .line 2106
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    iget v3, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    move/from16 v4, p2

    invoke-virtual {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getSelectedAttributeQueryUpdate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->AlertlistAttributes:Ljava/util/List;

    .line 2107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2108
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 2113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2114
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2117
    :cond_0
    const-string v0, ""

    move/from16 v12, p1

    move-object v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v12, :cond_4

    .line 2118
    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v3, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v13, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 2119
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 2120
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2121
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2122
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v14, 0xa

    .line 2123
    invoke-virtual {v13, v11, v11, v11, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2124
    iget v3, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->layoutId:I

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 2129
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, -0xbbbbbc

    .line 2130
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2131
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v1, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2133
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    .line 2134
    :goto_1
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 2135
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2137
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->childValuelistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2139
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2140
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_2

    :cond_1
    move-object/from16 v16, v0

    goto :goto_2

    :cond_2
    move-object/from16 v16, v2

    .line 2147
    :goto_2
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object v6, v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    move-object v7, v13

    move/from16 v18, v8

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V

    add-int/lit8 v8, v18, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    .line 2150
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2151
    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v3, p3

    .line 2153
    invoke-virtual {v3, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v15

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private bindDemoValues()V
    .locals 10

    .line 3375
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "DemoAttributeCostFilterValue"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 3377
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v1, 0x26

    const-string v2, ""

    if-ne v0, v1, :cond_0

    .line 3378
    :try_start_1
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 3379
    :goto_0
    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    const/16 v3, 0x29

    if-ne v1, v3, :cond_1

    .line 3380
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 3381
    :cond_1
    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_2

    .line 3382
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 3383
    :cond_2
    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_3

    .line 3384
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 3387
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityExpenseAmountQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 3388
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityBrandQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3389
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityBrandIdQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3390
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityProtocolPlotSizeQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3391
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

    .line 3394
    :try_start_2
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

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

    .line 3399
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

    .line 3400
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3401
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    .line 3402
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_5

    .line 3403
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    aget-object v8, v1, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3404
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

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

    .line 3405
    sget-object v7, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 3414
    :catch_1
    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

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

    .line 3419
    :catch_2
    :try_start_5
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

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

    .line 3428
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerDemoAmountQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 3429
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

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

    .line 2846
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 2847
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

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageFile:Ljava/io/File;

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 2849
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->image1Path:Ljava/lang/String;

    .line 2852
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2854
    const-string v0, "com.conceptglobal.pmcdeepakfertilizers.provider"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageFile:Ljava/io/File;

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2858
    const-string v1, "output"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2860
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 2861
    const-string v2, ""

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v2, 0x3

    .line 2862
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2864
    :cond_1
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2865
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private checkImagesInDBandDelete()V
    .locals 6

    .line 2276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2284
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ImageDetails;

    .line 2286
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

    .line 2288
    const-string v2, "AttributesActivity"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearStaticvalues()V
    .locals 3

    .line 306
    const-string v0, ""

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->starttimeMobile:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 307
    sput-wide v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->starttimeMobileMillis:J

    .line 308
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->stopTimeMobile:Ljava/lang/String;

    .line 309
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->startTimeGPS:Ljava/lang/String;

    .line 310
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->stopTimeGPS:Ljava/lang/String;

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

    .line 2093
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2094
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2095
    new-instance v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v2, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private doDiscardOperation()V
    .locals 6

    .line 2815
    const-string v0, "AttributesActivity"

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityAssignmentId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDiscardForActivities(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2818
    :try_start_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 2819
    const-string v2, "2"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2821
    :try_start_2
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2822
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2826
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2829
    :goto_0
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2830
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2831
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 2833
    sput-boolean v0, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    .line 2834
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2835
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2837
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->btnnotDone:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 3342
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3343
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 3346
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$22;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$22;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    const-string v2, "AttributesActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3368
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

    .line 2253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2255
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

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

    .line 2256
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2257
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

    .line 2260
    const-string v1, "AttributesActivity"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_2
    return-object v0
.end method

.method private findCurrentLocation()V
    .locals 4

    .line 3084
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3085
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 3088
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$20;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$20;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    const-string v2, "AttributesActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private findModelPosition(Ljava/util/List;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttributeModel;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2047
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2050
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
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

    .line 2034
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2037
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

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 370
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 371
    const-string v2, "MODELCLASS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->assignmentDetails:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 372
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ismba:I

    .line 373
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    .line 374
    const-string v1, "ISSELFASSIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->isSelfassign:I

    .line 375
    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->segmentId:I

    .line 376
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    .line 377
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->isPlanned:I

    .line 378
    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityName:Ljava/lang/String;

    .line 379
    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityAssignmentId:I

    .line 380
    const-string v1, "TRANSID"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->transId:J

    .line 381
    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->assignmentID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 392
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getDynamictableQry(II)Ljava/lang/String;
    .locals 4

    .line 1524
    const-string v0, "@"

    const-string v1, ""

    .line 1526
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/conceptglobal/pmc/common/Queries;->getqueryForMIDropdown(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1527
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 1528
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->cropAndPestIDs:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1529
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->cropAndPestIDs:Ljava/util/ArrayList;

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

    .line 1532
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method private init()V
    .locals 1

    .line 320
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->cropChageListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

    .line 322
    sput-object p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ctx:Landroid/content/Context;

    const v0, 0x7f0902bd

    .line 327
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const v0, 0x7f090050

    .line 328
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->textActivityName:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->updateDOS:Ljava/lang/String;

    .line 330
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 331
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    const v0, 0x7f090493

    .line 334
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->tvTimer:Landroid/widget/TextView;

    const v0, 0x7f09008a

    .line 335
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->btnStartStop:Landroid/widget/Button;

    .line 336
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090395

    .line 337
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->rlTimerView:Landroid/widget/RelativeLayout;

    .line 341
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 343
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 345
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->fragmentList:Ljava/util/List;

    return-void
.end method

.method private loadAttributes(I)V
    .locals 9

    .line 425
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/common/Queries;->getRuleDetails(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRuleAttributeIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    .line 426
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityAssignmentId:I

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->transId:J

    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    .line 427
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 430
    :cond_0
    :goto_0
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 431
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 436
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 441
    const-string v0, "AttributesActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private makeParentChildVisibility(Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 7

    .line 3290
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3292
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getParentAttributeIdDraft(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 3294
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    invoke-virtual {v2, v3, v0}, Lcom/conceptglobal/pmc/common/Queries;->getRuleParentAttrValueId(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 3295
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 3296
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    sget-object v4, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/conceptglobal/pmc/common/Queries;->getOperationType(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3297
    const-string v1, "Visibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3300
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3303
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3304
    move-object v4, v3

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3306
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3307
    sget-object v3, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3308
    sget-object v3, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3315
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static methodToGetData(Landroid/content/Context;)V
    .locals 3

    .line 3236
    check-cast p0, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;

    .line 3237
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;->GetData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 3238
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->fragmentList:Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;->getFragmentsList(Ljava/util/List;)V

    return-void
.end method

.method public static methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;
    .locals 0

    .line 3242
    sget-object p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->stopTimeMobile:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    .line 3243
    :cond_0
    sget-object p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->performClick()Z

    .line 3245
    :cond_1
    new-instance p0, Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-direct {p0}, Lcom/conceptglobal/pmc/model/TimeDetails;-><init>()V

    .line 3246
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->starttimeMobile:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/TimeDetails;->setMobileStartTime(Ljava/lang/String;)V

    .line 3247
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->stopTimeMobile:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/TimeDetails;->setMobileEndTime(Ljava/lang/String;)V

    .line 3248
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->startTimeGPS:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/TimeDetails;->setGPSStartTime(Ljava/lang/String;)V

    .line 3249
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->stopTimeGPS:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/TimeDetails;->setGPSEndTime(Ljava/lang/String;)V

    return-object p0
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

    .line 1541
    new-instance p3, Landroid/widget/ArrayAdapter;

    const v0, 0x7f0c00cf

    invoke-direct {p3, p0, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1544
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1552
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->dismissProgressDialog()V

    .line 1554
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance p3, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$10;

    invoke-direct {p3, p0, p2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$10;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1566
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    new-instance p3, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$11;

    invoke-direct {p3, p0, p2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$11;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setData()V
    .locals 3

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mattributesnamesArr:Ljava/util/List;

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mImageviews:Ljava/util/List;

    .line 408
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->textActivityName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->loadAttributes(I)V

    const/4 v0, 0x1

    .line 410
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->isLoadingDone:Z

    .line 411
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    .line 412
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDay:I

    const/4 v2, 0x2

    .line 413
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mMonth:I

    .line 414
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mYear:I

    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 2987
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2988
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2990
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2992
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2994
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2995
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 2268
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2269
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 2270
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2271
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

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

.method private setTextChangeListener(Landroid/widget/EditText;)V
    .locals 1

    .line 1439
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 4

    .line 2069
    const-string v0, "Count"

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2070
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2071
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ismba:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2072
    const-string v2, "SEGMENTID"

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->segmentId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2073
    const-string v2, "ISSELFASSIGN"

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->isSelfassign:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2074
    const-string v2, "ParentAttributeId"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2075
    const-string p2, "AssignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->assignmentID:I

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2076
    const-string p2, "ActivityAssignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityAssignmentId:I

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2077
    const-string p2, "TRANSID"

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->transId:J

    invoke-virtual {v1, p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2079
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

    .line 2081
    :catch_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2084
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2085
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->isPlanned:I

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x20000

    .line 2086
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 2887
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2888
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2889
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$16;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$16;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2895
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->dialog:Landroid/app/AlertDialog;

    .line 2896
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2897
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->dialog:Landroid/app/AlertDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_1
    return-void
.end method

.method private showTimeSettingsAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 3256
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3257
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$21;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$21;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3264
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3265
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3266
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 3000
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mFiledStr:Ljava/lang/String;

    .line 3001
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3003
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3005
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3007
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->setDate(I)V

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

    .line 454
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForOperations:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForOperations:I

    .line 455
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForDates:I

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForDates:I

    .line 456
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForTime:I

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForTime:I

    .line 459
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 460
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 461
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 462
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v7, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0xa

    const/4 v3, 0x4

    .line 463
    invoke-virtual {v1, v5, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 464
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    invoke-virtual {v8, v6, v6, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 466
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->layoutId:I

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 468
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 469
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 470
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 471
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 472
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 474
    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setId(I)V

    .line 480
    new-instance v5, Landroid/widget/TextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, -0xbbbbbc

    .line 481
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v1

    if-ne v1, v9, :cond_0

    .line 484
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

    :cond_0
    const/4 v1, 0x0

    .line 495
    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    .line 500
    new-instance v3, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$2;

    invoke-direct {v3, v10}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    .line 524
    new-instance v1, Landroid/widget/EditText;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 525
    const-string v4, "Dropdown"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v9, "NumberBox"

    move-object/from16 v18, v9

    const-string v9, "TextBoxND"

    move-object/from16 v19, v9

    const-string v9, "AutoCompleteTextBoxN"

    move-object/from16 v20, v9

    const-string v9, "AutoCompleteTextBox"

    move-object/from16 v21, v9

    const-string v9, "TextBoxN"

    move-object/from16 v22, v9

    const-string v9, "TextArea"

    move-object/from16 v23, v9

    const-string v9, "DatePicker"

    move-object/from16 v24, v9

    const-string v9, "Multiselect Dropdown"

    move-object/from16 v25, v9

    const v9, 0x7f07017d

    const-string v6, ""

    const/16 v7, 0x11

    const/16 v30, 0x0

    if-eqz v4, :cond_9

    .line 526
    new-instance v4, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 527
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 528
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 529
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForOperations:I

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setId(I)V

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v3

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTextSize(F)V

    const v0, 0x7f080096

    .line 532
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 533
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v9, 0x0

    .line 534
    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 535
    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f0800d8

    .line 536
    invoke-virtual {v4, v9, v9, v0, v9}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 537
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 541
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

    .line 542
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->cropId:Ljava/lang/String;

    .line 543
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/conceptglobal/pmc/common/Queries;->getCropNameQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 545
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 546
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->cropAndPestIDs:Ljava/util/ArrayList;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 549
    :cond_1
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

    .line 552
    :cond_2
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

    .line 555
    const-string v3, "AttributesActivity"

    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 562
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

    .line 565
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->cropAndPestIDs:Ljava/util/ArrayList;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 563
    :cond_5
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
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKey(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 572
    :cond_7
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 573
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKeyDefault(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 575
    :cond_8
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 582
    :goto_3
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v31

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v33

    const/16 v29, 0x0

    move-object v7, v1

    move-object v1, v0

    move-object v3, v2

    move-object/from16 v2, p0

    move-object/from16 v35, v3

    const/16 v16, 0x1

    move-object v3, v4

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-wide/from16 v4, v31

    move-object v9, v6

    move-object/from16 v38, v7

    move-wide/from16 v6, v33

    move-object v15, v8

    move-object/from16 v8, p5

    move-object/from16 v39, v9

    move-object/from16 v17, v15

    move-object/from16 v11, v24

    move-object/from16 v15, v25

    const/4 v14, 0x1

    move-object/from16 v9, v29

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;)V

    move-object/from16 v1, v36

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v3, p1

    move-object/from16 v26, v11

    move-object/from16 v44, v18

    move-object/from16 v4, v19

    move-object/from16 v42, v20

    move-object/from16 v41, v22

    move-object/from16 v43, v23

    move-object/from16 v2, v37

    move-object/from16 v11, v39

    const/16 v5, 0xa

    move-object v15, v1

    goto/16 :goto_25

    :cond_9
    move-object/from16 v38, v1

    move-object/from16 v35, v2

    move-object/from16 v37, v5

    move-object/from16 v39, v6

    move-object/from16 v17, v8

    move-object/from16 v11, v24

    move-object/from16 v15, v25

    const/4 v14, 0x1

    .line 584
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 586
    new-instance v8, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 587
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 588
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 589
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForOperations:I

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setId(I)V

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setTextSize(F)V

    const v1, 0x7f080096

    .line 591
    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 592
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v9, 0x11

    .line 593
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800d8

    .line 594
    invoke-virtual {v8, v6, v6, v1, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 595
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    new-instance v7, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v24

    const/16 v16, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v8

    move-object v14, v7

    move-wide/from16 v6, v24

    move-object/from16 v25, v15

    move-object v15, v8

    move-object/from16 v8, p5

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;)V

    invoke-virtual {v15, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 598
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

    .line 601
    :cond_a
    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 604
    :cond_b
    :goto_4
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_11

    .line 608
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    .line 609
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityAssignmentId:I

    iget-wide v5, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->transId:J

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJ)Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-virtual {v7, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->brandsList:Ljava/util/List;

    .line 610
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    invoke-virtual {v1, v2, v13}, Lcom/conceptglobal/pmc/common/Queries;->getMultiSelectCountDisplayValue(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->isDisplayCount:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 612
    :try_start_3
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 615
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 618
    :goto_6
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_e

    .line 620
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandSelected()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 621
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->brandsList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->brandsList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_c

    .line 624
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_c
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 633
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 636
    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->isDisplayCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 637
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

    invoke-virtual {v15, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f100002

    .line 638
    invoke-virtual {v15, v2, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_7

    .line 640
    :cond_f
    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_7
    move-object/from16 v14, v38

    .line 643
    :try_start_4
    invoke-virtual {v14, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_10
    move-object/from16 v14, v38

    .line 646
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_11
    move-object/from16 v14, v38

    .line 649
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v14, v38

    .line 652
    :goto_8
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    move-object/from16 v3, p1

    move-object/from16 v26, v11

    move-object/from16 v38, v14

    move-object/from16 v44, v18

    move-object/from16 v4, v19

    move-object/from16 v42, v20

    move-object/from16 v41, v22

    move-object/from16 v43, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v37

    move-object/from16 v11, v39

    :goto_a
    const/16 v5, 0xa

    goto/16 :goto_26

    :cond_12
    move-object/from16 v25, v15

    move-object/from16 v14, v38

    .line 654
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v15, "0"

    const/16 v16, 0x0

    if-eqz v1, :cond_18

    .line 655
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    .line 656
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 657
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForDates:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 658
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 659
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 660
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 661
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 662
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 664
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    new-instance v6, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v26

    const/16 v24, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object/from16 v40, v6

    move-wide/from16 v6, v26

    move-object/from16 v8, p5

    move-object/from16 v26, v11

    const/16 v11, 0x11

    move-object/from16 v9, v24

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;)V

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 666
    :try_start_5
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->cropId:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->cropId:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 667
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->cropId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->dos:Ljava/lang/String;

    .line 669
    :cond_13
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->dos:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 670
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->dos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 671
    :cond_14
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    .line 672
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 674
    :cond_15
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

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

    .line 677
    const-string v1, "Attribute"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 680
    :goto_b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 681
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 682
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 684
    :cond_16
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    .line 685
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100006

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 686
    :cond_17
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    .line 687
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_c

    :cond_18
    move-object/from16 v26, v11

    const/16 v11, 0x11

    .line 688
    const-string v1, "TimePicker"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 689
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    .line 690
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 691
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForTime:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 692
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 693
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 694
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setGravity(I)V

    .line 695
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 696
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->timesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 698
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v24, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object/from16 v8, p5

    move-object v15, v9

    move-object/from16 v9, v24

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;)V

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 699
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_19

    .line 700
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 702
    :cond_19
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectTimeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1a
    :goto_c
    move-object/from16 v3, p1

    move-object/from16 v38, v14

    move-object/from16 v44, v18

    move-object/from16 v4, v19

    move-object/from16 v42, v20

    move-object/from16 v41, v22

    move-object/from16 v43, v23

    move-object/from16 v2, v37

    move-object/from16 v11, v39

    :cond_1b
    :goto_d
    const/16 v5, 0xa

    goto/16 :goto_24

    :cond_1c
    move-object/from16 v8, v23

    const/4 v6, 0x0

    .line 704
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 705
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    .line 706
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 707
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 708
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 709
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 710
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setGravity(I)V

    .line 711
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v9, 0x2

    new-array v1, v9, [Landroid/text/InputFilter;

    aput-object v3, v1, v6

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xfa

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 712
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v7, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v23

    const/16 v27, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v11, v7

    move-wide/from16 v6, v23

    move-object/from16 v23, v8

    move-object/from16 v8, p5

    move-object/from16 v38, v14

    const/4 v14, 0x2

    move-object/from16 v9, v27

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;)V

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 713
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v39

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 714
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_e

    .line 717
    :cond_1d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 715
    :cond_1e
    :goto_e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_1f
    move-object/from16 v11, v39

    .line 720
    :cond_20
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    move-object/from16 v3, p1

    move-object/from16 v44, v18

    move-object/from16 v4, v19

    move-object/from16 v42, v20

    move-object/from16 v41, v22

    :goto_10
    move-object/from16 v43, v23

    :goto_11
    move-object/from16 v2, v37

    goto/16 :goto_d

    :cond_21
    move-object/from16 v23, v8

    move-object/from16 v38, v14

    move-object/from16 v8, v22

    move-object/from16 v11, v39

    const/4 v14, 0x2

    .line 735
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 736
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v6, 0x0

    .line 737
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 738
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 739
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 740
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 741
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 742
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setInputType(I)V

    .line 743
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$NumericDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v10, v3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$NumericDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;I)V

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 744
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v27

    const/16 v22, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    const/4 v14, 0x0

    move-wide/from16 v6, v27

    move-object/from16 v41, v8

    move-object/from16 v8, p5

    move-object v14, v9

    move-object/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;)V

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 746
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 747
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

    goto :goto_12

    .line 750
    :cond_22
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 748
    :cond_23
    :goto_12
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 753
    :cond_24
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_13
    move-object/from16 v3, p1

    move-object/from16 v44, v18

    move-object/from16 v4, v19

    move-object/from16 v42, v20

    goto/16 :goto_10

    :cond_25
    move-object/from16 v41, v8

    move-object/from16 v14, v21

    .line 755
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 756
    new-instance v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    .line 757
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSingleLine(Z)V

    .line 758
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTag(Ljava/lang/Object;)V

    .line 759
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 760
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 761
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setGravity(I)V

    .line 762
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 763
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x32

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 766
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 767
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

    goto :goto_14

    .line 770
    :cond_26
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 768
    :cond_27
    :goto_14
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 773
    :cond_28
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    :goto_15
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$3;

    move-object/from16 v8, p5

    move-object/from16 v6, v23

    invoke-direct {v0, v10, v8}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    .line 829
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 831
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$4;

    invoke-direct {v1, v10, v8}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v3, p1

    move-object/from16 v43, v6

    move-object/from16 v21, v14

    move-object/from16 v44, v18

    move-object/from16 v4, v19

    move-object/from16 v42, v20

    goto/16 :goto_11

    :cond_29
    move-object/from16 v8, p5

    move-object/from16 v7, v20

    move-object/from16 v6, v23

    .line 871
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 872
    new-instance v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    .line 873
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSingleLine(Z)V

    .line 874
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTag(Ljava/lang/Object;)V

    .line 875
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 876
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 877
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setGravity(I)V

    .line 878
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 879
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$NumericDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v10, v3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$NumericDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 881
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 882
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

    .line 885
    :cond_2a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 883
    :cond_2b
    :goto_16
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 888
    :cond_2c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    :goto_17
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$5;

    invoke-direct {v1, v10, v8}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$5;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v3, p1

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v21, v14

    move-object/from16 v44, v18

    move-object/from16 v4, v19

    goto/16 :goto_11

    :cond_2d
    move-object/from16 v4, v19

    .line 923
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 924
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 925
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 926
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 927
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 928
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 929
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 930
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 931
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$DecimalDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    const/4 v5, 0x2

    invoke-direct {v1, v10, v3, v5}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;II)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 932
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v19

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v21

    const/16 v23, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v24, v4

    move-wide/from16 v4, v19

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-wide/from16 v6, v21

    move-object/from16 v8, p5

    move-object/from16 v21, v14

    move-object v14, v9

    move-object/from16 v9, v23

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;)V

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 934
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 935
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_18

    .line 938
    :cond_2e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 936
    :cond_2f
    :goto_18
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 941
    :cond_30
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_19
    move-object/from16 v3, p1

    move-object/from16 v44, v18

    :goto_1a
    move-object/from16 v4, v24

    goto/16 :goto_11

    :cond_31
    move-object/from16 v24, v4

    move-object/from16 v43, v6

    move-object/from16 v42, v7

    move-object/from16 v21, v14

    .line 955
    const-string v1, "TextBox"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 956
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 957
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 958
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 959
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 960
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 961
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 962
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v3, v2, v1

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x1

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 963
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v14, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v19, v3

    move-object v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;)V

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 974
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v0, 0x15

    if-eq v13, v0, :cond_32

    const/16 v0, 0x14

    if-ne v13, v0, :cond_33

    .line 978
    :cond_32
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationFlag:I

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationFlag:I

    .line 981
    :cond_33
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Budget (INR)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_34

    .line 982
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 985
    :cond_34
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 986
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 987
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_1b

    .line 988
    :cond_35
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 989
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 990
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1006
    :cond_36
    :goto_1b
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_1c

    .line 1009
    :cond_37
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v19, v2, v1

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v14, 0x4

    goto :goto_1d

    :cond_38
    :goto_1c
    const/4 v3, 0x1

    .line 1007
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$DecimalDigitsInputFilter;

    const/4 v3, 0x6

    const/4 v14, 0x4

    invoke-direct {v2, v10, v14, v3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1011
    :goto_1d
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1012
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_39

    goto :goto_1e

    .line 1015
    :cond_39
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 1013
    :cond_3a
    :goto_1e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 1018
    :cond_3b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    :cond_3c
    move-object/from16 v8, v18

    const/4 v14, 0x4

    .line 1020
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1021
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 1022
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1023
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1024
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1025
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1026
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1027
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1028
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1029
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1030
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v18, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v44, v8

    move-object/from16 v8, p5

    move-object v14, v9

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;)V

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1031
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1032
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_1f

    .line 1035
    :cond_3d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 1033
    :cond_3e
    :goto_1f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 1038
    :cond_3f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_20
    move-object/from16 v3, p1

    goto/16 :goto_1a

    :cond_40
    move-object/from16 v44, v8

    .line 1053
    const-string v1, "Label"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1054
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x1

    .line 1055
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1056
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1057
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1058
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const v2, 0x7f080096

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1059
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 1060
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1062
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v2, v37

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "<u>"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p1

    move-object/from16 v4, v24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</u>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1067
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_41

    goto :goto_21

    .line 1070
    :cond_41
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1068
    :cond_42
    :goto_21
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1073
    :cond_43
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    const-string v5, "NA"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_22

    .line 1076
    :cond_44
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1074
    :cond_45
    :goto_22
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_d

    :cond_46
    move-object/from16 v3, p1

    move-object/from16 v4, v24

    move-object/from16 v2, v37

    .line 1085
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1086
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1087
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1088
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForOperations:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setId(I)V

    const/4 v1, 0x1

    .line 1090
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setGravity(I)V

    .line 1092
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "True"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 1093
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "True"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1094
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    goto :goto_23

    :cond_47
    const/4 v1, 0x0

    .line 1096
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    .line 1099
    :cond_48
    :goto_23
    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$6;

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$6;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v1, v0

    move-object/from16 v15, v16

    goto/16 :goto_a

    .line 1105
    :cond_49
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1106
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f080090

    .line 1108
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1109
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1110
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v5, 0xa

    invoke-virtual {v0, v1, v5, v1, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1112
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_4a

    .line 1114
    new-instance v0, Ljava/io/File;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1117
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1118
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1121
    :cond_4a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mImageviews:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$7;

    invoke-direct {v1, v10, v13}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$7;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_24
    move-object/from16 v15, v16

    :goto_25
    move-object/from16 v1, v30

    .line 1136
    :goto_26
    new-instance v0, Landroid/widget/TextView;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1142
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1143
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1144
    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityName:Ljava/lang/String;

    const-string v9, "Scheduled Demo"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v14, 0x64

    if-nez v7, :cond_4b

    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v9, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    invoke-virtual {v5, v13, v9}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4b

    .line 1145
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v7, 0x3ee66666    # 0.45f

    const/4 v9, -0x1

    invoke-direct {v5, v9, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v7, 0x11

    .line 1146
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1147
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const v14, 0x3f19999a    # 0.6f

    move-object/from16 v16, v5

    const/4 v5, -0x2

    invoke-direct {v7, v9, v5, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1148
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v18, v7

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v14, v9, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0xa

    .line 1149
    iput v5, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1150
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v7, 0x3f666666    # 0.9f

    invoke-direct {v5, v9, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v7, 0x30

    .line 1151
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1152
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p4, v14

    const/high16 v7, 0x3f000000    # 0.5f

    const/16 v14, 0x64

    invoke-direct {v5, v9, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v7, 0xa

    .line 1153
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v14, p4

    move-object v3, v5

    move-object/from16 v5, v16

    move-object/from16 v7, v18

    goto :goto_27

    :cond_4b
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v9, -0x1

    .line 1156
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v7, 0x3ee66666    # 0.45f

    invoke-direct {v5, v9, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v7, 0x11

    .line 1157
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1158
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p4, v5

    const/4 v5, -0x2

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-direct {v7, v9, v5, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v16, v7

    .line 1159
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v5, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v14, 0xa

    .line 1160
    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1161
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v18, v7

    const v7, 0x3ecccccd    # 0.4f

    const/16 v3, 0x64

    invoke-direct {v5, v9, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1162
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1163
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v14, -0x2

    invoke-direct {v3, v9, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v3, v5

    move-object/from16 v7, v16

    move-object/from16 v14, v18

    move-object/from16 v5, p4

    .line 1165
    :goto_27
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v9, v38

    .line 1166
    invoke-virtual {v9, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1167
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v6, v44

    .line 1168
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1169
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_28
    move-object/from16 v16, v7

    move-object/from16 v38, v9

    move-object/from16 v39, v11

    move-object/from16 v14, v17

    move-object/from16 v7, v21

    move-object/from16 v8, v25

    :goto_29
    move-object/from16 v9, v26

    :goto_2a
    move-object/from16 v3, v41

    move-object/from16 v11, v42

    move-object/from16 v5, v43

    goto/16 :goto_2f

    .line 1170
    :cond_4c
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1171
    invoke-virtual {v15, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_28

    :cond_4d
    move-object/from16 v8, v25

    .line 1172
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1173
    invoke-virtual {v15, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2b
    move-object/from16 v16, v7

    move-object/from16 v38, v9

    move-object/from16 v39, v11

    move-object/from16 v14, v17

    move-object/from16 v7, v21

    goto :goto_29

    .line 1174
    :cond_4e
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1175
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2b

    :cond_4f
    move-object/from16 v38, v9

    move-object/from16 v9, v26

    .line 1176
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1177
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2c
    move-object/from16 v16, v7

    move-object/from16 v39, v11

    move-object/from16 v14, v17

    move-object/from16 v7, v21

    goto :goto_2a

    .line 1178
    :cond_50
    const-string v0, "TimePicker"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1179
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2c

    .line 1180
    :cond_51
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1181
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2c

    .line 1182
    :cond_52
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1183
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2c

    :cond_53
    move-object/from16 v5, v43

    .line 1184
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1185
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v16, v7

    move-object/from16 v39, v11

    move-object/from16 v14, v17

    move-object/from16 v7, v21

    move-object/from16 v3, v41

    :goto_2d
    move-object/from16 v11, v42

    goto :goto_2f

    :cond_54
    move-object/from16 v3, v41

    .line 1186
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1187
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v16, v7

    move-object/from16 v39, v11

    move-object/from16 v14, v17

    move-object/from16 v7, v21

    goto :goto_2d

    :cond_55
    move-object/from16 v16, v7

    move-object/from16 v7, v21

    .line 1188
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1189
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v14}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v39, v11

    move-object/from16 v14, v17

    goto :goto_2d

    :cond_56
    move-object/from16 v39, v11

    move-object/from16 v11, v42

    .line 1190
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1191
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v14}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_57
    :goto_2e
    move-object/from16 v14, v17

    goto :goto_2f

    .line 1192
    :cond_58
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1193
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2e

    .line 1194
    :cond_59
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1195
    invoke-virtual {v1, v14}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2e

    .line 1197
    :goto_2f
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1198
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1199
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_30

    .line 1200
    :cond_5a
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1201
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_30

    .line 1202
    :cond_5b
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1203
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_30

    .line 1204
    :cond_5c
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1205
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_30

    .line 1206
    :cond_5d
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1207
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_30

    .line 1208
    :cond_5e
    const-string v0, "TimePicker"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1209
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_30

    .line 1210
    :cond_5f
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1211
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_30

    .line 1212
    :cond_60
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1213
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_30

    .line 1214
    :cond_61
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1215
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_30

    .line 1216
    :cond_62
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1217
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_30

    .line 1218
    :cond_63
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1219
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_30

    .line 1220
    :cond_64
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1221
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_30

    .line 1222
    :cond_65
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1223
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_30

    .line 1224
    :cond_66
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1225
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_67
    :goto_30
    const/16 v0, 0x356

    if-ne v13, v0, :cond_69

    .line 1231
    :try_start_6
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    move-object/from16 v17, v1

    :try_start_7
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-object/from16 v24, v9

    :try_start_8
    iget-object v9, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerDemoAmountQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 1232
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_68

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Landroid/widget/EditText;

    if-eqz v9, :cond_68

    .line 1233
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v9

    if-ne v9, v1, :cond_68

    .line 1234
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-object/from16 v25, v8

    move-object/from16 v8, v39

    :try_start_9
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_35

    :catch_5
    move-exception v0

    goto :goto_33

    :cond_68
    move-object/from16 v25, v8

    goto :goto_34

    :catch_6
    move-exception v0

    move-object/from16 v25, v8

    goto :goto_32

    :catch_7
    move-exception v0

    goto :goto_31

    :catch_8
    move-exception v0

    move-object/from16 v17, v1

    :goto_31
    move-object/from16 v25, v8

    move-object/from16 v24, v9

    :goto_32
    move-object/from16 v8, v39

    .line 1238
    :goto_33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    :cond_69
    move-object/from16 v17, v1

    move-object/from16 v25, v8

    move-object/from16 v24, v9

    :goto_34
    move-object/from16 v8, v39

    .line 1242
    :goto_35
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v9, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    invoke-virtual {v1, v13, v9}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6e

    move-object v1, v8

    const/4 v0, 0x0

    .line 1244
    :goto_36
    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_6b

    .line 1245
    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    move-object/from16 v18, v15

    .line 1246
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v15

    move-object/from16 v20, v11

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    if-ne v15, v11, :cond_6a

    .line 1247
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    :cond_6a
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v15, v18

    move-object/from16 v11, v20

    goto :goto_36

    :cond_6b
    move-object/from16 v20, v11

    move-object/from16 v18, v15

    .line 1250
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v0

    const-string v9, "@"

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1251
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v9

    const/16 v11, 0x2b8

    if-ne v9, v11, :cond_6c

    .line 1252
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "@"

    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1253
    :cond_6c
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1254
    const-string v11, "ISSELFASSIGN"

    iget v15, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->isSelfassign:I

    invoke-virtual {v9, v11, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1255
    const-string v11, "ParentAttributeId"

    invoke-virtual {v9, v11, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1256
    const-string v11, "TRANSID"

    move-object/from16 v21, v7

    move-object/from16 v39, v8

    iget-wide v7, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->transId:J

    invoke-virtual {v9, v11, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1257
    const-string v7, "ActivityAssignmentId"

    iget v8, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityAssignmentId:I

    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1258
    const-string v7, "SEGMENTID"

    iget v8, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->segmentId:I

    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1259
    const-string v7, "Count"

    iget v8, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->countVillage:I

    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1260
    const-string v7, "pairId"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const-string v7, "AssignmentId"

    iget v8, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->assignmentID:I

    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1263
    const-string v7, "FirstDropDownDataQry"

    invoke-virtual {v9, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v0

    iget v7, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1265
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v0

    iget v7, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->isPlanned:I

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1266
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v0

    iget v7, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ismba:I

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1268
    const-string v0, "CropId"

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v0, "DisplayRows"

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDisplayRows()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "fragment"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 1275
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1277
    :cond_6d
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;-><init>()V

    .line 1278
    invoke-virtual {v0, v9}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1279
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getId()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "fragment"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v0, v8}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1280
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->fragmentList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_6e
    move-object/from16 v21, v7

    move-object/from16 v39, v8

    move-object/from16 v20, v11

    move-object/from16 v18, v15

    .line 1306
    :goto_37
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6f

    .line 1307
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationLayout:Landroid/widget/LinearLayout;

    .line 1308
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1310
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_39

    :cond_6f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_70

    .line 1313
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1314
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1315
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1316
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1317
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->layoutId:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1319
    new-instance v1, Landroid/widget/TextView;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v7, -0xbbbbbc

    .line 1320
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v7, 0x4

    .line 1322
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v7, v16

    .line 1323
    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1324
    new-instance v1, Landroid/widget/Button;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationBtn:Landroid/widget/Button;

    .line 1325
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_getButton()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationBtn:Landroid/widget/Button;

    move-object/from16 v7, p1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1327
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationBtn:Landroid/widget/Button;

    const/16 v7, 0x11

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setGravity(I)V

    .line 1328
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationBtn:Landroid/widget/Button;

    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 1329
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0800c6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1330
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v8, 0x3ee66666    # 0.45f

    const/4 v9, -0x2

    invoke-direct {v1, v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v7, 0xa

    .line 1331
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1332
    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationBtn:Landroid/widget/Button;

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1333
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1334
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p6

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 1336
    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationFlag:I

    .line 1337
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationBtn:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$8;

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$8;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_39

    :cond_70
    move-object/from16 v1, p6

    move-object v7, v14

    .line 1348
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_71

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1350
    :try_start_a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    iget v9, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    invoke-virtual {v8, v9, v13}, Lcom/conceptglobal/pmc/common/Queries;->getVisibilityType(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 1351
    const-string v8, "Visibility"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/16 v0, 0x8

    .line 1352
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_38

    :catch_9
    move-exception v0

    .line 1355
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1358
    :cond_71
    :goto_38
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x1

    .line 1359
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_72

    .line 1360
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v0

    if-ne v0, v8, :cond_72

    .line 1361
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_72
    move-object/from16 v7, v35

    .line 1364
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1366
    :goto_39
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mattributesnamesArr:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1367
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1368
    invoke-direct {v10, v1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->setTextChangeListener(Landroid/widget/EditText;)V

    .line 1369
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mForOperations:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1371
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1372
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    :cond_73
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1375
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1376
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1377
    :cond_74
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1378
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1379
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1380
    :cond_75
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1381
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1382
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1383
    :cond_76
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1384
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1385
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    :cond_77
    move-object/from16 v1, v21

    .line 1386
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1387
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1388
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    :cond_78
    move-object/from16 v1, v20

    .line 1389
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1390
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1391
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1392
    :cond_79
    const-string v0, "Rating"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1394
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1395
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1396
    :cond_7a
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1397
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    move-object/from16 v15, v18

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1398
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    :cond_7b
    move-object/from16 v15, v18

    move-object/from16 v1, v25

    .line 1399
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1400
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1401
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    :cond_7c
    move-object/from16 v1, v24

    .line 1402
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1403
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1404
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1405
    :cond_7d
    const-string v0, "timePicker"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1406
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1407
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeText:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1408
    :cond_7e
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1409
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1410
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 1411
    :cond_7f
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1412
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v2, v39

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1415
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 1416
    :cond_80
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1417
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1418
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1419
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1420
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    :cond_81
    :goto_3a
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_82

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1426
    :try_start_b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    invoke-virtual {v1, v2, v13}, Lcom/conceptglobal/pmc/common/Queries;->getVisibilityType(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 1427
    const-string v1, "Visibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    move-object/from16 v1, p5

    .line 1428
    invoke-direct {v10, v1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->makeParentChildVisibility(Lcom/conceptglobal/pmc/model/AttributeModel;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_3b

    :catch_a
    move-exception v0

    .line 1431
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1435
    :cond_82
    :goto_3b
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->layoutId:I

    return-void
.end method

.method public getCascadingQuery(Lcom/conceptglobal/pmc/model/AttributeModel;I)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 2564
    const-string v3, ""

    .line 2565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2567
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

    .line 2568
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 2571
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

    .line 2572
    :try_start_1
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 2573
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 2574
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    sget-object v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

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

    .line 2578
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 2584
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v9

    if-eqz v9, :cond_4

    .line 2585
    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 2586
    sget-object v5, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 2587
    sget-object v5, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    sget-object v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

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

    .line 2591
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    sget-object v5, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 2597
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v9

    if-eqz v9, :cond_6

    .line 2598
    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 2599
    sget-object v6, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 2600
    sget-object v6, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

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

    .line 2604
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    sget-object v9, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 2608
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

    .line 2609
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 2611
    :cond_7
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, " and "

    if-nez v7, :cond_8

    .line 2613
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    :cond_8
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    :cond_9
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2617
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

    .line 2625
    const-string v5, "AttributesActivity"

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 2626
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2628
    :cond_a
    :goto_6
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    .line 2629
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v10

    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    iget v13, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

    iget v14, v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityAssignmentId:I

    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v15

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2628
    invoke-virtual/range {v7 .. v16}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidationData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1694
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 3043
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    const/4 v0, -0x1

    if-ne p1, p3, :cond_2

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3052
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 3047
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->findCurrentLocation()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    if-ne p2, v0, :cond_4

    const/16 p2, 0x65

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 3064
    :cond_3
    new-instance p1, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    invoke-direct {p1, p2, p3}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CompressListener;)V

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageFile:Ljava/io/File;

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

    .line 2211
    const-string v0, ""

    const-string v1, "Stop"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f09008a

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 2214
    :cond_0
    :try_start_0
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->btnStartStop:Landroid/widget/Button;

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

    .line 2215
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->timer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 2216
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->timer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 2217
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2218
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 2219
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->stopTimeMobile:Ljava/lang/String;

    .line 2221
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->fetchLocationCall:Ljava/lang/String;

    .line 2222
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->fetchLocation()V

    goto :goto_0

    .line 2224
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTimeAutomatic(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2225
    const-string p1, "Please select datetime of type auto from settings, to start timer"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->showTimeSettingsAlertDialog(Ljava/lang/String;)V

    return-void

    .line 2228
    :cond_2
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->timer:Ljava/util/Timer;

    .line 2229
    new-instance v4, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask;

    invoke-direct {v4, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1f4

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2230
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2231
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 2232
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->starttimeMobile:Ljava/lang/String;

    .line 2233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->starttimeMobileMillis:J

    .line 2234
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->stopTimeGPS:Ljava/lang/String;

    .line 2235
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->stopTimeMobile:Ljava/lang/String;

    .line 2238
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->fetchLocationCall:Ljava/lang/String;

    .line 2239
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->fetchLocation()V

    .line 2240
    iget p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->activityId:I

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

    .line 2241
    :cond_3
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->bindDemoValues()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2245
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 279
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 281
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0c0064

    .line 282
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->setContentView(I)V

    .line 283
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    .line 284
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->clearStaticvalues()V

    .line 285
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 286
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 287
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->init()V

    .line 288
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->setListeners()V

    .line 289
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getData()V

    .line 290
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->setData()V

    .line 291
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerSelectedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "FARMER_SELECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2931
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 2932
    new-instance v7, Landroid/app/TimePickerDialog;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

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

    .line 2907
    :cond_1
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v11, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mYear:I

    iget v12, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mMonth:I

    iget v13, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDay:I

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2909
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2910
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->datePos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x5

    if-eqz v2, :cond_2

    const v4, 0x7f100006

    .line 2912
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

    .line 2913
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 2914
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2915
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v0

    invoke-virtual {v5, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 2916
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 2917
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_2
    if-eqz v2, :cond_3

    const v4, 0x7f100005

    .line 2920
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

    .line 2921
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 2922
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2923
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v5, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 2924
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2925
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

    .line 3015
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->dos:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 3016
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mDatetext:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 3017
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->dos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3020
    const-string v0, "AttributesActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 3437
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 3438
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->farmerSelectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 3030
    :cond_0
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 3031
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3032
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 p1, 0x0

    .line 3034
    sput-boolean p1, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 3183
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Longitude"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3184
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3185
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 3186
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3187
    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 3188
    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 3189
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 3190
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3191
    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 3192
    check-cast v7, Landroid/widget/EditText;

    .line 3193
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3194
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

    .line 3195
    :cond_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3196
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

    .line 3207
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->locationView:Landroid/view/View;

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 3170
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 3273
    const-string p2, "onRequestPermissionResult"

    const-string v0, "AttributesActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 3275
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 3278
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3279
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 3281
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->findCurrentLocation()V

    goto :goto_0

    .line 3284
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 2297
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2298
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mImageviews:Ljava/util/List;

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

    .line 2300
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v2, :cond_0

    .line 2302
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2305
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2306
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1607
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

    .line 1617
    :goto_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 1618
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1642
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

    if-ne v2, v9, :cond_6

    .line 1644
    :try_start_1
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 1647
    :cond_0
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

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

    if-nez v2, :cond_1

    .line 1648
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

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

    .line 1651
    :cond_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

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

    if-ge v2, v12, :cond_2

    .line 1652
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

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

    .line 1655
    :cond_2
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1656
    :cond_3
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12

    cmp-long v2, v12, v6

    if-eqz v2, :cond_5

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

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

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

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

    .line 1658
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

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

    :cond_5
    if-eqz v9, :cond_b

    .line 1662
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1667
    :cond_6
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

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

    if-eqz v2, :cond_b

    .line 1668
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

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

    .line 1669
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

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

    .line 1672
    :cond_7
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1673
    :cond_8
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12

    cmp-long v2, v12, v6

    if-eqz v2, :cond_a

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

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

    if-lez v2, :cond_9

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_a

    .line 1675
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

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

    :cond_a
    if-eqz v9, :cond_b

    .line 1679
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1685
    const-string v2, "AttributesActivity-Validation"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_c
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

    .line 3213
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3215
    monitor-enter p0

    .line 3216
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3217
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3220
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

    .line 3223
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

    .line 3217
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
