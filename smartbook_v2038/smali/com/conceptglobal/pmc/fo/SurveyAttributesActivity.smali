.class public Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;
.super Landroid/app/Activity;
.source "SurveyAttributesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/CropChanger;
.implements Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;,
        Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$NumericDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$loadDataTask;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final GET_CAM_IMG_FIRST:I = 0x65

.field private static final ISDONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurveyAttributesActivity"

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

.field private rlTimer:Landroid/widget/RelativeLayout;

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

.field private transId:J

.field private tvLastVisitDetails:Landroid/widget/TextView;

.field private updateDOS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 107
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->layoutId:I

    const/16 v1, 0x64

    .line 149
    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->REQ_CODE_SPEECH_INPUT:I

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->childValuelistAttributes:Ljava/util/List;

    const/4 v1, -0x1

    .line 160
    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForOperations:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForDates:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForTime:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mRating:I

    .line 162
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->datePos:I

    .line 163
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->timePos:I

    const-wide/16 v1, -0x1

    .line 167
    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->defaultMinDate:J

    .line 168
    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->defaultMaxDate:J

    .line 176
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mFiledStr:Ljava/lang/String;

    .line 180
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationFlag:I

    .line 194
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    .line 195
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEditIds:Ljava/util/Map;

    const/4 v2, 0x0

    .line 204
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    .line 206
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    .line 231
    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->countVillage:I

    .line 237
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->brandsList:Ljava/util/List;

    .line 245
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->textChanged:Ljava/lang/String;

    .line 1926
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->operationListener:Landroid/view/View$OnClickListener;

    .line 2088
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$9;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 2313
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$10;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$10;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->datesListener:Landroid/view/View$OnClickListener;

    .line 2321
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$11;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$11;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->timesListener:Landroid/view/View$OnClickListener;

    .line 2416
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$13;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$13;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2436
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$14;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$14;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 2581
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$15;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 107
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/List;
    .locals 1

    .line 107
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->listAttributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->findModelPosition(Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1310(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I
    .locals 2

    .line 107
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForOperations:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForOperations:I

    return v0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/List;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mattributesnamesArr:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500()Ljava/util/List;
    .locals 1

    .line 107
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArrIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->transId:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;I)Ljava/util/List;
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->filterAttributesByFilterAttribute(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEditIds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/content/Context;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->segmentId:I

    return p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ismba:I

    return p0
.end method

.method static synthetic access$2302(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->datePos:I

    return p1
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->timePos:I

    return p0
.end method

.method static synthetic access$2402(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->timePos:I

    return p1
.end method

.method static synthetic access$2502(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mYear:I

    return p1
.end method

.method static synthetic access$2602(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$2702(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDay:I

    return p1
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->updateDisplay()V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    return p0
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->loadAttributes(I)V

    return-void
.end method

.method static synthetic access$3102(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->speachText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->promptSpeechInput()V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->assignmentID:I

    return p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->farmerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method

.method static synthetic access$702(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->findCurrentLocation()V

    return-void
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method private addDynamicLayoutVillageDetails(IILandroid/widget/LinearLayout;)V
    .locals 19

    move-object/from16 v9, p0

    .line 1721
    new-instance v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    const/4 v11, 0x0

    .line 1724
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->farmerId:Ljava/lang/String;

    iget v3, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    move/from16 v4, p2

    invoke-virtual {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getSelectedAttributeQueryUpdate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->AlertlistAttributes:Ljava/util/List;

    .line 1725
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1726
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 1731
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1732
    const-string v1, "SurveyAttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1735
    :cond_0
    const-string v0, ""

    move/from16 v12, p1

    move-object v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v12, :cond_4

    .line 1736
    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v3, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v13, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1737
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 1738
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1739
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1740
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v14, 0xa

    .line 1741
    invoke-virtual {v13, v11, v11, v11, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1742
    iget v3, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->layoutId:I

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1747
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, -0xbbbbbc

    .line 1748
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1749
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v1, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1751
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    .line 1752
    :goto_1
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 1753
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object v1, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1755
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->childValuelistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1757
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1758
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_2

    :cond_1
    move-object/from16 v16, v0

    goto :goto_2

    :cond_2
    move-object/from16 v16, v2

    .line 1765
    :goto_2
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object v6, v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    move-object v7, v13

    move/from16 v18, v8

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V

    add-int/lit8 v8, v18, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    .line 1768
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1769
    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v3, p3

    .line 1771
    invoke-virtual {v3, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v15

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private captureImage(ILjava/lang/String;)V
    .locals 4

    .line 2291
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 2292
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

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageFile:Ljava/io/File;

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 2294
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->image1Path:Ljava/lang/String;

    .line 2297
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2299
    const-string v0, "com.conceptglobal.pmcdeepakfertilizers.provider"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageFile:Ljava/io/File;

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2303
    const-string v1, "output"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2305
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 2306
    const-string v2, ""

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v2, 0x3

    .line 2307
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2309
    :cond_1
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2310
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private checkImagesInDBandDelete()V
    .locals 6

    .line 1890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1898
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ImageDetails;

    .line 1900
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

    .line 1902
    const-string v2, "SurveyAttributesActivity"

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

    .line 1711
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1712
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1713
    new-instance v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v2, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private doDiscardOperation()V
    .locals 6

    .line 2260
    const-string v0, "SurveyAttributesActivity"

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->farmerId:Ljava/lang/String;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityAssignmentId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDiscardForActivities(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2263
    :try_start_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 2264
    const-string v2, "2"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2266
    :try_start_2
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2267
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2271
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2274
    :goto_0
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2275
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2276
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 2278
    sput-boolean v0, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    .line 2279
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2280
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2282
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->btnnotDone:Landroid/widget/TextView;

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

    .line 1867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->listAttributes:Ljava/util/List;

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

    .line 1870
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1871
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

    .line 1874
    const-string v1, "SurveyAttributesActivity"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_2
    return-object v0
.end method

.method private findCurrentLocation()V
    .locals 4

    .line 2593
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2594
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 2597
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$16;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$16;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    const-string v2, "SurveyAttributesActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2613
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

    .line 1655
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1658
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

    .line 327
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 328
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 329
    const-string v2, "MODELCLASS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->assignmentDetails:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 330
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ismba:I

    .line 331
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->farmerId:Ljava/lang/String;

    .line 332
    const-string v1, "ISSELFASSIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->isSelfassign:I

    .line 333
    const-string v1, "SEGMENTID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->segmentId:I

    .line 334
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    .line 335
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->isPlanned:I

    .line 336
    const-string v1, "ACTIVITYNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityName:Ljava/lang/String;

    .line 337
    const-string v1, "ActivityAssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityAssignmentId:I

    .line 338
    const-string v1, "TRANSID"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->transId:J

    .line 339
    const-string v1, "AssignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->assignmentID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 350
    const-string v1, "SurveyAttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 278
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->cropChageListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

    .line 280
    sput-object p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ctx:Landroid/content/Context;

    const v0, 0x7f0902bd

    .line 285
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const v0, 0x7f090050

    .line 286
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->textActivityName:Landroid/widget/TextView;

    const v0, 0x7f090395

    .line 287
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->rlTimer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    .line 288
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->updateDOS:Ljava/lang/String;

    .line 296
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 297
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 300
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private loadAttributes(I)V
    .locals 9

    .line 388
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/common/Queries;->getRuleDetails(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRuleAttributeIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    .line 389
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->farmerId:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->segmentId:I

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->transId:J

    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeSurveyQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCSurveyActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->listAttributes:Ljava/util/List;

    .line 390
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 393
    :cond_0
    :goto_0
    sget-object p1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 394
    sget-object p1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 399
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 404
    const-string v0, "SurveyAttributesActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private makeParentChildVisibility(Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 7

    .line 2808
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2810
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getParentAttributeIdDraft(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 2812
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    invoke-virtual {v2, v3, v0}, Lcom/conceptglobal/pmc/common/Queries;->getRuleParentAttrValueId(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 2813
    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 2814
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    sget-object v4, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 2815
    const-string v1, "Visibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2818
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2821
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2822
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

    .line 2824
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2825
    sget-object v3, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2826
    sget-object v3, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

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

    .line 2833
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static methodToGetData(Landroid/content/Context;)V
    .locals 3

    .line 2744
    check-cast p0, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;

    .line 2745
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->listAttributes:Ljava/util/List;

    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;->GetData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private promptSpeechInput()V
    .locals 3

    .line 2760
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2761
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2763
    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const v1, 0x7f1002a8

    .line 2765
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2764
    const-string v2, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 2767
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2769
    :catch_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1002a7

    .line 2770
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2769
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2771
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private setData()V
    .locals 2

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mattributesnamesArr:Ljava/util/List;

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArrIds:Ljava/util/List;

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mImageviews:Ljava/util/List;

    .line 372
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->textActivityName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->loadAttributes(I)V

    .line 374
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 375
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDay:I

    const/4 v1, 0x2

    .line 376
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mMonth:I

    const/4 v1, 0x1

    .line 377
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mYear:I

    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 2466
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2467
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2469
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2471
    const-string v1, "SurveyAttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2473
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2474
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 1882
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1883
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1884
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1885
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setFieldDataEmpty(IZ)V
    .locals 2

    .line 2797
    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 2799
    sget-object p1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
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

    .line 2776
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$17;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$17;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 3

    .line 1675
    const-string p4, "Count"

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/ChildAttributeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1676
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    .line 1677
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->farmerId:Ljava/lang/String;

    .line 1676
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1678
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    .line 1679
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ismba:I

    .line 1678
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1680
    const-string v1, "SEGMENTID"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->segmentId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1681
    const-string v1, "ISSELFASSIGN"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->isSelfassign:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1682
    const-string v1, "ParentAttributeId"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1683
    const-string p2, "AssignmentId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->assignmentID:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1684
    const-string p2, "ActivityAssignmentId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityAssignmentId:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1685
    const-string p2, "TRANSID"

    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->transId:J

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1686
    const-string p2, "DISPLAYTYPE"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1688
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

    .line 1691
    :catch_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1694
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    .line 1696
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    .line 1694
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1697
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    .line 1699
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->isPlanned:I

    .line 1697
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x20000

    .line 1701
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x4000000

    .line 1703
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x3

    .line 1701
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 2332
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2333
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$12;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$12;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2339
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2340
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2341
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 1852
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1853
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$7;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1859
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1860
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1861
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 2479
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mFiledStr:Ljava/lang/String;

    .line 2480
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2482
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2484
    const-string v1, "SurveyAttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2486
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->setDate(I)V

    return-void
.end method


# virtual methods
.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    .locals 40

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v0, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    .line 417
    iget v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForOperations:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForOperations:I

    .line 418
    iget v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForDates:I

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForDates:I

    .line 419
    iget v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForTime:I

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForTime:I

    .line 420
    iget v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mRating:I

    add-int/2addr v1, v9

    iput v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mRating:I

    .line 423
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 424
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 425
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 426
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    .line 635
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v4, -0x2

    .line 426
    invoke-direct {v1, v6, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0xa

    const/4 v3, 0x5

    .line 427
    invoke-virtual {v1, v5, v3, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 428
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 429
    invoke-virtual {v8, v2, v2, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 430
    iget v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->layoutId:I

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const v1, 0x7f0801f9

    .line 431
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 436
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, -0xbbbbbc

    .line 437
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v4, 0x0

    .line 451
    iput-object v4, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    .line 456
    new-instance v3, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$1;

    invoke-direct {v3, v10}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    .line 480
    new-instance v9, Landroid/widget/EditText;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v9, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 481
    const-string v4, "Dropdown"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v20, v9

    const-string v9, "TextBoxND"

    move-object/from16 v21, v9

    const-string v9, "Rating"

    move-object/from16 v22, v9

    const-string v9, "TextBoxN"

    move-object/from16 v23, v9

    const-string v9, "TextArea"

    move-object/from16 v24, v9

    const-string v9, "DatePicker"

    move-object/from16 v25, v9

    const-string v9, "Multiselect Dropdown"

    move-object/from16 v26, v9

    const-string v9, ""

    move-object/from16 v27, v9

    const v5, 0x7f080096

    const v6, 0x7f07017d

    const/16 v9, 0x11

    if-eqz v4, :cond_9

    .line 482
    new-instance v7, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 483
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 484
    iget v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForOperations:I

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setId(I)V

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v3

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 487
    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 488
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 490
    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f0800d7

    .line 491
    invoke-virtual {v7, v2, v2, v0, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 492
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v28

    const/16 v30, 0x0

    move-object v6, v1

    const/4 v3, 0x4

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v7

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-wide/from16 v6, v28

    move-object v15, v8

    move-object/from16 v8, p5

    move-object/from16 v16, v15

    move-object/from16 v11, v20

    move-object/from16 v13, v26

    move-object/from16 v15, v27

    const v12, 0x7f100009

    move-object/from16 v9, v30

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$1;)V

    move-object/from16 v9, v32

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 493
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 494
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_3

    .line 498
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

    .line 499
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->cropId:Ljava/lang/String;

    .line 500
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getCropNameQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 503
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 505
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 508
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 511
    const-string v1, "SurveyAttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 518
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

    .line 521
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 519
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

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 526
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

    .line 533
    :cond_6
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKey(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 527
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

    .line 528
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKeyDefault(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 530
    :cond_8
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 537
    :goto_3
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v17, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v8, p5

    move-object v12, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$1;)V

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v18, v11

    move-object v4, v12

    move-object/from16 v17, v13

    move-object/from16 v36, v21

    move-object/from16 v39, v22

    move-object/from16 v35, v24

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v13, 0x4

    move-object/from16 v12, p2

    goto/16 :goto_8

    :cond_9
    move-object/from16 v31, v1

    move-object/from16 v16, v8

    move-object/from16 v11, v20

    move-object/from16 v13, v26

    move-object/from16 v15, v27

    const v9, 0x7f100009

    .line 539
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 541
    new-instance v8, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    .line 542
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 543
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 544
    iget v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForOperations:I

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setId(I)V

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 546
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 547
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v6, 0x11

    .line 548
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setGravity(I)V

    const v1, 0x7f0800d7

    .line 549
    invoke-virtual {v8, v7, v7, v1, v7}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 550
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    new-instance v4, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v17

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v19

    const/16 v26, 0x0

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v3, v8

    move-object/from16 v33, v4

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    move-object v14, v8

    move-object/from16 v8, p5

    move-object/from16 v17, v13

    const v13, 0x7f100009

    move-object/from16 v9, v26

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$1;)V

    move-object/from16 v1, v33

    invoke-virtual {v14, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 552
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v13, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 554
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

    .line 557
    :cond_a
    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 560
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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_10

    .line 564
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    .line 565
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->farmerId:Ljava/lang/String;

    iget v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityAssignmentId:I

    iget-wide v5, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->transId:J

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJ)Ljava/lang/String;

    move-result-object v0

    .line 564
    invoke-virtual {v7, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->brandsList:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 567
    :try_start_3
    const-string v1, "SurveyAttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 573
    :goto_6
    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_e

    .line 575
    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandSelected()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 576
    sget-object v4, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    sget-object v4, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v3, :cond_c

    .line 579
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_c
    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 588
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 591
    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 593
    invoke-virtual {v11, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 596
    :cond_f
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 599
    :cond_10
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    .line 602
    const-string v1, "SurveyAttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    move-object/from16 v18, v11

    move-object v4, v14

    move-object/from16 v36, v21

    move-object/from16 v39, v22

    move-object/from16 v35, v24

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v13, 0x4

    :goto_8
    move/from16 v11, p3

    goto/16 :goto_1f

    :cond_11
    move-object/from16 v17, v13

    move-object/from16 v14, v25

    const v13, 0x7f100009

    .line 604
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v9, "0"

    if-eqz v1, :cond_17

    .line 605
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    .line 606
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 607
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForDates:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 608
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 609
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 610
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    const/16 v8, 0x11

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setGravity(I)V

    .line 611
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 612
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 614
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    new-instance v4, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v18

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v25

    const/16 v20, 0x0

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v13, v4

    move-wide/from16 v4, v18

    move-object/from16 v34, v7

    move-wide/from16 v6, v25

    move-object/from16 v25, v14

    const/16 v14, 0x11

    move-object/from16 v8, p5

    move-object v14, v9

    move-object/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$1;)V

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 615
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100009

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 617
    :try_start_4
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->cropId:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->cropId:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 618
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->farmerId:Ljava/lang/String;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->cropId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->dos:Ljava/lang/String;

    .line 620
    :cond_12
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->dos:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 621
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->dos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 622
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

    .line 623
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 625
    :cond_14
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 628
    const-string v1, "Attribute"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 631
    :goto_9
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 632
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 633
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 635
    :cond_15
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    const v1, 0x7f100006

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 636
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    const v1, 0x7f100005

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 637
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_16

    .line 638
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100006

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 639
    :cond_16
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_19

    .line 640
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_a

    :cond_17
    move-object/from16 v25, v14

    move-object v14, v9

    .line 642
    const-string v1, "TimePicker"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 643
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    .line 644
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 645
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForTime:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 646
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 647
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 648
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 649
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 650
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->timesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 652
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    new-instance v14, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/4 v9, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$1;)V

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 653
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100009

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 654
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

    .line 655
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 657
    :cond_18
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

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
    :goto_a
    move-object/from16 v18, v11

    move-object/from16 v36, v21

    move-object/from16 v39, v22

    move-object/from16 v35, v24

    const/16 v1, 0xa

    const/4 v13, 0x4

    const/16 v19, 0x0

    :goto_b
    move/from16 v11, p3

    goto/16 :goto_1e

    :cond_1a
    move-object/from16 v9, v24

    const/4 v13, 0x0

    .line 659
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 660
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    .line 661
    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 662
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 663
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 664
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 667
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 668
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v8, 0x2

    new-array v1, v8, [Landroid/text/InputFilter;

    aput-object v3, v1, v13

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xfa

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 669
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v6, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v18

    const/16 v20, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v13, v6

    move-wide/from16 v6, v18

    move-object/from16 v18, v11

    const/4 v11, 0x2

    move-object/from16 v8, p5

    move-object/from16 v35, v9

    move-object/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$1;)V

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 670
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100009

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 671
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 672
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

    .line 675
    :cond_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 673
    :cond_1c
    :goto_c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 678
    :cond_1d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_d
    move/from16 v11, p3

    :goto_e
    move-object/from16 v36, v21

    move-object/from16 v39, v22

    const/16 v1, 0xa

    const/4 v13, 0x4

    const/16 v19, 0x0

    goto/16 :goto_1e

    :cond_1e
    move-object/from16 v35, v9

    move-object/from16 v18, v11

    move-object/from16 v13, v23

    const/4 v11, 0x2

    .line 693
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 694
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 695
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 696
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 697
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 698
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 699
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 700
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 703
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$NumericDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v10, v3}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$NumericDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 704
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v19, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v8, p5

    move-object v11, v9

    move-object/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$1;)V

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 705
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100009

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 707
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 708
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_f

    .line 711
    :cond_1f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 709
    :cond_20
    :goto_f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 714
    :cond_21
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_10
    move/from16 v11, p3

    move-object/from16 v23, v13

    goto/16 :goto_e

    :cond_22
    move-object/from16 v11, v22

    .line 716
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 717
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    .line 720
    new-instance v0, Landroid/widget/RatingBar;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    const v2, 0x1010210

    const/4 v9, 0x0

    invoke-direct {v0, v1, v9, v2}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    .line 722
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 724
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 725
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setTag(Ljava/lang/Object;)V

    .line 726
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 727
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mRating:I

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setId(I)V

    .line 728
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setBackgroundResource(I)V

    .line 730
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$2;

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 739
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_23

    .line 740
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 741
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    move-object/from16 v19, v9

    move-object/from16 v39, v11

    move-object/from16 v23, v13

    move-object/from16 v36, v21

    const/16 v1, 0xa

    const/4 v13, 0x4

    goto/16 :goto_b

    :cond_24
    move-object/from16 v2, v21

    const/4 v4, 0x5

    const/4 v7, -0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 743
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 744
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 745
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 746
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 747
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 748
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 749
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 752
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 753
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$DecimalDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v5

    const/4 v6, 0x2

    invoke-direct {v1, v10, v5, v6}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;II)V

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 754
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v6, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v19

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v21

    const/16 v23, 0x0

    move-object v1, v6

    move-object v5, v2

    move-object/from16 v2, p0

    move-object/from16 v36, v5

    move-wide/from16 v4, v19

    move-object/from16 v37, v6

    move-wide/from16 v6, v21

    move-object/from16 v22, v11

    const/4 v11, -0x1

    move-object/from16 v8, p5

    move-object/from16 v19, v9

    move-object/from16 v9, v23

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$1;)V

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 755
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100009

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 757
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 758
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    goto :goto_11

    .line 761
    :cond_25
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 759
    :cond_26
    :goto_11
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 764
    :cond_27
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_12
    move/from16 v11, p3

    move-object/from16 v23, v13

    move-object/from16 v39, v22

    :goto_13
    const/16 v1, 0xa

    const/4 v13, 0x4

    goto/16 :goto_1e

    :cond_28
    move-object/from16 v36, v2

    move-object/from16 v19, v9

    move-object/from16 v22, v11

    const/4 v11, -0x1

    .line 778
    const-string v1, "TextBox"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 779
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 780
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 781
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 782
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 783
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 784
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 787
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

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

    .line 788
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

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

    move-object v11, v9

    move-object/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$1;)V

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 789
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100009

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 800
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v0, 0x15

    move/from16 v11, p3

    move-object/from16 v9, v22

    if-eq v11, v0, :cond_29

    const/16 v0, 0x14

    if-ne v11, v0, :cond_2a

    .line 804
    :cond_29
    iget v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationFlag:I

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationFlag:I

    .line 807
    :cond_2a
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Budget (INR)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    .line 808
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 811
    :cond_2b
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 812
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 813
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_14

    .line 814
    :cond_2c
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 815
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 816
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 832
    :cond_2d
    :goto_14
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_15

    .line 835
    :cond_2e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v21, v2, v1

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v8, 0x4

    goto :goto_16

    :cond_2f
    :goto_15
    const/4 v3, 0x1

    .line 833
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$DecimalDigitsInputFilter;

    const/4 v3, 0x6

    const/4 v8, 0x4

    invoke-direct {v2, v10, v8, v3}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 837
    :goto_16
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 838
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

    goto :goto_17

    .line 841
    :cond_30
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 839
    :cond_31
    :goto_17
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 844
    :cond_32
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_18
    move-object/from16 v39, v9

    move-object/from16 v23, v13

    goto/16 :goto_13

    :cond_33
    move/from16 v11, p3

    move-object/from16 v9, v22

    const/4 v8, 0x4

    .line 846
    const-string v1, "NumberBox"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 847
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 848
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 849
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 850
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 851
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 852
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 853
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 854
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 855
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 856
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v6, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v20

    const/16 v22, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v38, v6

    move-wide/from16 v6, v20

    move-object/from16 v23, v13

    const/4 v13, 0x4

    move-object/from16 v8, p5

    move-object/from16 v39, v9

    move-object/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$1;)V

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 857
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100009

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 858
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 859
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_34

    goto :goto_19

    .line 862
    :cond_34
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 860
    :cond_35
    :goto_19
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 865
    :cond_36
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_37
    :goto_1a
    const/16 v1, 0xa

    goto/16 :goto_1e

    :cond_38
    move-object/from16 v39, v9

    move-object/from16 v23, v13

    const/4 v13, 0x4

    .line 880
    const-string v1, "Label"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 881
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x1

    .line 882
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 883
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 884
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 885
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 886
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 887
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 890
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 891
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

    goto :goto_1b

    .line 894
    :cond_39
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 892
    :cond_3a
    :goto_1b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 897
    :cond_3b
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_1c

    .line 900
    :cond_3c
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 898
    :cond_3d
    :goto_1c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_1a

    .line 909
    :cond_3e
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 910
    new-instance v4, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 911
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 912
    iget v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForOperations:I

    invoke-virtual {v4, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setId(I)V

    const/4 v1, 0x1

    .line 914
    invoke-virtual {v4, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setGravity(I)V

    .line 916
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "True"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 917
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "True"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 918
    invoke-virtual {v4, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    goto :goto_1d

    :cond_3f
    const/4 v1, 0x0

    .line 920
    invoke-virtual {v4, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    .line 923
    :cond_40
    :goto_1d
    new-instance v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$3;

    invoke-direct {v0, v10}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    invoke-virtual {v4, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v2, v4

    move-object/from16 v4, v19

    const/16 v1, 0xa

    goto :goto_1f

    .line 929
    :cond_41
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 930
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f080090

    .line 932
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 933
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 934
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 936
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_42

    .line 938
    new-instance v0, Ljava/io/File;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 941
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 942
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 945
    :cond_42
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mImageviews:Ljava/util/List;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$4;

    invoke-direct {v2, v10, v11}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1e
    move-object/from16 v2, v19

    move-object v4, v2

    .line 960
    :goto_1f
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 967
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 968
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 969
    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    iget v8, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    invoke-virtual {v7, v11, v8}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v5

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v5, :cond_43

    .line 970
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x64

    const v9, 0x3ee66666    # 0.45f

    const/4 v14, -0x1

    invoke-direct {v5, v14, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v8, 0x11

    .line 971
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 972
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const v9, 0x3f19999a    # 0.6f

    const/4 v13, -0x2

    invoke-direct {v8, v14, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0x14

    const/4 v1, 0x5

    .line 973
    invoke-virtual {v8, v1, v1, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 974
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v14, v13, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0xa

    .line 975
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 976
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const v9, 0x3f666666    # 0.9f

    invoke-direct {v13, v14, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0x30

    .line 977
    iput v9, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 978
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p4, v1

    const/16 v1, 0xfa

    invoke-direct {v9, v14, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0xa

    .line 979
    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 980
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v1, p4

    move-object/from16 v7, v31

    goto :goto_20

    :cond_43
    const/4 v1, 0x5

    const/4 v5, -0x2

    const/4 v14, -0x1

    .line 983
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x64

    const v13, 0x3ee66666    # 0.45f

    invoke-direct {v8, v14, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0x11

    .line 984
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 985
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v14, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v13, 0x14

    .line 986
    invoke-virtual {v9, v1, v1, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 987
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v14, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v7, 0xa

    .line 988
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 989
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0xfa

    move-object/from16 p4, v1

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v13, v14, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 990
    iput v7, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 991
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 992
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v8

    move-object v8, v9

    move-object v9, v13

    move-object/from16 v7, v31

    move-object v13, v1

    move-object/from16 v1, p4

    .line 997
    :goto_20
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v14, 0x3fa66666    # 1.3f

    move-object/from16 v27, v15

    const v15, 0x3fa66666    # 1.3f

    .line 998
    invoke-virtual {v7, v14, v15}, Landroid/widget/TextView;->setLineSpacing(FF)V

    move-object/from16 v14, v18

    .line 999
    invoke-virtual {v14, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1002
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_21
    move-object/from16 v20, v14

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    :goto_22
    move-object/from16 v9, v23

    move-object/from16 v6, v25

    :goto_23
    move-object/from16 v5, v35

    :goto_24
    move-object/from16 v15, v36

    :goto_25
    move-object/from16 v14, v39

    goto/16 :goto_29

    .line 1003
    :cond_44
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1004
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_21

    :cond_45
    move-object/from16 v3, v17

    .line 1005
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1006
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_26
    move-object/from16 v20, v14

    move-object/from16 v1, v16

    goto :goto_22

    .line 1007
    :cond_46
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1008
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_26

    :cond_47
    move-object/from16 v6, v25

    .line 1009
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1010
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_27
    move-object/from16 v20, v14

    move-object/from16 v1, v16

    move-object/from16 v9, v23

    goto :goto_23

    .line 1011
    :cond_48
    const-string v0, "TimePicker"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1012
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_27

    .line 1013
    :cond_49
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1014
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_27

    .line 1015
    :cond_4a
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1016
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_27

    :cond_4b
    move-object/from16 v5, v35

    .line 1017
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1018
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v20, v14

    move-object/from16 v1, v16

    move-object/from16 v9, v23

    goto/16 :goto_24

    :cond_4c
    move-object/from16 v9, v23

    .line 1019
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1020
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v20, v14

    move-object/from16 v1, v16

    goto/16 :goto_24

    :cond_4d
    move-object/from16 v15, v36

    .line 1021
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1022
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v20, v14

    move-object/from16 v1, v16

    goto/16 :goto_25

    :cond_4e
    move-object/from16 v20, v14

    move-object/from16 v14, v39

    .line 1023
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1024
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v13}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_28

    .line 1025
    :cond_4f
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1026
    invoke-virtual {v2, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_50
    :goto_28
    move-object/from16 v1, v16

    .line 1029
    :goto_29
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1030
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1031
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2a

    .line 1032
    :cond_51
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1033
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2a

    .line 1034
    :cond_52
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1035
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2a

    .line 1036
    :cond_53
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1037
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2a

    .line 1038
    :cond_54
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1039
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1040
    :cond_55
    const-string v0, "TimePicker"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1041
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1042
    :cond_56
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1043
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1044
    :cond_57
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1045
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1046
    :cond_58
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1047
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1048
    :cond_59
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1049
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1050
    :cond_5a
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1051
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1052
    :cond_5b
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1053
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2a

    .line 1054
    :cond_5c
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1055
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1057
    :cond_5d
    :goto_2a
    iget v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->isSelfassign:I

    move-object/from16 v16, v2

    if-nez v0, :cond_5e

    const/4 v2, 0x1

    .line 1058
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_5e

    .line 1059
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v0

    if-ne v0, v2, :cond_5e

    .line 1060
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1064
    :cond_5e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    move-object/from16 v25, v6

    iget v6, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    invoke-virtual {v2, v11, v6}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_60

    .line 1065
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41b00000    # 22.0f

    .line 1066
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1067
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0801d2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1069
    invoke-virtual {v0, v13}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 1070
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5f

    .line 1071
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1072
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1074
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1079
    :cond_5f
    new-instance v6, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$5;

    move-object/from16 v13, p5

    invoke-direct {v6, v10, v13}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$5;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2b

    :cond_60
    move-object/from16 v13, p5

    const/4 v2, 0x1

    .line 1096
    :goto_2b
    iget v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationFlag:I

    if-ne v0, v2, :cond_61

    .line 1097
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    .line 1098
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1100
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v6, v20

    goto/16 :goto_2d

    :cond_61
    const/4 v2, 0x2

    if-ne v0, v2, :cond_62

    .line 1103
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1104
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1105
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1106
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1107
    iget v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->layoutId:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1109
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, -0xbbbbbc

    .line 1110
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x4

    .line 1112
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1113
    invoke-virtual {v0, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1114
    new-instance v1, Landroid/widget/Button;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationBtn:Landroid/widget/Button;

    .line 1115
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_getButton()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationBtn:Landroid/widget/Button;

    move-object/from16 v2, p1

    move-object/from16 v6, v20

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1117
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationBtn:Landroid/widget/Button;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 1118
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationBtn:Landroid/widget/Button;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1119
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v2, 0x7f0800c6

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1120
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3ee66666    # 0.45f

    const/4 v8, -0x1

    const/4 v13, -0x2

    invoke-direct {v1, v8, v13, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v2, 0xa

    .line 1121
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1122
    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1124
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p6

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 1126
    iput v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationFlag:I

    .line 1127
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationBtn:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$6;

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$6;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2d

    :cond_62
    move-object v2, v1

    move-object/from16 v6, v20

    move-object/from16 v1, p6

    .line 1137
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_63

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1139
    :try_start_5
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    iget v13, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    invoke-virtual {v8, v13, v11}, Lcom/conceptglobal/pmc/common/Queries;->getVisibilityType(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 1140
    const-string v8, "Visibility"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    const/16 v0, 0x8

    .line 1141
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2c

    :catch_4
    move-exception v0

    .line 1144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1147
    :cond_63
    :goto_2c
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1149
    :goto_2d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mattributesnamesArr:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mForOperations:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1153
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    :cond_64
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1157
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1159
    :cond_65
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1160
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1162
    :cond_66
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1163
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1165
    :cond_67
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1166
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1168
    :cond_68
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1170
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1172
    :cond_69
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1173
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1175
    :cond_6a
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1176
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    :cond_6b
    move-object/from16 v1, v25

    .line 1178
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1179
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1181
    :cond_6c
    const-string v0, "timePicker"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1182
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2e

    .line 1184
    :cond_6d
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1185
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 1187
    :cond_6e
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1188
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v2, v27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 1192
    :cond_6f
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1193
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1194
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    :cond_70
    :goto_2e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_71

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1200
    :try_start_6
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->activityId:I

    invoke-virtual {v1, v2, v11}, Lcom/conceptglobal/pmc/common/Queries;->getVisibilityType(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 1201
    const-string v1, "Visibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    move-object/from16 v1, p5

    .line 1202
    invoke-direct {v10, v1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->makeParentChildVisibility(Lcom/conceptglobal/pmc/model/AttributeModel;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2f

    :catch_5
    move-exception v0

    .line 1205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1208
    :cond_71
    :goto_2f
    iget v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->layoutId:I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 2541
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v0, :cond_2

    if-eq p2, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2551
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2546
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->findCurrentLocation()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    if-ne p2, v1, :cond_5

    const/16 v0, 0x64

    if-eq p1, v0, :cond_4

    const/16 p2, 0x65

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 2563
    :cond_3
    new-instance p1, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    invoke-direct {p1, p2, p3}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CompressListener;)V

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_5

    .line 2568
    const-string p1, "android.speech.extra.RESULTS"

    .line 2569
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2570
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->speachText:Landroid/widget/EditText;

    if-eqz p2, :cond_5

    const/4 p3, 0x0

    .line 2571
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

    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 260
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0c0158

    .line 261
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->setContentView(I)V

    .line 262
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    .line 263
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 264
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 265
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->init()V

    .line 266
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->setListeners()V

    .line 267
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->getData()V

    .line 268
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->setData()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2410
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 2411
    new-instance v7, Landroid/app/TimePickerDialog;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

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

    .line 2384
    :cond_1
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v11, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mYear:I

    iget v12, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mMonth:I

    iget v13, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDay:I

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 2386
    :try_start_0
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->defaultMinDate:J

    .line 2387
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->defaultMaxDate:J

    .line 2388
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2389
    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->datePos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x5

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    const v5, 0x7f100006

    .line 2391
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

    .line 2392
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2393
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2394
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {v6, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 2395
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 2396
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_2
    if-eqz v2, :cond_3

    const v5, 0x7f100005

    .line 2399
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

    .line 2400
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 2401
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2402
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v4, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 2403
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2404
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

    .line 2494
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->farmerId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->dos:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2495
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mDatetext:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 2496
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->dos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2499
    const-string v0, "SurveyAttributesActivity"

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

    .line 2509
    :cond_0
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 2510
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2511
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 p1, 0x0

    .line 2513
    sput-boolean p1, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 2691
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Longitude"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2692
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2693
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2694
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2695
    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 2696
    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 2697
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 2698
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2699
    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 2700
    check-cast v7, Landroid/widget/EditText;

    .line 2701
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2702
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

    .line 2703
    :cond_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2704
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

    .line 2715
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->locationView:Landroid/view/View;

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 2678
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 2349
    :cond_0
    check-cast p2, Landroid/app/DatePickerDialog;

    .line 2351
    :try_start_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 2352
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->datePos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x5

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    const v3, 0x7f100006

    .line 2354
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

    .line 2355
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 2356
    invoke-virtual {v4, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2357
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    neg-int v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 2358
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 2359
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/widget/DatePicker;->setMinDate(J)V

    goto :goto_0

    .line 2361
    :cond_1
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v3

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->defaultMinDate:J

    invoke-virtual {v3, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    :goto_0
    if-eqz v0, :cond_2

    const v3, 0x7f100005

    .line 2364
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

    .line 2365
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2366
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2367
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 2368
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2369
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    goto :goto_1

    .line 2371
    :cond_2
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->defaultMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 2523
    array-length p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2526
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 2528
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->findCurrentLocation()V

    goto :goto_0

    .line 2531
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1911
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1912
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mImageviews:Ljava/util/List;

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

    .line 1914
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v2, :cond_0

    .line 1916
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1919
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1920
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1214
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

    .line 1224
    :goto_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 1225
    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1249
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

    .line 1250
    :try_start_1
    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 1251
    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 1254
    :cond_0
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 1255
    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 1258
    :cond_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v2, :cond_2

    .line 1260
    :try_start_2
    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 1265
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

    .line 1266
    :cond_3
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12

    cmp-long v2, v12, v5

    if-eqz v2, :cond_5

    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 1268
    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 1273
    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1279
    :cond_6
    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 1280
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 1281
    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 1284
    :cond_7
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v2, :cond_8

    .line 1286
    :try_start_4
    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 1291
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

    .line 1292
    :cond_9
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12

    cmp-long v2, v12, v5

    if-eqz v2, :cond_b

    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 1294
    sget-object v2, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 1298
    sget-object v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 1305
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

    .line 2721
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2723
    monitor-enter p0

    .line 2724
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2725
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2728
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

    .line 2731
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

    .line 2725
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
