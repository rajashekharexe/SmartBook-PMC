.class public Lcom/conceptglobal/pmc/fo/AttributesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AttributesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/CropChanger;
.implements Lcom/conceptglobal/pmc/interfaces/ValidatorInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/AttributesActivity$getNeointTokenTask;,
        Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;,
        Lcom/conceptglobal/pmc/fo/AttributesActivity$NumericDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/AttributesActivity$DecimalDigitsInputFilter;,
        Lcom/conceptglobal/pmc/fo/AttributesActivity$MyTimerTask;,
        Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;,
        Lcom/conceptglobal/pmc/fo/AttributesActivity$loadDataTask;
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

.field private static btnStartStop:Landroid/widget/Button;

.field public static ctx:Landroid/content/Context;

.field public static isCapaignCompleatedForDraftActivity:Z

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

.field private btnClose:Landroid/widget/TextView;

.field private btnDiscard:Landroid/widget/TextView;

.field private btnDone:Landroid/widget/TextView;

.field private btnnotDone:Landroid/widget/TextView;

.field campaignCompleateReceiver:Landroid/content/BroadcastReceiver;

.field private campaignsFarmersCount:I

.field campaignsReceiver:Landroid/content/BroadcastReceiver;

.field private campaignsSarthiFarmersCount:I

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

.field private cropAttributeID:I

.field private cropChageListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

.field private cropId:Ljava/lang/String;

.field protected d_remarks:Landroid/app/Dialog;

.field private datePos:I

.field datesListener:Landroid/view/View$OnClickListener;

.field private defaultMaxDate:J

.field private defaultMinDate:J

.field private demoActivity:I

.field dialog:Landroid/app/AlertDialog;

.field private dos:Ljava/lang/String;

.field fab3:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

.field private farmerId:Ljava/lang/String;

.field farmerSelectedReceiver:Landroid/content/BroadcastReceiver;

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

.field fetchLocationCall:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private image1Path:Ljava/lang/String;

.field private imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

.field private imageFile:Ljava/io/File;

.field private imageView:Landroid/widget/ImageView;

.field private imgLastVistDetails:Landroid/widget/ImageView;

.field private isActivityContainsCapaign:Z

.field private isDisplayCount:I

.field private isLoadingDone:Z

.field private isPlanned:I

.field private isRewardsMappedToGeography:Z

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

.field mReceiver_QUANTITY:Landroid/content/BroadcastReceiver;

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

.field private productAttributeID:I

.field private queries:Lcom/conceptglobal/pmc/common/Queries;

.field private ratingBar:Landroid/widget/RatingBar;

.field private remarkNames:[Ljava/lang/String;

.field private remarkids:[Ljava/lang/String;

.field private retailerAttributeID:I

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

.field private tvLastVisitDetails:Landroid/widget/TextView;

.field private tvStartTime:Landroid/widget/TextView;

.field private tvTimer:Landroid/widget/TextView;

.field private updateDOS:Ljava/lang/String;

.field webAppInterface:Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;

.field public webViewFragment:Lcom/conceptglobal/pmc/fragments/WebViewFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 158
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 170
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->layoutId:I

    const/16 v1, 0x64

    .line 201
    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->REQ_CODE_SPEECH_INPUT:I

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->childValuelistAttributes:Ljava/util/List;

    const/4 v1, -0x1

    .line 212
    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForOperations:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForDates:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForTime:I

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mRating:I

    .line 214
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->datePos:I

    .line 215
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->timePos:I

    const-wide/16 v1, -0x1

    .line 219
    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->defaultMinDate:J

    .line 220
    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->defaultMaxDate:J

    .line 228
    const-string v1, ""

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mFiledStr:Ljava/lang/String;

    .line 232
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationFlag:I

    .line 246
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    .line 248
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEditIds:Ljava/util/Map;

    const/4 v2, 0x0

    .line 259
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    .line 261
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    .line 286
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->countVillage:I

    .line 292
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    .line 300
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->textChanged:Ljava/lang/String;

    .line 315
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmersList:Ljava/util/ArrayList;

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->namesList:Ljava/util/ArrayList;

    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmersMobileList:Ljava/util/ArrayList;

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmersNameList:Ljava/util/ArrayList;

    .line 320
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->campaignsFarmersCount:I

    .line 321
    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->campaignsSarthiFarmersCount:I

    .line 337
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->fetchLocationCall:Ljava/lang/String;

    .line 3036
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$15;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->operationListener:Landroid/view/View$OnClickListener;

    .line 3202
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    .line 3442
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$17;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$17;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->datesListener:Landroid/view/View$OnClickListener;

    .line 3450
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$18;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$18;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->timesListener:Landroid/view/View$OnClickListener;

    .line 3605
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$25;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$25;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 3625
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$26;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$26;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 3779
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$27;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$27;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    .line 4019
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$30;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$30;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4026
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$31;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$31;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mReceiver_QUANTITY:Landroid/content/BroadcastReceiver;

    .line 4032
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$32;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$32;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->campaignCompleateReceiver:Landroid/content/BroadcastReceiver;

    .line 4038
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$33;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$33;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->campaignsReceiver:Landroid/content/BroadcastReceiver;

    .line 4051
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$34;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$34;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerSelectedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private LaunchCapaignPage(Z)V
    .locals 8

    .line 583
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    const-string v3, "campaignID"

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    .line 588
    sget-object v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 591
    :cond_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->campaignID:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    :goto_0
    const-string v1, "IsAppover"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    const-string v1, "IsLotteryEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 595
    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    const-string p1, "transId"

    const-string v1, ""

    cmp-long v3, v6, v4

    if-lez v3, :cond_1

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 598
    :cond_1
    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    if-lez v3, :cond_2

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 601
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ActivityAssignmentId"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    if-lez v2, :cond_3

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 604
    :cond_3
    sget v2, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->currentActivityAssignmentId:I

    if-lez v2, :cond_d

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->currentActivityAssignmentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    :goto_1
    const-string p1, "activityName"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityName:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->cropAttributeID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->cropAttributeID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 615
    const-string p1, "Crop"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->cropAttributeID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->cropAttributeID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->cropAttributeID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 618
    const-string p1, "Product"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->productAttributeID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->retailerAttributeID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->retailerAttributeID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 621
    const-string p1, "RetailerName"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->retailerAttributeID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f100002

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->retailerAttributeID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const-string p1, "RetailerContactID"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->retailerAttributeID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f100001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    iget v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->retailerAttributeID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v1

    :goto_3
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :catch_0
    :cond_8
    :try_start_1
    iget p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->segmentId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    const-string v3, "VillageName || \'-\' || MandalName as VillageName"

    if-ne p1, v2, :cond_9

    .line 629
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "FarmerMaster"

    const-string v4, "RespondentNo"

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getVillageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    const/4 v2, 0x3

    if-ne p1, v2, :cond_b

    .line 631
    :cond_a
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "DealerMaster"

    const-string v4, "ContactId"

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getVillageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 632
    :cond_b
    :goto_4
    iget p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->segmentId:I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_c

    .line 633
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getVillageNameFromVillageMaster(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 635
    :cond_c
    const-string p1, "Location"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 650
    :catch_1
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 607
    :cond_d
    const-string p1, "Something went wrong please perform activity again."

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->showErrorAlertDialog(Ljava/lang/String;)V

    return-void

    .line 652
    :cond_e
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseCheckDataError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->showAlert(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isLoadingDone:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    return p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivity;Z)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->LaunchCapaignPage(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isRewardsMappedToGeography:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/lang/String;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->showRewardsConformationAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500()Ljava/util/List;
    .locals 1

    .line 158
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->namesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->namesList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/util/ArrayList;Landroid/widget/EditText;I)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setAutoCompleteAdapter(Ljava/util/ArrayList;Landroid/widget/EditText;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/lang/String;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000()I
    .locals 1

    .line 158
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->assignmentID:I

    return p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/EditText;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->lastSelectedView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->lastSelectedView:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->lastSelectedid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->lastSelectedid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Lcom/conceptglobal/pmc/model/AttributeModel;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->lastSelectedattributeModel:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/conceptglobal/pmc/fo/AttributesActivity;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->lastSelectedattributeModel:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->countVillage:I

    return p0
.end method

.method static synthetic access$2602(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)I
    .locals 0

    .line 158
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->countVillage:I

    return p1
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getFarmersList(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Ljava/util/HashMap;)V
    .locals 0

    .line 158
    invoke-direct/range {p0 .. p5}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->cropAttributeID:I

    return p0
.end method

.method static synthetic access$3002(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->findCurrentLocation()V

    return-void
.end method

.method static synthetic access$3200()Ljava/util/List;
    .locals 1

    .line 158
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArrIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->findModelPosition(Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3510(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I
    .locals 2

    .line 158
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForOperations:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForOperations:I

    return v0
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/List;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mattributesnamesArr:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)Ljava/util/List;
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->filterAttributesByFilterAttribute(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->segmentId:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ismba:I

    return p0
.end method

.method static synthetic access$4102(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)I
    .locals 0

    .line 158
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->datePos:I

    return p1
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->timePos:I

    return p0
.end method

.method static synthetic access$4202(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)I
    .locals 0

    .line 158
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->timePos:I

    return p1
.end method

.method static synthetic access$4302(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)I
    .locals 0

    .line 158
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mYear:I

    return p1
.end method

.method static synthetic access$4402(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)I
    .locals 0

    .line 158
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$4502(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)I
    .locals 0

    .line 158
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDay:I

    return p1
.end method

.method static synthetic access$4600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->updateDisplay()V

    return-void
.end method

.method static synthetic access$4700(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->loadAttributes(I)V

    return-void
.end method

.method static synthetic access$4902(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->speachText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/content/Context;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->promptSpeechInput()V

    return-void
.end method

.method static synthetic access$5100(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->campaignsFarmersCount:I

    return p0
.end method

.method static synthetic access$5102(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)I
    .locals 0

    .line 158
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->campaignsFarmersCount:I

    return p1
.end method

.method static synthetic access$5202(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)I
    .locals 0

    .line 158
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->campaignsSarthiFarmersCount:I

    return p1
.end method

.method static synthetic access$5300(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->updateFarmerCountField()V

    return-void
.end method

.method static synthetic access$5400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->bindFarmerExpenditure()V

    return-void
.end method

.method static synthetic access$5500(Lcom/conceptglobal/pmc/fo/AttributesActivity;Z)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->sendWebPageLoadStatus(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->loadData()V

    return-void
.end method

.method static synthetic access$5700(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/TextView;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->tvTimer:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getNeointToken()V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEditIds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700()Ljava/util/List;
    .locals 1

    .line 158
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->listAttributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->productAttributeID:I

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity;)J
    .locals 2

    .line 158
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    return-wide v0
.end method

.method private addDynamicLayoutVillageDetails(IILandroid/widget/LinearLayout;)V
    .locals 19

    move-object/from16 v9, p0

    .line 2771
    new-instance v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>()V

    const/4 v11, 0x0

    .line 2774
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    sget v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    move/from16 v4, p2

    invoke-virtual {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getSelectedAttributeQueryUpdate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->AlertlistAttributes:Ljava/util/List;

    .line 2775
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2776
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 2781
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2782
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2785
    :cond_0
    const-string v0, ""

    move/from16 v12, p1

    move-object v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v12, :cond_4

    .line 2786
    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v3, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v13, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 2787
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 2788
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2789
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2790
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v14, 0xa

    .line 2791
    invoke-virtual {v13, v11, v11, v11, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2792
    iget v3, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->layoutId:I

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 2797
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, -0xbbbbbc

    .line 2798
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2799
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v1, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2801
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    .line 2802
    :goto_1
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 2803
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->AlertlistAttributes:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2805
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->childValuelistAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2807
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2808
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_2

    :cond_1
    move-object/from16 v16, v0

    goto :goto_2

    :cond_2
    move-object/from16 v16, v2

    .line 2815
    :goto_2
    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object v6, v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    move-object v7, v13

    move/from16 v18, v8

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V

    add-int/lit8 v8, v18, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    .line 2818
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2819
    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v3, p3

    .line 2821
    invoke-virtual {v3, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v15

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private bindDemoValues()V
    .locals 10

    .line 4492
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "DemoAttributeCostFilterValue"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 4494
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v1, 0x26

    const-string v2, ""

    if-ne v0, v1, :cond_0

    .line 4495
    :try_start_1
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 4496
    :goto_0
    sget v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    const/16 v3, 0x29

    if-ne v1, v3, :cond_1

    .line 4497
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 4498
    :cond_1
    sget v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_2

    .line 4499
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 4500
    :cond_2
    sget v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_3

    .line 4501
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 4504
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityExpenseAmountQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 4505
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityBrandQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4506
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityBrandIdQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4507
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityProtocolPlotSizeQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4508
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

    .line 4511
    :try_start_2
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

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

    .line 4516
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

    .line 4517
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4518
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    .line 4519
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_5

    .line 4520
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    aget-object v8, v1, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4521
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

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

    .line 4522
    sget-object v7, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEditIds:Ljava/util/Map;

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

    .line 4531
    :catch_1
    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

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

    .line 4536
    :catch_2
    :try_start_5
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

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

    .line 4545
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerDemoAmountQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 4546
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

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

    .line 3420
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 3421
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

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageFile:Ljava/io/File;

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 3423
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->image1Path:Ljava/lang/String;

    .line 3426
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3428
    const-string v0, "com.conceptglobal.pmcdeepakfertilizers.provider"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageFile:Ljava/io/File;

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 3432
    const-string v1, "output"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3434
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 3435
    const-string v2, ""

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v2, 0x3

    .line 3436
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3438
    :cond_1
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3439
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private checkImagesInDBandDelete()V
    .locals 6

    .line 2978
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2986
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ImageDetails;

    .line 2988
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

    .line 2990
    const-string v2, "AttributesActivity"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearStaticvalues()V
    .locals 3

    .line 469
    const-string v0, ""

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->starttimeMobile:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 470
    sput-wide v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->starttimeMobileMillis:J

    .line 471
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->stopTimeMobile:Ljava/lang/String;

    .line 472
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->startTimeGPS:Ljava/lang/String;

    .line 473
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->stopTimeGPS:Ljava/lang/String;

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

    .line 2761
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2762
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2763
    new-instance v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {v2, v1}, Lcom/conceptglobal/pmc/model/AttributeModel;-><init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private doDiscardOperation()V
    .locals 6

    .line 3389
    const-string v0, "AttributesActivity"

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    sget v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    iget v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDiscardForActivities(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3392
    :try_start_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 3393
    const-string v2, "2"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3395
    :try_start_2
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3396
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 3400
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3403
    :goto_0
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3404
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3405
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 3407
    sput-boolean v0, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    .line 3408
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3409
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3411
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->btnnotDone:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private fetchLocation(Z)V
    .locals 3

    .line 4275
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4276
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p1, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 4279
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$39;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$39;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    const-string v2, "AttributesActivity"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4301
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

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

    .line 2955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2957
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->listAttributes:Ljava/util/List;

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

    .line 2958
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2959
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

    .line 2962
    const-string v1, "AttributesActivity"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_2
    return-object v0
.end method

.method private findCurrentLocation()V
    .locals 4

    .line 3791
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3792
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 3795
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$28;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$28;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    const-string v2, "AttributesActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3815
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

    .line 2663
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2666
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
    .locals 8

    .line 815
    const-string v0, "From"

    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 816
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 817
    const-string v3, "MODELCLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->assignmentDetails:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 818
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ismba:I

    .line 819
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    .line 820
    const-string v2, "ISSELFASSIGN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isSelfassign:I

    .line 821
    const-string v2, "SEGMENTID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->segmentId:I

    .line 822
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    .line 823
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isPlanned:I

    .line 824
    const-string v2, "ACTIVITYNAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityName:Ljava/lang/String;

    .line 825
    const-string v2, "ActivityAssignmentId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    .line 826
    const-string v2, "TRANSID"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    .line 827
    const-string v2, "AssignmentId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->assignmentID:I

    .line 828
    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->from:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    const/4 v0, 0x1

    .line 842
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getIsCampaignRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 843
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    sget v7, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getCampaignConfiguration(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_1

    if-ne v1, v0, :cond_1

    .line 844
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->fab3:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    invoke-virtual {v1, v3}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    .line 845
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isActivityContainsCapaign:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 850
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 855
    :cond_1
    :goto_0
    :try_start_3
    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    cmp-long v3, v1, v4

    if-lez v3, :cond_2

    .line 860
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getCampaignID(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 866
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getCampaignIDToDo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 869
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 870
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->fab3:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    .line 871
    sput-boolean v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isCapaignCompleatedForDraftActivity:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 875
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 879
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private getFarmersList(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 4

    .line 2676
    const-string v0, "Count"

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2678
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    .line 2679
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    .line 2678
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2680
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    .line 2681
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ismba:I

    .line 2680
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2682
    const-string v2, "SEGMENTID"

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->segmentId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2683
    const-string v2, "ISSELFASSIGN"

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isSelfassign:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2684
    const-string v2, "ParentAttributeId"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2685
    const-string p2, "AssignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->assignmentID:I

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2686
    const-string p2, "ActivityAssignmentId"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2687
    const-string p2, "TRANSID"

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    invoke-virtual {v1, p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2688
    const-string p2, "DISPLAYTYPE"

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2690
    const-string p2, "FromSelfAssignment"

    const/4 p3, 0x1

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2691
    const-string p2, "farmerType"

    const-string p3, "Farmer"

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2692
    const-string p2, "SourceQry"

    invoke-virtual {p4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2694
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

    .line 2697
    :catch_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2700
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    .line 2702
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    .line 2700
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2703
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    .line 2705
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isPlanned:I

    .line 2703
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x3e9

    .line 2707
    invoke-virtual {p0, v1, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private getNeointToken()V
    .locals 6

    .line 4384
    const-string v0, "password"

    .line 4385
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 4386
    sget-object v1, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->PMCDUAT:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/InstanceConfig;->getInstance(Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;)Lcom/conceptglobal/pmc/utils/InstanceConfig;

    move-result-object v1

    goto :goto_0

    .line 4388
    :cond_0
    sget-object v1, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->pmcdlive:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/InstanceConfig;->getInstance(Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;)Lcom/conceptglobal/pmc/utils/InstanceConfig;

    move-result-object v1

    .line 4391
    :goto_0
    new-instance v2, Lokhttp3/FormBody$Builder;

    invoke-direct {v2}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v3, "username"

    .line 4392
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/Queries;->getEmployeeID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v2

    .line 4393
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getPasswordQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v2

    const-string v3, "grant_type"

    .line 4395
    invoke-virtual {v2, v3, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v2, "client_id"

    iget-object v3, v1, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientId:Ljava/lang/String;

    .line 4396
    invoke-virtual {v0, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v2, "client_secret"

    iget-object v3, v1, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientSecret:Ljava/lang/String;

    .line 4397
    invoke-virtual {v0, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v2, "scope"

    const-string v3, "Neoint roles address hubs print transaction offline_access profile openid"

    .line 4399
    invoke-virtual {v0, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    .line 4400
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    .line 4401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/conceptglobal/pmc/utils/InstanceConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/utils/InstanceConfig;->neointIdentityService:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/identity/connect/token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4402
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendNeointRequest(Lokhttp3/RequestBody;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4403
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4404
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4405
    const-string v0, "access_token"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "api/fetchRewardsWithTokenZrt"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4407
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendNeointGetRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4408
    const-string v1, "response 2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4410
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4413
    const-string v0, "responseData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4418
    const-string v1, "TotalRecords"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 4419
    const-string v1, "RewardDetails"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 4421
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 4422
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isRewardsMappedToGeography:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 4428
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method private init()V
    .locals 2

    .line 494
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->cropChageListener:Lcom/conceptglobal/pmc/interfaces/CropChanger;

    .line 496
    sput-object p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ctx:Landroid/content/Context;

    const v0, 0x7f0902bd

    .line 501
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const v0, 0x7f090050

    .line 502
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->textActivityName:Landroid/widget/TextView;

    const v0, 0x7f090232

    .line 510
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->atrrributesView:Landroid/widget/ScrollView;

    const v0, 0x7f090493

    .line 513
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->tvTimer:Landroid/widget/TextView;

    const v0, 0x7f09008a

    .line 514
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->btnStartStop:Landroid/widget/Button;

    .line 515
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090395

    .line 516
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->rlTimerView:Landroid/widget/RelativeLayout;

    const v0, 0x7f090600

    .line 517
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    .line 518
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->updateDOS:Ljava/lang/String;

    .line 519
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    .line 520
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 523
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 524
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 525
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 527
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->timer:Ljava/util/Timer;

    const v0, 0x7f0901e2

    .line 529
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->fab3:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 530
    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    sget-boolean v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->isRestoredActivity:Z

    if-eqz v0, :cond_1

    .line 575
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->btnStartStop:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 576
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :cond_1
    return-void
.end method

.method private initWebViews()V
    .locals 4

    .line 477
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    const/16 v1, 0x613

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->atrrributesView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 479
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 480
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->loadData()V

    goto :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->atrrributesView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 483
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private loadAttributes(I)V
    .locals 9

    .line 912
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/common/Queries;->getRuleDetails(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRuleAttributeIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    .line 913
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    sget v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->listAttributes:Ljava/util/List;

    .line 914
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 917
    :cond_0
    :goto_0
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 918
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 923
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 928
    const-string v0, "AttributesActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private loadData()V
    .locals 5

    .line 4099
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4100
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$35;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$35;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4118
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$36;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$36;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4129
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 4130
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webAppInterface:Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;

    .line 4131
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4135
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    const/16 v1, 0x56a

    const-string v2, "&transId="

    const-string v3, "?pdaid="

    if-ne v0, v1, :cond_0

    .line 4136
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlDistributorVisit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x567

    if-ne v0, v1, :cond_1

    .line 4138
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlRetailerVisit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x613

    if-ne v0, v1, :cond_4

    .line 4140
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlPOG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 4142
    :cond_2
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 4144
    :try_start_0
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 4147
    :goto_0
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4148
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 4150
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 4152
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 4153
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4154
    const-string v1, "You are not connected to internet! \nClick on OK, to continue and complete the visit."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4155
    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$37;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$37;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    const/4 v2, -0x2

    const-string v3, "Retry"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4162
    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$38;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$38;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    const/4 v2, -0x1

    const-string v3, "Ok"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4169
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_4
    :goto_1
    return-void
.end method

.method private makeParentChildVisibility(Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 9

    .line 4306
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 4308
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    sget v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getParentAttributeIdDraft(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 4310
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    sget v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    invoke-virtual {v2, v3, v0}, Lcom/conceptglobal/pmc/common/Queries;->getRuleParentAttrValueId(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 4311
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEditIds:Ljava/util/Map;

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

    if-ne v1, v2, :cond_5

    .line 4312
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    sget v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    sget-object v4, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArrIds:Ljava/util/List;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEditIds:Ljava/util/Map;

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

    if-eqz v0, :cond_5

    .line 4313
    const-string v1, "Visibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4316
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 4319
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4320
    move-object v4, v3

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

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

    if-eqz v3, :cond_4

    .line 4322
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4323
    sget-object v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4324
    sget-object v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4325
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v3

    const/4 v4, 0x2

    const/16 v6, 0x8

    const v7, 0x7f100009

    if-ne v3, v4, :cond_2

    .line 4326
    sget v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    const/16 v4, 0x49

    if-ne v3, v4, :cond_4

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x3c5

    if-ne v3, v4, :cond_4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    .line 4328
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4329
    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v8, 0x3be

    if-ne v4, v8, :cond_1

    .line 4331
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4332
    sget-object v4, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4337
    :cond_2
    sget v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    const/16 v4, 0x50

    if-ne v3, v4, :cond_4

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v4, 0x3c2

    if-ne v3, v4, :cond_4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    .line 4339
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4340
    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v8, 0x3c3

    if-ne v4, v8, :cond_3

    .line 4342
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAddDynamicLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4343
    sget-object v4, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 4354
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public static methodToGetData(Landroid/content/Context;)V
    .locals 3

    .line 3946
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    const/16 v1, 0x613

    if-ne v0, v1, :cond_0

    .line 3948
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "checkValidation();"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 3953
    :cond_0
    check-cast p0, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;

    .line 3954
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->listAttributes:Ljava/util/List;

    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArrIds:Ljava/util/List;

    invoke-interface {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/interfaces/AttributeEventListener;->GetData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static methodToGetTimeerData(Landroid/content/Context;Z)Lcom/conceptglobal/pmc/model/TimeDetails;
    .locals 0

    .line 3958
    sget-object p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->stopTimeMobile:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    .line 3959
    :cond_0
    sget-object p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->performClick()Z

    .line 3961
    :cond_1
    new-instance p0, Lcom/conceptglobal/pmc/model/TimeDetails;

    invoke-direct {p0}, Lcom/conceptglobal/pmc/model/TimeDetails;-><init>()V

    .line 3962
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->starttimeMobile:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/TimeDetails;->setMobileStartTime(Ljava/lang/String;)V

    .line 3963
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->stopTimeMobile:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/TimeDetails;->setMobileEndTime(Ljava/lang/String;)V

    .line 3964
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->startTimeGPS:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/TimeDetails;->setGPSStartTime(Ljava/lang/String;)V

    .line 3965
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->stopTimeGPS:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/TimeDetails;->setGPSEndTime(Ljava/lang/String;)V

    return-object p0
.end method

.method private prepareCampaignDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .line 720
    const-string v0, "PMC"

    const-string v1, ""

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 722
    :try_start_0
    const-string v3, "ParentApp"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    const-string v3, "CampignActivityId"

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 724
    const-string v3, "CampaignSource"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    const-string v0, "_id"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    const-string v0, "CampaignTitle"

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    const-string v0, "CampaignDescription"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string v0, "CampaignStatus"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    const-string v0, "CampaignProfileImage"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    const-string v0, "CampignLatLong"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    const-string v0, "CampignLocation"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    const-string p1, "CampignSubLocation"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    const-string p1, "CampignSubLocationLatLong"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 734
    const-string p1, "CampaignStartDate"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 735
    const-string p1, "CampaignEndDate"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    const-string p1, "VMNType"

    const-string v0, "Call"

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    const-string p1, "CampaignScheduleDate"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    const-string p1, "CampaignScheduleTime"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 753
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 754
    array-length v0, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "NeoIntId"

    if-ge v4, v0, :cond_0

    :try_start_1
    aget-object v6, p3, v4

    .line 755
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 756
    invoke-virtual {v7, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 757
    const-string v5, "displayName"

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 758
    const-string v5, "Product Name"

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 759
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 762
    :cond_0
    const-string p3, "CampaignProductProfile"

    invoke-virtual {v2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 766
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 767
    invoke-virtual {p3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    const-string v0, "Crop Name"

    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 769
    const-string p2, "Crop Code"

    invoke-virtual {p3, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 770
    const-string p2, "CropId"

    invoke-virtual {p3, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 772
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 773
    const-string p2, "CampaignCrops"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 776
    const-string p1, "HasApprovals"

    const-string p2, "No"

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 778
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 779
    const-string p2, "Moments"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 781
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 782
    const-string p2, "Zone"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 783
    const-string p2, "Region"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 784
    const-string p2, "Territory"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 786
    const-string p2, "ESADetails"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    const-string p1, "LotteryFlag"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 789
    const-string p1, "DiscountFlag"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v2
.end method

.method private promptSpeechInput()V
    .locals 3

    .line 3983
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3984
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3986
    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const v1, 0x7f1002a8

    .line 3988
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3987
    const-string v2, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 3990
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3992
    :catch_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1002a7

    .line 3993
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3992
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3994
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private sendWebPageLoadStatus(Z)V
    .locals 2

    .line 4180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "DataSaved"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4183
    const-string v1, "IsDisplayOthersTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4184
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private setAttributeIdsFromconfiguration()V
    .locals 8

    .line 449
    const-string v0, ""

    const-string v1, ","

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v4, "CampaignCropId"

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 450
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    const-string v5, "CampaignBrandId"

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 451
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    const-string v6, "CampaignRetailerId"

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    .line 452
    :goto_0
    sget-object v5, Lcom/conceptglobal/pmc/fo/AttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 453
    sget-object v5, Lcom/conceptglobal/pmc/fo/AttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 455
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->cropAttributeID:I

    .line 457
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 458
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->productAttributeID:I

    .line 460
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 461
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    iput v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->retailerAttributeID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_3
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

    .line 1996
    new-instance p3, Landroid/widget/ArrayAdapter;

    const v0, 0x7f0c00cf

    invoke-direct {p3, p0, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1999
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2007
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->dismissProgressDialog()V

    .line 2009
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance p3, Lcom/conceptglobal/pmc/fo/AttributesActivity$12;

    invoke-direct {p3, p0, p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity$12;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2021
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    new-instance p3, Lcom/conceptglobal/pmc/fo/AttributesActivity$13;

    invoke-direct {p3, p0, p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity$13;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setData()V
    .locals 3

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mattributesnamesArr:Ljava/util/List;

    .line 891
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArrIds:Ljava/util/List;

    .line 894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mImageviews:Ljava/util/List;

    .line 895
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->textActivityName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->loadAttributes(I)V

    const/4 v0, 0x1

    .line 897
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isLoadingDone:Z

    .line 898
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    .line 899
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDay:I

    const/4 v2, 0x2

    .line 900
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mMonth:I

    .line 901
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mYear:I

    return-void
.end method

.method private setDate(I)V
    .locals 2

    .line 3655
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3656
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3658
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3660
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3662
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3663
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mFiledStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->updateDOS:Ljava/lang/String;

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 2970
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2971
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 2972
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2973
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setFieldDataEmpty(IZ)V
    .locals 2

    .line 4090
    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 4092
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArrIds:Ljava/util/List;

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

    .line 3999
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$29;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity$29;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;)V

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

    .line 2722
    const-string p4, "Count"

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/AudianceChildAttributeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2723
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    .line 2724
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    .line 2723
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2725
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    .line 2726
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ismba:I

    .line 2725
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2727
    const-string v1, "SEGMENTID"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->segmentId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2728
    const-string v1, "ISSELFASSIGN"

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isSelfassign:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2729
    const-string v1, "ParentAttributeId"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2730
    const-string p2, "AssignmentId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->assignmentID:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2731
    const-string p2, "ActivityAssignmentId"

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2732
    const-string p2, "TRANSID"

    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2733
    const-string p2, "DISPLAYTYPE"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2734
    const-string p2, "FarmersData"

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2735
    const-string p2, "FromSelfAssignment"

    const/4 p3, 0x1

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2736
    const-string p2, "farmerType"

    const-string p3, "Farmer"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2738
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

    .line 2741
    :catch_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2744
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    .line 2746
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    .line 2744
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2747
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    .line 2749
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isPlanned:I

    .line 2747
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x20000

    .line 2751
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x4000000

    .line 2753
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x3

    .line 2751
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    .line 702
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 703
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 710
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 711
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 3461
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3462
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3463
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity$19;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$19;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3469
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->dialog:Landroid/app/AlertDialog;

    .line 3470
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3471
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->dialog:Landroid/app/AlertDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_1
    return-void
.end method

.method private showErrorAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 4478
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4479
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity$40;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$40;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4487
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 2940
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2941
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$14;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$14;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2947
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2948
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2949
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showRewardsApprovalAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 3515
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3516
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity$24;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$24;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3522
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity$23;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$23;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3528
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3529
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3530
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showRewardsConformationAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 3491
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3492
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_yesText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity$22;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$22;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3500
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity$21;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$21;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3509
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3510
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3511
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showTimeSettingsAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 3477
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3478
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

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity$20;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$20;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3485
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3486
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3487
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 3668
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mFiledStr:Ljava/lang/String;

    .line 3669
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3671
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3673
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3675
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->datePos:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setDate(I)V

    return-void
.end method

.method private updateFarmerCountField()V
    .locals 4

    .line 4063
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    const/16 v1, 0x370

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4064
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 4066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->campaignsFarmersCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4069
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    const/16 v1, 0x28e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4070
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 4072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->campaignsSarthiFarmersCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    .locals 63

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    .line 941
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForOperations:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForOperations:I

    .line 942
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForDates:I

    add-int/2addr v0, v9

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForDates:I

    .line 943
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForTime:I

    add-int/2addr v0, v9

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForTime:I

    .line 944
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mRating:I

    add-int/2addr v0, v9

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mRating:I

    .line 947
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 948
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 949
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 950
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    .line 1182
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x2

    .line 950
    invoke-direct {v0, v7, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v3, 0xa

    const/4 v2, 0x4

    .line 951
    invoke-virtual {v0, v3, v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 952
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 953
    invoke-virtual {v8, v6, v6, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 954
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->layoutId:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 959
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, -0xbbbbbc

    .line 960
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 961
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v2, 0x0

    .line 974
    iput-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    .line 979
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$3;

    invoke-direct {v0, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    .line 1003
    new-instance v9, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1004
    const-string v2, "Dropdown"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v18, v9

    const-string v9, "Rating"

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

    const v3, 0x7f080096

    const v5, 0x7f07017d

    const-string v9, ""

    move-object/from16 v26, v9

    const/16 v9, 0x11

    if-eqz v2, :cond_a

    .line 1005
    new-instance v4, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1006
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1007
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForOperations:I

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setId(I)V

    .line 1008
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1010
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1011
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1012
    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1013
    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f0800d8

    .line 1014
    invoke-virtual {v4, v6, v6, v0, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1015
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v27

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v29

    const/16 v31, 0x0

    move-object v5, v1

    move-object v1, v0

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-object v3, v4

    move-object/from16 v33, v4

    move-object/from16 v32, v5

    move-wide/from16 v4, v27

    move-wide/from16 v6, v29

    move-object v15, v8

    move-object/from16 v8, p5

    move-object/from16 v16, v15

    move-object/from16 v15, v18

    move-object/from16 v34, v19

    move-object/from16 v35, v20

    move-object/from16 v36, v21

    move-object/from16 v37, v22

    move-object/from16 v38, v23

    move-object/from16 v39, v24

    move-object/from16 v13, v25

    move-object/from16 v11, v26

    const v12, 0x7f100009

    move-object/from16 v9, v31

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity$1;)V

    move-object/from16 v9, v33

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1016
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1017
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_3

    .line 1021
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

    .line 1022
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->cropId:Ljava/lang/String;

    .line 1023
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

    .line 1025
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1028
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

    .line 1031
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

    .line 1034
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1041
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

    .line 1044
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1042
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

    .line 1049
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 1056
    :cond_6
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKey(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    move-object v0, v11

    :goto_2
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1050
    :cond_8
    :goto_3
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1051
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownValueKeyDefault(Lcom/conceptglobal/pmc/model/AttributeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1053
    :cond_9
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1061
    :goto_4
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;

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

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity$1;)V

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move/from16 v3, p3

    move-object/from16 v25, v13

    move-object/from16 v18, v15

    move-object/from16 v60, v34

    move-object/from16 v61, v35

    move-object/from16 v58, v37

    move-object/from16 v57, v38

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v4, 0x4

    const/16 v20, 0x2

    move-object v15, v11

    move-object v13, v12

    move-object/from16 v12, p2

    goto/16 :goto_29

    :cond_a
    move-object/from16 v32, v1

    move-object/from16 v16, v8

    move-object/from16 v15, v18

    move-object/from16 v34, v19

    move-object/from16 v35, v20

    move-object/from16 v36, v21

    move-object/from16 v37, v22

    move-object/from16 v38, v23

    move-object/from16 v39, v24

    move-object/from16 v13, v25

    move-object/from16 v11, v26

    const v9, 0x7f100009

    .line 1063
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1065
    new-instance v8, Landroid/widget/EditText;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 1066
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1067
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1068
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForOperations:I

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setId(I)V

    .line 1069
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1070
    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1071
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    const/16 v7, 0x11

    .line 1072
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setGravity(I)V

    const v0, 0x7f0800d8

    .line 1073
    invoke-virtual {v8, v6, v6, v0, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1074
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->operationListenerMultiSelect:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v17

    const/16 v19, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v8

    move-wide/from16 v6, v17

    move-object/from16 v25, v13

    move-object v13, v8

    move-object/from16 v8, p5

    move-object/from16 v26, v11

    const v11, 0x7f100009

    move-object/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity$1;)V

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1076
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v11, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    const/16 v0, 0x2b0

    move/from16 v9, p3

    move-object/from16 v8, v25

    if-ne v9, v0, :cond_b

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 1080
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v40

    .line 1081
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v43

    const-string v45, ""

    const-string v46, ""

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v47

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    sget v49, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v51

    const-string v52, ""

    iget-wide v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    move-object/from16 v48, v1

    move/from16 v50, v2

    move-wide/from16 v53, v3

    .line 1080
    invoke-virtual/range {v40 .. v54}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamicWithSourceQry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 1082
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1083
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v11, 0x0

    :try_start_2
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 1084
    :goto_5
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_c

    .line 1085
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/BrandsModel;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/BrandsModel;->setBrandSelected(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    const/4 v11, 0x0

    .line 1089
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_b
    const/4 v11, 0x0

    .line 1099
    :cond_c
    :goto_7
    :try_start_3
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v0, :cond_13

    const/16 v0, 0x2b0

    if-eq v9, v0, :cond_d

    .line 1104
    :try_start_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    .line 1105
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    sget v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v5, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    iget-wide v6, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->transId:J

    move-object/from16 v4, p5

    invoke-virtual/range {v1 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssociatedDataQry(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;IJ)Ljava/lang/String;

    move-result-object v1

    .line 1104
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    .line 1106
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    sget v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    invoke-virtual {v1, v2, v9}, Lcom/conceptglobal/pmc/common/Queries;->getMultiSelectCountDisplayValue(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isDisplayCount:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 1109
    :try_start_5
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1112
    :cond_d
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1115
    :goto_9
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_10

    .line 1117
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandSelected()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1118
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v4, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_e

    .line 1121
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    :cond_e
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1130
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1133
    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isDisplayCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 1134
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

    invoke-virtual {v13, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f100002

    .line 1135
    invoke-virtual {v13, v2, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_a

    .line 1137
    :cond_11
    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    :goto_a
    invoke-virtual {v15, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 1143
    :cond_12
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 1146
    :cond_13
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    .line 1149
    const-string v1, "AttributesActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    move-object/from16 v25, v8

    move v3, v9

    move-object/from16 v18, v15

    move-object/from16 v15, v26

    move-object/from16 v60, v34

    move-object/from16 v61, v35

    move-object/from16 v58, v37

    move-object/from16 v57, v38

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v4, 0x4

    const/16 v20, 0x2

    goto/16 :goto_29

    :cond_14
    move/from16 v9, p3

    move-object/from16 v26, v11

    move-object v8, v13

    move-object/from16 v13, v39

    const/4 v6, 0x0

    const v11, 0x7f100009

    .line 1151
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v7, "0"

    if-eqz v1, :cond_1b

    .line 1152
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    .line 1153
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1154
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForDates:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 1155
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1156
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1157
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1158
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1159
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1161
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    new-instance v3, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v17

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v19

    const/16 v21, 0x0

    move-object v1, v3

    move-object/from16 v22, v2

    move-object/from16 v2, p0

    move-object v11, v3

    move-object/from16 v3, v22

    move-object/from16 v55, v4

    move-wide/from16 v4, v17

    move-object/from16 v56, v7

    move-wide/from16 v6, v19

    move-object/from16 v39, v13

    move-object v13, v8

    move-object/from16 v8, p5

    move-object/from16 v25, v13

    move v13, v9

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity$1;)V

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1162
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100009

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1164
    :try_start_6
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->cropId:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->cropId:Ljava/lang/String;

    move-object/from16 v11, v56

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1165
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->cropId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->dos:Ljava/lang/String;

    .line 1167
    :cond_15
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->dos:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    .line 1168
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->dos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 1169
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

    .line 1170
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 1172
    :cond_17
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

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
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    .line 1175
    const-string v1, "Attribute"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1178
    :goto_c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1179
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1180
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    :cond_18
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    const v1, 0x7f100006

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1183
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    const v1, 0x7f100005

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1184
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_19

    .line 1185
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100006

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1186
    :cond_19
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    .line 1187
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    :cond_1a
    move v3, v13

    move-object/from16 v18, v15

    goto/16 :goto_e

    :cond_1b
    move-object v11, v7

    move-object/from16 v25, v8

    move-object/from16 v39, v13

    move v13, v9

    .line 1189
    const-string v1, "TimePicker"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1190
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    .line 1191
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1192
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForTime:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 1193
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1194
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1195
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    const/16 v11, 0x11

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setGravity(I)V

    .line 1196
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1197
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->timesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1198
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1199
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    new-instance v8, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v6

    const/16 v17, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v11, v8

    move-object/from16 v8, p5

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity$1;)V

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1200
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100009

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1201
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 1202
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1204
    :cond_1c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectTimeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_d
    move v3, v13

    :goto_e
    move-object/from16 v15, v26

    move-object/from16 v60, v34

    move-object/from16 v61, v35

    move-object/from16 v58, v37

    move-object/from16 v57, v38

    :goto_f
    const/16 v2, 0xa

    const/4 v4, 0x4

    const/16 v19, 0x0

    :goto_10
    const/16 v20, 0x2

    goto/16 :goto_28

    :cond_1d
    move-object/from16 v18, v15

    move-object/from16 v9, v38

    const/16 v8, 0x11

    const/4 v15, 0x0

    .line 1206
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1207
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    .line 1208
    invoke-virtual {v1, v15}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1209
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1210
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1211
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1214
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setGravity(I)V

    .line 1215
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v6, 0x2

    new-array v2, v6, [Landroid/text/InputFilter;

    aput-object v0, v2, v15

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xfa

    invoke-direct {v0, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1216
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v7, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v19

    const/16 v17, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v15, v7

    move-wide/from16 v6, v19

    const/16 v13, 0x11

    move-object/from16 v8, p5

    move-object/from16 v57, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity$1;)V

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1217
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100009

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1218
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, v26

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1219
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

    goto :goto_11

    .line 1222
    :cond_1e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 1220
    :cond_1f
    :goto_11
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_20
    move-object/from16 v15, v26

    .line 1225
    :cond_21
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_12
    move/from16 v3, p3

    move-object/from16 v60, v34

    move-object/from16 v61, v35

    move-object/from16 v58, v37

    goto/16 :goto_f

    :cond_22
    move-object/from16 v57, v9

    move-object/from16 v15, v26

    move-object/from16 v9, v37

    const/16 v13, 0x11

    .line 1240
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1241
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 1242
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1243
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1244
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1245
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1246
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setGravity(I)V

    .line 1247
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 1250
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$NumericDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v10, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity$NumericDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1251
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v6, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v19

    const/16 v17, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v13, v6

    move-wide/from16 v6, v19

    move-object/from16 v8, p5

    move-object/from16 v58, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity$1;)V

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1252
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100009

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1254
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1255
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

    goto :goto_13

    .line 1258
    :cond_23
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 1256
    :cond_24
    :goto_13
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 1261
    :cond_25
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_14
    move/from16 v3, p3

    :goto_15
    move-object/from16 v60, v34

    move-object/from16 v61, v35

    goto/16 :goto_f

    :cond_26
    move-object/from16 v58, v9

    move-object/from16 v13, v36

    .line 1263
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1264
    new-instance v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    .line 1265
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSingleLine(Z)V

    .line 1266
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTag(Ljava/lang/Object;)V

    .line 1267
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 1268
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 1269
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setGravity(I)V

    .line 1270
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 1271
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1272
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f100009

    invoke-virtual {v0, v3, v2}, Landroid/widget/AutoCompleteTextView;->setTag(ILjava/lang/Object;)V

    .line 1274
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x32

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1275
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1276
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

    goto :goto_16

    .line 1279
    :cond_27
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 1277
    :cond_28
    :goto_16
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 1282
    :cond_29
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    :goto_17
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$4;

    invoke-direct {v0, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity$4;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    .line 1341
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1343
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$5;

    invoke-direct {v1, v10, v14}, Lcom/conceptglobal/pmc/fo/AttributesActivity$5;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move/from16 v3, p3

    move-object/from16 v36, v13

    goto/16 :goto_15

    :cond_2a
    move-object/from16 v9, v35

    .line 1382
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1383
    new-instance v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    .line 1384
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSingleLine(Z)V

    .line 1385
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTag(Ljava/lang/Object;)V

    .line 1386
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 1387
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 1388
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setGravity(I)V

    .line 1389
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 1390
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1391
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$NumericDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v10, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity$NumericDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1392
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1393
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_18

    .line 1396
    :cond_2b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 1394
    :cond_2c
    :goto_18
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 1399
    :cond_2d
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1402
    :goto_19
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$6;

    invoke-direct {v1, v10, v14}, Lcom/conceptglobal/pmc/fo/AttributesActivity$6;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move/from16 v3, p3

    move-object/from16 v61, v9

    move-object/from16 v36, v13

    move-object/from16 v60, v34

    goto/16 :goto_f

    :cond_2e
    move-object/from16 v6, v34

    const/4 v8, 0x2

    .line 1433
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1434
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    .line 1437
    new-instance v0, Landroid/widget/RatingBar;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    const v2, 0x1010210

    const/4 v7, 0x0

    invoke-direct {v0, v1, v7, v2}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    .line 1439
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1440
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 1441
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 1442
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setTag(Ljava/lang/Object;)V

    .line 1443
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 1444
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mRating:I

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setId(I)V

    .line 1445
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setBackgroundResource(I)V

    .line 1447
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$7;

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity$7;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 1456
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 1457
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1458
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2f
    move/from16 v3, p3

    move-object/from16 v60, v6

    move-object/from16 v19, v7

    move-object/from16 v61, v9

    :goto_1a
    move-object/from16 v36, v13

    :goto_1b
    const/16 v2, 0xa

    const/4 v4, 0x4

    goto/16 :goto_10

    :cond_30
    const/4 v2, -0x2

    const/4 v4, -0x1

    const/4 v7, 0x0

    .line 1460
    const-string v1, "TextBoxND"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1461
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 1462
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1463
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1464
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1465
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1466
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1469
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1470
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$DecimalDigitsInputFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v5

    invoke-direct {v1, v10, v5, v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;II)V

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1471
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v5, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v19

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v21

    const/16 v17, 0x0

    move-object v1, v5

    move-object/from16 v2, p0

    move-object/from16 v59, v5

    move-wide/from16 v4, v19

    move-object/from16 v60, v6

    move-object/from16 v19, v7

    move-wide/from16 v6, v21

    const/4 v14, 0x2

    move-object/from16 v8, p5

    move-object/from16 v61, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity$1;)V

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1472
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100009

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1474
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

    .line 1475
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

    goto :goto_1c

    .line 1478
    :cond_31
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 1476
    :cond_32
    :goto_1c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 1481
    :cond_33
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1d
    move/from16 v3, p3

    goto/16 :goto_1a

    :cond_34
    move-object/from16 v60, v6

    move-object/from16 v19, v7

    move-object/from16 v61, v9

    const/4 v14, 0x2

    .line 1495
    const-string v1, "TextBox"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1496
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x1

    .line 1497
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1498
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1499
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1500
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1501
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v9, 0x11

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 1504
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-array v2, v14, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1505
    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v6, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v20

    const/16 v17, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v14, v6

    move-wide/from16 v6, v20

    move-object/from16 v36, v13

    move-object v13, v8

    move-object/from16 v8, p5

    const/16 v20, 0x11

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity$1;)V

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1506
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f100009

    invoke-virtual {v1, v3, v2}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1517
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v1, 0x15

    move/from16 v13, p3

    const/16 v14, 0x11

    if-eq v13, v1, :cond_35

    const/16 v1, 0x14

    if-ne v13, v1, :cond_36

    .line 1521
    :cond_35
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationFlag:I

    add-int/2addr v1, v2

    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationFlag:I

    .line 1524
    :cond_36
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Budget (INR)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_37

    .line 1525
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1528
    :cond_37
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Latitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1529
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v2, "Latitude"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1530
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_1e

    .line 1531
    :cond_38
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1532
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v2, "Longitude"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1533
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-direct {v10, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1549
    :cond_39
    :goto_1e
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Latitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_1f

    .line 1552
    :cond_3a
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v9, 0x2

    new-array v2, v9, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1e

    invoke-direct {v0, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v8, 0x4

    goto :goto_20

    :cond_3b
    :goto_1f
    const/4 v3, 0x1

    const/4 v9, 0x2

    .line 1550
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/conceptglobal/pmc/fo/AttributesActivity$DecimalDigitsInputFilter;

    const/4 v3, 0x6

    const/4 v8, 0x4

    invoke-direct {v2, v10, v8, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity$DecimalDigitsInputFilter;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1554
    :goto_20
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1555
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_21

    .line 1558
    :cond_3c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 1556
    :cond_3d
    :goto_21
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 1561
    :cond_3e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_22
    move v3, v13

    goto/16 :goto_1b

    :cond_3f
    move-object/from16 v36, v13

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/16 v14, 0x11

    move/from16 v13, p3

    .line 1563
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1564
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 1565
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1566
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1567
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1568
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1569
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setGravity(I)V

    .line 1570
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1571
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const-string v1, "0123456789."

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1572
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1573
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    new-instance v6, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;

    iget-object v3, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxValue()J

    move-result-wide v20

    const/16 v17, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v14, v6

    move-wide/from16 v6, v20

    const/4 v13, 0x4

    move-object/from16 v8, p5

    const/16 v20, 0x2

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity$1;)V

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1574
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100009

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 1575
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1576
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_40

    goto :goto_23

    .line 1579
    :cond_40
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 1577
    :cond_41
    :goto_23
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 1582
    :cond_42
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_43
    :goto_24
    move/from16 v3, p3

    const/16 v2, 0xa

    const/4 v4, 0x4

    goto/16 :goto_28

    :cond_44
    const/4 v13, 0x4

    const/16 v20, 0x2

    .line 1597
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1598
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 1599
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1600
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1601
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1602
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1603
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1604
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1607
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 1608
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_45

    goto :goto_25

    .line 1611
    :cond_45
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 1609
    :cond_46
    :goto_25
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 1614
    :cond_47
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto :goto_26

    .line 1617
    :cond_48
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 1615
    :cond_49
    :goto_26
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_24

    .line 1626
    :cond_4a
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1627
    new-instance v2, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1628
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1629
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForOperations:I

    invoke-virtual {v2, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setId(I)V

    const/4 v1, 0x1

    .line 1631
    invoke-virtual {v2, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setGravity(I)V

    .line 1633
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDefaultValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "True"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1634
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "True"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1635
    invoke-virtual {v2, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    goto :goto_27

    :cond_4b
    const/4 v1, 0x0

    .line 1637
    invoke-virtual {v2, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    .line 1640
    :cond_4c
    :goto_27
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$8;

    invoke-direct {v0, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity$8;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {v2, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move/from16 v3, p3

    move-object v1, v2

    move-object/from16 v13, v19

    const/16 v2, 0xa

    const/4 v4, 0x4

    goto :goto_29

    .line 1646
    :cond_4d
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1647
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f080090

    .line 1649
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1650
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageView:Landroid/widget/ImageView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1651
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1653
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_4e

    .line 1655
    new-instance v0, Ljava/io/File;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1658
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1659
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1662
    :cond_4e
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mImageviews:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1663
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$9;

    move/from16 v3, p3

    const/4 v4, 0x4

    invoke-direct {v1, v10, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity$9;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_28
    move-object/from16 v1, v19

    move-object v13, v1

    .line 1677
    :goto_29
    new-instance v0, Landroid/widget/TextView;

    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1684
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1685
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1686
    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->from:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 1687
    iput-object v15, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->from:Ljava/lang/String;

    .line 1689
    :cond_4f
    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    sget v9, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    invoke-virtual {v8, v3, v9}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0x64

    if-eqz v6, :cond_50

    iget-object v6, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->from:Ljava/lang/String;

    const-string v9, "Expenses"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 1690
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const v9, 0x3ee66666    # 0.45f

    const/4 v11, -0x1

    invoke-direct {v6, v11, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0x11

    .line 1691
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1692
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const v14, 0x3f19999a    # 0.6f

    const/4 v4, -0x2

    invoke-direct {v9, v11, v4, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1693
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {v14, v11, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1694
    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1695
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v8, v11, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0x30

    .line 1696
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1697
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p7, v6

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v17, v8

    const/16 v8, 0x64

    invoke-direct {v4, v11, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1698
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1699
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v6, p7

    move-object/from16 v8, v17

    move-object/from16 v2, v32

    goto :goto_2a

    :cond_50
    const/4 v4, -0x2

    const/4 v11, -0x1

    .line 1702
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const v9, 0x3ee66666    # 0.45f

    invoke-direct {v6, v11, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0x11

    .line 1703
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1704
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-direct {v9, v11, v4, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1705
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {v14, v11, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1706
    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1707
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3ecccccd    # 0.4f

    move-object/from16 p7, v6

    const/16 v6, 0x64

    invoke-direct {v8, v11, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1708
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1709
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1710
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v6, p7

    move-object/from16 v2, v32

    move-object/from16 v62, v8

    move-object v8, v4

    move-object/from16 v4, v62

    .line 1715
    :goto_2a
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v11, v18

    .line 1716
    invoke-virtual {v11, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1717
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1718
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1719
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2b
    move-object/from16 v17, v9

    move-object/from16 v18, v11

    move-object/from16 v26, v15

    move-object/from16 v14, v16

    move-object/from16 v5, v25

    :goto_2c
    move-object/from16 v11, v36

    move-object/from16 v7, v39

    :goto_2d
    move-object/from16 v6, v57

    :goto_2e
    move-object/from16 v4, v58

    :goto_2f
    move-object/from16 v15, v60

    move-object/from16 v9, v61

    goto/16 :goto_34

    .line 1720
    :cond_51
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1721
    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2b

    :cond_52
    move-object/from16 v5, v25

    .line 1722
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1723
    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_30
    move-object/from16 v17, v9

    move-object/from16 v18, v11

    move-object/from16 v26, v15

    move-object/from16 v14, v16

    goto :goto_2c

    .line 1724
    :cond_53
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1725
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_30

    :cond_54
    move-object/from16 v7, v39

    .line 1726
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1727
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_31
    move-object/from16 v17, v9

    move-object/from16 v18, v11

    move-object/from16 v26, v15

    move-object/from16 v14, v16

    move-object/from16 v11, v36

    goto :goto_2d

    .line 1728
    :cond_55
    const-string v0, "TimePicker"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1729
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_31

    .line 1730
    :cond_56
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1731
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_31

    .line 1732
    :cond_57
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1733
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_31

    :cond_58
    move-object/from16 v6, v57

    .line 1734
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1735
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v9

    move-object/from16 v18, v11

    move-object/from16 v26, v15

    move-object/from16 v14, v16

    move-object/from16 v11, v36

    goto/16 :goto_2e

    :cond_59
    move-object/from16 v4, v58

    .line 1736
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1737
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v9

    move-object/from16 v18, v11

    move-object/from16 v26, v15

    move-object/from16 v14, v16

    move-object/from16 v11, v36

    goto/16 :goto_2f

    :cond_5a
    move-object/from16 v18, v11

    move-object/from16 v11, v36

    .line 1738
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1739
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v14}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v9

    move-object/from16 v26, v15

    move-object/from16 v14, v16

    goto/16 :goto_2f

    :cond_5b
    move-object/from16 v17, v9

    move-object/from16 v9, v61

    .line 1740
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1741
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v14}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_32
    move-object/from16 v26, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v60

    goto :goto_34

    .line 1742
    :cond_5c
    const-string v0, "TextBoxND"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1743
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_32

    :cond_5d
    move-object/from16 v26, v15

    move-object/from16 v15, v60

    .line 1744
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1745
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v8}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_33

    .line 1746
    :cond_5e
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1747
    invoke-virtual {v1, v14}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5f
    :goto_33
    move-object/from16 v14, v16

    .line 1750
    :goto_34
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1751
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1752
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_60
    :goto_35
    move-object/from16 v16, v1

    const/4 v1, 0x1

    goto/16 :goto_36

    .line 1753
    :cond_61
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1754
    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_35

    .line 1755
    :cond_62
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1756
    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_35

    .line 1757
    :cond_63
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1758
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_35

    .line 1759
    :cond_64
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1760
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_35

    .line 1761
    :cond_65
    const-string v0, "TimePicker"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1762
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_35

    .line 1763
    :cond_66
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1764
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_35

    .line 1765
    :cond_67
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1766
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_35

    .line 1767
    :cond_68
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1768
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_35

    .line 1769
    :cond_69
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1770
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_35

    .line 1771
    :cond_6a
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1772
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_35

    .line 1773
    :cond_6b
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1774
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_35

    .line 1775
    :cond_6c
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1776
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_35

    .line 1777
    :cond_6d
    const-string v0, "TextBoxND"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1778
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_35

    .line 1779
    :cond_6e
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1780
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_35

    .line 1783
    :goto_36
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_6f

    .line 1784
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v0

    if-ne v0, v1, :cond_6f

    .line 1785
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    :cond_6f
    const/16 v0, 0x370

    if-eq v3, v0, :cond_70

    const/16 v0, 0x28e

    if-ne v3, v0, :cond_71

    .line 1791
    :cond_70
    :try_start_7
    iget-boolean v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isActivityContainsCapaign:Z

    if-eqz v0, :cond_71

    const/4 v1, 0x1

    .line 1792
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_37

    :catch_6
    move-exception v0

    .line 1795
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1798
    :cond_71
    :goto_37
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->from:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->from:Ljava/lang/String;

    const-string v1, "Expenses"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    const/4 v1, 0x1

    .line 1799
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 1800
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->rlTimerView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_72
    const/16 v0, 0x356

    if-ne v3, v0, :cond_74

    .line 1806
    :try_start_8
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    move-object/from16 v39, v7

    :try_start_9
    iget-object v7, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerDemoAmountQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 1807
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_73

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/EditText;

    if-eqz v7, :cond_73

    .line 1808
    invoke-virtual/range {p5 .. p5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsReadOnly()I

    move-result v7

    if-ne v7, v1, :cond_73

    .line 1809
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    move-object/from16 v25, v5

    move-object/from16 v5, v26

    :try_start_a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_3b

    :catch_7
    move-exception v0

    goto :goto_39

    :cond_73
    move-object/from16 v25, v5

    goto :goto_3a

    :catch_8
    move-exception v0

    move-object/from16 v25, v5

    goto :goto_38

    :catch_9
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v39, v7

    :goto_38
    move-object/from16 v5, v26

    .line 1813
    :goto_39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b

    :cond_74
    move-object/from16 v25, v5

    move-object/from16 v39, v7

    :goto_3a
    move-object/from16 v5, v26

    .line 1816
    :goto_3b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->queries:Lcom/conceptglobal/pmc/common/Queries;

    sget v7, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    invoke-virtual {v1, v3, v7}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->from:Ljava/lang/String;

    const-string v1, "Expenses"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 1817
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 1818
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1819
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1820
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f08016d

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1821
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 1822
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_75

    .line 1823
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1824
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1825
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1826
    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3c

    .line 1828
    :cond_75
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1831
    :goto_3c
    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;

    move-object/from16 v7, p5

    const/4 v8, 0x2

    invoke-direct {v1, v10, v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3d

    :cond_76
    move-object/from16 v7, p5

    const/4 v8, 0x2

    .line 1870
    :goto_3d
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_77

    .line 1871
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    .line 1872
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1874
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v8, v5

    goto/16 :goto_3f

    :cond_77
    if-ne v0, v8, :cond_78

    .line 1877
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1878
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1879
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1880
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1881
    iget v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->layoutId:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1883
    new-instance v1, Landroid/widget/TextView;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v8, -0xbbbbbc

    .line 1884
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, 0x4

    .line 1886
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v8, v17

    .line 1887
    invoke-virtual {v0, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1888
    new-instance v1, Landroid/widget/Button;

    iget-object v8, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationBtn:Landroid/widget/Button;

    .line 1889
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_getButton()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1890
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationBtn:Landroid/widget/Button;

    move-object v8, v5

    move-object/from16 v5, p1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1891
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationBtn:Landroid/widget/Button;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setGravity(I)V

    .line 1892
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationBtn:Landroid/widget/Button;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1893
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v5, 0x7f0800c6

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1894
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x3ee66666    # 0.45f

    const/4 v7, -0x2

    const/4 v14, -0x1

    invoke-direct {v1, v14, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0xa

    .line 1895
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1896
    iget-object v5, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationBtn:Landroid/widget/Button;

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1897
    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1898
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p6

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 1900
    iput v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationFlag:I

    .line 1901
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationBtn:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$11;

    invoke-direct {v1, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity$11;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3f

    :cond_78
    move-object/from16 v1, p6

    move-object v8, v5

    move-object v5, v14

    .line 1911
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_79

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1913
    :try_start_b
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    sget v14, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    invoke-virtual {v7, v14, v3}, Lcom/conceptglobal/pmc/common/Queries;->getVisibilityType(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 1914
    const-string v7, "Visibility"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    const/16 v0, 0x8

    .line 1915
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_3e

    :catch_a
    move-exception v0

    .line 1918
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1921
    :cond_79
    :goto_3e
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1924
    :goto_3f
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mattributesnamesArr:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1925
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArrIds:Ljava/util/List;

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1926
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEditIds:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mForOperations:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    const-string v0, "NumberBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1928
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1929
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    :cond_7a
    const-string v0, "TextBox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1932
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1933
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40

    .line 1934
    :cond_7b
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1935
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1936
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40

    .line 1937
    :cond_7c
    const-string v0, "TextBoxND"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1938
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1939
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40

    .line 1940
    :cond_7d
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1941
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1942
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40

    .line 1943
    :cond_7e
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1944
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1945
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40

    .line 1946
    :cond_7f
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1947
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextViewN:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1948
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40

    .line 1949
    :cond_80
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1951
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1952
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40

    .line 1953
    :cond_81
    const-string v0, "DropDown"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1954
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1955
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40

    :cond_82
    move-object/from16 v1, v25

    .line 1956
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1957
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1958
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40

    :cond_83
    move-object/from16 v1, v39

    .line 1959
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1960
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1961
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40

    .line 1962
    :cond_84
    const-string v0, "timePicker"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1963
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1964
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeText:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 1965
    :cond_85
    const-string v0, "Label"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1966
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1967
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 1968
    :cond_86
    const-string v0, "Checkbox"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1969
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1971
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1972
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 1973
    :cond_87
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1974
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1975
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1976
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1977
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryEdt:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    :cond_88
    :goto_40
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_89

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_89

    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->ruleAttributeIds:Ljava/util/ArrayList;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1981
    :try_start_c
    iget-object v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    sget v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getVisibilityType(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 1982
    const-string v1, "Visibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    move-object/from16 v1, p5

    .line 1983
    invoke-direct {v10, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->makeParentChildVisibility(Lcom/conceptglobal/pmc/model/AttributeModel;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_41

    :catch_b
    move-exception v0

    .line 1986
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1989
    :cond_89
    :goto_41
    iget v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->layoutId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->layoutId:I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 3731
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v0, :cond_2

    if-eq p2, v1, :cond_1

    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 3741
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3736
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->findCurrentLocation()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_4

    if-eq p2, v1, :cond_3

    goto :goto_0

    .line 3749
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->lastSelectedattributeModel:Lcom/conceptglobal/pmc/model/AttributeModel;

    if-eqz p1, :cond_7

    .line 3750
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->lastSelectedView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->lastSelectedid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDisplayType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->lastSelectedattributeModel:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "FarmersList"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/util/HashMap;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->showAddVillageDetailsDialog(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_7

    if-ne p2, v1, :cond_7

    const/16 v0, 0x64

    if-eq p1, v0, :cond_6

    const/16 p2, 0x65

    if-eq p1, p2, :cond_5

    goto :goto_0

    .line 3761
    :cond_5
    new-instance p1, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    invoke-direct {p1, p2, p3}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CompressListener;)V

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_6
    if-ne p2, v1, :cond_7

    if-eqz p3, :cond_7

    .line 3766
    const-string p1, "android.speech.extra.RESULTS"

    .line 3767
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3768
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->speachText:Landroid/widget/EditText;

    if-eqz p2, :cond_7

    const/4 p3, 0x0

    .line 3769
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 2878
    const-string v0, ""

    const-string v1, "Stop"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f09008a

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 2881
    :cond_0
    :try_start_0
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->btnStartStop:Landroid/widget/Button;

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

    .line 2882
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->timer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 2883
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->timer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 2884
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2885
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 2886
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->stopTimeMobile:Ljava/lang/String;

    .line 2888
    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->fetchLocationCall:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2889
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->fetchLocation(Z)V

    goto :goto_0

    .line 2891
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTimeAutomatic(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2892
    const-string p1, "Please select datetime of type auto from settings, to start timer"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->showTimeSettingsAlertDialog(Ljava/lang/String;)V

    return-void

    .line 2895
    :cond_2
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->timer:Ljava/util/Timer;

    .line 2896
    new-instance v4, Lcom/conceptglobal/pmc/fo/AttributesActivity$MyTimerTask;

    invoke-direct {v4, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$MyTimerTask;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1f4

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2897
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2898
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->btnStartStop:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 2899
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->starttimeMobile:Ljava/lang/String;

    .line 2900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->starttimeMobileMillis:J

    .line 2901
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->stopTimeGPS:Ljava/lang/String;

    .line 2902
    sput-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->stopTimeMobile:Ljava/lang/String;

    .line 2905
    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->fetchLocationCall:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2906
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->fetchLocation(Z)V

    .line 2907
    sget p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

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

    .line 2908
    :cond_3
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->bindDemoValues()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2912
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 350
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 352
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0c0158

    .line 353
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setContentView(I)V

    .line 355
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 356
    sput-boolean p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->isCapaignCompleatedForDraftActivity:Z

    .line 357
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->clearStaticvalues()V

    .line 358
    new-instance v0, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 359
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 360
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->init()V

    .line 361
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setListeners()V

    .line 362
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->getData()V

    .line 363
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setData()V

    .line 364
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->setAttributeIdsFromconfiguration()V

    .line 366
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 367
    const-string v1, "FARMERS_Result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    const-string v2, "QUANTITY_REMAINS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 371
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 372
    const-string v2, "CAMPAIGNS_FARMERS_LIST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->campaignsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 374
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mReceiver_QUANTITY:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 375
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerSelectedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "FARMER_SELECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 377
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 378
    const-string v1, "campaignCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->campaignCompleateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 380
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->initWebViews()V

    .line 383
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$getNeointTokenTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity$getNeointTokenTask;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Lcom/conceptglobal/pmc/fo/AttributesActivity$1;)V

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity$getNeointTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3599
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 3600
    new-instance v7, Landroid/app/TimePickerDialog;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

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

    .line 3573
    :cond_1
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v11, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mYear:I

    iget v12, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mMonth:I

    iget v13, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDay:I

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 3575
    :try_start_0
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->defaultMinDate:J

    .line 3576
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->defaultMaxDate:J

    .line 3577
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 3578
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    iget v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->datePos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x5

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    const v5, 0x7f100006

    .line 3580
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

    .line 3581
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 3582
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3583
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {v6, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 3584
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 3585
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_2
    if-eqz v2, :cond_3

    const v5, 0x7f100005

    .line 3588
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

    .line 3589
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 3590
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3591
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {v4, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 3592
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 3593
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

    .line 3683
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->dos:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 3684
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mDatetext:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 3685
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->dos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3688
    const-string v0, "AttributesActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 4080
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 4081
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4082
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mReceiver_QUANTITY:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4083
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->campaignsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4084
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->campaignCompleateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4085
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerSelectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 3698
    :cond_0
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 3699
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3700
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 p1, 0x0

    .line 3702
    sput-boolean p1, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 3893
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Longitude"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3894
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3895
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 3896
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3897
    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 3898
    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 3899
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 3900
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3901
    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 3902
    check-cast v7, Landroid/widget/EditText;

    .line 3903
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3904
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

    .line 3905
    :cond_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3906
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

    .line 3917
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->locationView:Landroid/view/View;

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 3880
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 3538
    :cond_0
    check-cast p2, Landroid/app/DatePickerDialog;

    .line 3540
    :try_start_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 3541
    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->datePos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x5

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    const v3, 0x7f100006

    .line 3543
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

    .line 3544
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 3545
    invoke-virtual {v4, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3546
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    neg-int v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 3547
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 3548
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/widget/DatePicker;->setMinDate(J)V

    goto :goto_0

    .line 3550
    :cond_1
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v3

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->defaultMinDate:J

    invoke-virtual {v3, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    :goto_0
    if-eqz v0, :cond_2

    const v3, 0x7f100005

    .line 3553
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

    .line 3554
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 3555
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3556
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 3557
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 3558
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    goto :goto_1

    .line 3560
    :cond_2
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->defaultMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 3711
    const-string p2, "onRequestPermissionResult"

    const-string v0, "AttributesActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 3713
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 3716
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3717
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 3719
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->findCurrentLocation()V

    goto :goto_0

    .line 3722
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 2998
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 2999
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mImageviews:Ljava/util/List;

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

    .line 3001
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v2, :cond_0

    .line 3003
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->imageDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3005
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3006
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3007
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3012
    :cond_1
    :try_start_0
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 3013
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    sget v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    const/16 v5, 0x31d

    const/16 v6, 0x367

    invoke-virtual/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerDetailsChildActivity(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3014
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3015
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    const/16 v4, 0x31d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3019
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3022
    :cond_2
    :goto_1
    :try_start_1
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_3

    .line 3023
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->farmerId:Ljava/lang/String;

    sget v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    iget v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityAssignmentId:I

    const/16 v5, 0x33a

    const/16 v6, 0x338

    invoke-virtual/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerDetailsChildActivity(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3024
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3025
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mapEntryEdit:Ljava/util/Map;

    const/16 v2, 0x33a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 3029
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3031
    :cond_3
    :goto_2
    sget v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->activityId:I

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4

    const/16 v1, 0x29

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_4

    const/16 v1, 0x17

    if-ne v0, v1, :cond_5

    .line 3032
    :cond_4
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->bindFarmerExpenditure()V

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2064
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

    .line 2074
    :goto_0
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 2075
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->listAttributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2099
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

    if-ne v2, v8, :cond_9

    .line 2101
    :try_start_1
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 2104
    :cond_0
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 2105
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 2107
    :cond_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    const-string v12, "Dropdown"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    const-string v12, "Multiselect Dropdown"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArrIds:Ljava/util/List;

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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v2, :cond_3

    .line 2109
    :try_start_2
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Please reselect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 2113
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

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

    if-ge v2, v12, :cond_4

    .line 2114
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 2117
    :cond_4
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v2, :cond_5

    .line 2119
    :try_start_4
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2124
    :catch_0
    :cond_5
    :try_start_5
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2125
    :cond_6
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12

    cmp-long v2, v12, v5

    if-eqz v2, :cond_8

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

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

    if-lez v2, :cond_7

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_8

    .line 2127
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

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

    :cond_8
    if-eqz v8, :cond_f

    .line 2132
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2138
    :cond_9
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

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

    if-eqz v2, :cond_f

    .line 2139
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinLength()I

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

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

    if-ge v2, v12, :cond_a

    .line 2140
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

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

    .line 2143
    :cond_a
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v2, :cond_b

    .line 2145
    :try_start_6
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 2150
    :catch_1
    :cond_b
    :try_start_7
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2151
    :cond_c
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v12

    cmp-long v2, v12, v5

    if-eqz v2, :cond_e

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

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

    if-lez v2, :cond_d

    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMinValue()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_e

    .line 2153
    sget-object v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

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

    :cond_e
    if-eqz v8, :cond_f

    .line 2157
    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->mEntryArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 2164
    const-string v2, "AttributesActivity-Validation"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_3
    :cond_f
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_10
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

    .line 3923
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3925
    monitor-enter p0

    .line 3926
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3927
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3930
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

    .line 3933
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

    .line 3927
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
