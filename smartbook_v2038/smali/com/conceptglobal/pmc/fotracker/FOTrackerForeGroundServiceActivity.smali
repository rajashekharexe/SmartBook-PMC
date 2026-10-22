.class public Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FOTrackerForeGroundServiceActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final FASTEST_UPDATE_INTERVAL:J = 0x249f0L

.field public static final LOCATION_CHECK_TASK_ID:Ljava/lang/String; = "DataSyncTaskID"

.field private static final MAX_WAIT_TIME:J = 0x186a0L

.field private static final REQUEST_PERMISSIONS_REQUEST_CODE:I = 0x22

.field private static final TAG:Ljava/lang/String; = "FOTrackerForeGroundServiceActivity"

.field private static final TIMEDIALOGID:I = 0x1

.field private static final UPDATE_INTERVAL:J = 0x249f0L

.field public static isTracking:Z = false

.field private static jobId:I

.field public static mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

.field private static optionsMenu:Landroid/view/Menu;


# instance fields
.field private basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

.field private cbDescription:Landroid/widget/CheckBox;

.field checkStatus:I

.field private closeDay:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field datesListener:Landroid/view/View$OnClickListener;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private etActualEndTime:Landroid/widget/EditText;

.field private etDescription:Landroid/widget/EditText;

.field private etDistance:Landroid/widget/EditText;

.field private getData:Landroid/widget/Button;

.field private ivReports:Landroid/widget/ImageView;

.field private latitude:Landroid/widget/TextView;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private llDescriptionView:Landroid/widget/LinearLayout;

.field private llDistance:Landroid/widget/LinearLayout;

.field private llPIPView:Landroid/widget/LinearLayout;

.field private location:Ljava/lang/String;

.field private locationReceiver:Landroid/content/BroadcastReceiver;

.field private longitude:Landroid/widget/TextView;

.field private mActivity:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

.field private mBound:Z

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mFiledStr:Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field private mMonth:I

.field public mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field mWorkManager:Landroidx/work/WorkManager;

.field private mYear:I

.field myTimerTask:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;

.field operationListener:Landroid/view/View$OnClickListener;

.field private pbRefresh:Landroid/widget/ProgressBar;

.field private proceed:Ljava/lang/Boolean;

.field private provider:Ljava/lang/String;

.field private reciever:Landroid/content/BroadcastReceiver;

.field private rlTitleView:Landroid/widget/RelativeLayout;

.field sharedPreferences:Landroid/content/SharedPreferences;

.field private startDay:Landroid/widget/Button;

.field private startStop:Landroid/widget/TextView;

.field private syncDataImageView:Landroid/widget/ImageView;

.field private text:Ljava/lang/String;

.field timer:Ljava/util/Timer;

.field timesListener:Landroid/view/View$OnClickListener;

.field toolbar:Landroid/widget/Toolbar;

.field private track:Landroid/widget/Button;

.field private tvActualEndTime:Landroid/widget/TextView;

.field private tvAddress:Landroid/widget/TextView;

.field private tvApproximateDistance:Landroid/widget/TextView;

.field private tvDescription:Landroid/widget/TextView;

.field private tvDescriptionMain:Landroid/widget/TextView;

.field private tvDuration:Landroid/widget/TextView;

.field private tvEndTime:Landroid/widget/TextView;

.field private tvStartTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 124
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->proceed:Ljava/lang/Boolean;

    .line 126
    iput v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->checkStatus:I

    .line 128
    const-string v1, "CloseDay"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->text:Ljava/lang/String;

    .line 149
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mBound:Z

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mFiledStr:Ljava/lang/String;

    .line 233
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$2;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->reciever:Landroid/content/BroadcastReceiver;

    .line 1044
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$11;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$11;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->locationReceiver:Landroid/content/BroadcastReceiver;

    .line 1107
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$12;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->operationListener:Landroid/view/View$OnClickListener;

    .line 1119
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$13;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$13;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->datesListener:Landroid/view/View$OnClickListener;

    .line 1126
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$14;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$14;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->timesListener:Landroid/view/View$OnClickListener;

    .line 1145
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$15;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 1166
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$16;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$16;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mBound:Z

    return p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mActivity:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Lcom/conceptglobal/pmc/smartalerts/Basics;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Landroid/widget/EditText;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etDistance:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1200()I
    .locals 1

    .line 100
    sget v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->jobId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvAddress:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvDuration:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mYear:I

    return p1
.end method

.method static synthetic access$1602(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$1702(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mDay:I

    return p1
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->updateDisplay()V

    return-void
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .line 100
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->llDescriptionView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->pbRefresh:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Landroid/widget/EditText;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etDescription:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Landroid/widget/EditText;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etActualEndTime:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvDescription:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->syncDataImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Z
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->checkPermissions()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->requestPermissions()V

    return-void
.end method

.method private bindData()V
    .locals 8

    .line 579
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getLastTransactionData()Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 581
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 583
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;->getTrackerId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvStartTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->myTimerTask:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;

    if-eqz v1, :cond_0

    .line 586
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;->cancel()Z

    .line 588
    :cond_0
    new-instance v3, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->myTimerTask:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;

    .line 589
    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->timer:Ljava/util/Timer;

    const-wide/16 v4, 0x3e8

    const-wide/32 v6, 0xea60

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method private checkIfStartOrClose(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 487
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 488
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 489
    const-string v0, "dd"

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getDayFromDB()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 492
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    const-string v0, "Start day"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 493
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 494
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    const-string v0, "End day"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 497
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "JobId"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 504
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 508
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkIfTableIsEmptyOrNot()I
    .locals 3

    .line 514
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->checkIfTableIsEmptyOrNot()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    const-string v2, "Start day"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return v0
.end method

.method private checkPermissions()Z
    .locals 1

    .line 825
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initServiceConnection()V
    .locals 1

    .line 202
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$1;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private initViews()V
    .locals 2

    const v0, 0x7f0904d5

    .line 257
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvStartTime:Landroid/widget/TextView;

    const v0, 0x7f09049d

    .line 258
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvEndTime:Landroid/widget/TextView;

    const v0, 0x7f090497

    .line 259
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvDuration:Landroid/widget/TextView;

    const v0, 0x7f090160

    .line 260
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etActualEndTime:Landroid/widget/EditText;

    .line 261
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->datesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etActualEndTime:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    const v0, 0x7f090164

    .line 263
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etDescription:Landroid/widget/EditText;

    const v0, 0x7f0900e5

    .line 264
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->cbDescription:Landroid/widget/CheckBox;

    const v0, 0x7f090297

    .line 265
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->llDescriptionView:Landroid/widget/LinearLayout;

    const v0, 0x7f090490

    .line 266
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvDescription:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etDescription:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 268
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->llDescriptionView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etDescription:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->operationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->cbDescription:Landroid/widget/CheckBox;

    new-instance v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$3;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private initWorker()V
    .locals 5

    .line 374
    invoke-static {}, Landroidx/work/WorkManager;->getInstance()Landroidx/work/WorkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mWorkManager:Landroidx/work/WorkManager;

    .line 376
    new-instance v0, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v1, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 377
    invoke-virtual {v0}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 378
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mWorkManager:Landroidx/work/WorkManager;

    const-string v2, "DataSyncTaskID"

    sget-object v3, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method private isServiceRunning(Ljava/lang/String;)Z
    .locals 3

    .line 944
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x32

    .line 945
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 946
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 947
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 949
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 951
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 953
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startServiceAgain()V

    const/4 v1, 0x1

    .line 954
    sput-boolean v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->isTracking:Z

    goto :goto_0

    :cond_1
    return v1
.end method

.method private notifyUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1233
    const-string p2, "FOTrackerForeGroundServiceActivity"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1235
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->setRefreshActionButtonState(Z)V

    :cond_0
    return-void
.end method

.method private requestPermissions()V
    .locals 3

    .line 831
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->TAG:Ljava/lang/String;

    const-string v1, "Displaying permission rationale to provide additional context."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 840
    :cond_0
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->TAG:Ljava/lang/String;

    const-string v2, "Requesting permission"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x22

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private showGPSDisabledAlertToUser()V
    .locals 4

    .line 594
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 595
    const-string v1, "GPS is disabled in your device. Would you like to enable it?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 596
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$7;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$7;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    .line 597
    const-string v3, "Goto Settings Page To Enable GPS"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 605
    new-instance v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$8;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$8;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 611
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 612
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private startJob(Ljava/lang/String;)V
    .locals 4

    const-string v0, "jobId--"

    .line 874
    const-string v1, "onStartJob"

    const-string v2, "startjOb"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->requestLocationUpdates()V

    .line 896
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "location"

    const-string v3, "Start day"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 897
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "locationStartTime"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 898
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 899
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->initWorker()V

    .line 902
    const-string p1, "SCHEDULAR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->jobId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 906
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1103
    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private updateDisplay()V
    .locals 4

    .line 1196
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mMonth:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mFiledStr:Ljava/lang/String;

    .line 1197
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1199
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 1200
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etActualEndTime:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1203
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 934
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Please enable GPS to start tracking"

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 935
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->finish()V

    goto :goto_0

    .line 931
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->requestLocationUpdates()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1057
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 288
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00b2

    .line 289
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->setContentView(I)V

    const p1, 0x7f0902b3

    .line 293
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->llPIPView:Landroid/widget/LinearLayout;

    const p1, 0x7f09029b

    .line 294
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->llDistance:Landroid/widget/LinearLayout;

    const p1, 0x7f09045c

    .line 295
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->rlTitleView:Landroid/widget/RelativeLayout;

    const p1, 0x7f09046f

    .line 296
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvAddress:Landroid/widget/TextView;

    const p1, 0x7f090470

    .line 297
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvApproximateDistance:Landroid/widget/TextView;

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvApproximateDistance:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09046e

    .line 299
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvActualEndTime:Landroid/widget/TextView;

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvActualEndTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090491

    .line 301
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvDescriptionMain:Landroid/widget/TextView;

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvDescriptionMain:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090411

    .line 304
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->syncDataImageView:Landroid/widget/ImageView;

    const p1, 0x7f09037d

    .line 305
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->ivReports:Landroid/widget/ImageView;

    const p1, 0x7f090348

    .line 306
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->pbRefresh:Landroid/widget/ProgressBar;

    .line 307
    iput-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mActivity:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    const p1, 0x7f090167

    .line 308
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etDistance:Landroid/widget/EditText;

    const p1, 0x7f090402

    .line 309
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startStop:Landroid/widget/TextView;

    .line 310
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "MyPref"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 311
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 313
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.location.servicebroadcast"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mFilter:Landroid/content/IntentFilter;

    .line 317
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->initServiceConnection()V

    .line 319
    iput-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->context:Landroid/content/Context;

    .line 320
    new-instance p1, Lcom/conceptglobal/pmc/smartalerts/Basics;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/smartalerts/Basics;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    .line 321
    new-instance p1, Lcom/conceptglobal/pmc/SyncResultReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/SyncResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    .line 322
    invoke-virtual {p1, p0}, Lcom/conceptglobal/pmc/SyncResultReceiver;->setReceiver(Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;)V

    .line 332
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->syncDataImageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$4;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->ivReports:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$5;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->reciever:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "FTSyncStatus"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 354
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->locationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.conceptglobal.fieldtrack.broadcast"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 361
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "location"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->location:Ljava/lang/String;

    .line 362
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->initViews()V

    .line 363
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->timer:Ljava/util/Timer;

    .line 364
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    .line 365
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mDay:I

    const/4 v0, 0x2

    .line 366
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mMonth:I

    const/4 v0, 0x1

    .line 367
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mYear:I

    const/4 p1, 0x0

    .line 368
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->setRefreshActionButtonState(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1139
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1140
    new-instance v7, Landroid/app/TimePickerDialog;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

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

    .line 1137
    :cond_1
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v9, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v11, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mYear:I

    iget v12, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mMonth:I

    iget v13, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mDay:I

    move-object v8, p1

    invoke-direct/range {v8 .. v13}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 555
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->reciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 556
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->locationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 558
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 568
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 573
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 1070
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 1071
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    .line 1072
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1074
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->getTaskId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 1031
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 1033
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->llPIPView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1035
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->llDistance:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1036
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1038
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->llPIPView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1040
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->llDistance:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1041
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .line 383
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    return-void
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1218
    :cond_0
    const-string p1, "respMsg"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1219
    const-string v0, "callbackActivity"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1220
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Act response--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Act callbackActivity--"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const-string p1, "Data synchronized"

    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->notifyUser(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 856
    sget-object p2, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->TAG:Ljava/lang/String;

    const-string v0, "onRequestPermissionResult"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 858
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 861
    const-string p1, "User interaction was cancelled."

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 862
    aget p1, p3, p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 864
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 962
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 970
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "End day"

    const-string v2, ""

    const-string v3, "location"

    const-string v4, "Start day"

    if-eqz v0, :cond_0

    .line 971
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 974
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->bindData()V

    goto :goto_0

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->context:Landroid/content/Context;

    const-string v5, "MyPref"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 977
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 978
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 980
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->bindData()V

    goto :goto_0

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 389
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const v0, 0x7f090401

    .line 392
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    .line 393
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->location:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Start day"

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->location:Ljava/lang/String;

    const-string v2, "End day"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 402
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$6;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$6;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 541
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mBound:Z

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mBound:Z

    .line 549
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .line 1026
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserInteraction()V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 4

    .line 1007
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1008
    invoke-static {}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m()Landroid/app/PictureInPictureParams$Builder;

    move-result-object v0

    .line 1010
    invoke-static {p0}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1011
    new-instance v1, Landroid/util/Rational;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->llPIPView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->llPIPView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    .line 1012
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/PictureInPictureParams$Builder;Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/PictureInPictureParams$Builder;)Landroid/app/PictureInPictureParams;

    .line 1013
    invoke-static {v0}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/PictureInPictureParams$Builder;)Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;Landroid/app/PictureInPictureParams;)Z

    :cond_0
    return-void
.end method

.method public requestPermission()V
    .locals 2

    .line 478
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public setRefreshActionButtonState(Z)V
    .locals 1

    .line 1240
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$17;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$17;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startDay(Landroid/view/View;)V
    .locals 4

    .line 618
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "Start day"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "End day"

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 633
    sput-boolean v2, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->isTracking:Z

    .line 634
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p1

    .line 636
    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06010c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 650
    :try_start_0
    const-string v1, "na"

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fotracker/database/InsertDataIntoDB;->insertFirstDayFOTrackerHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->tvStartTime:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 653
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 658
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 659
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/smartalerts/Basics;->safeCheckLocationBasedTracking()V

    goto/16 :goto_1

    .line 661
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->context:Landroid/content/Context;

    const-string v1, "Service Already Running.."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 663
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 667
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etDistance:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 668
    sput-boolean v2, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->isTracking:Z

    .line 669
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etDistance:Landroid/widget/EditText;

    const-string v0, "Please enter the distance you travelled."

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 672
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->cbDescription:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 673
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etActualEndTime:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    .line 674
    sput-boolean v2, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->isTracking:Z

    .line 675
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etActualEndTime:Landroid/widget/EditText;

    const-string v0, "Please enter the Actual End Time"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 678
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etDescription:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 679
    sput-boolean v2, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->isTracking:Z

    .line 680
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->etDescription:Landroid/widget/EditText;

    const-string v0, "Please select Description type"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 689
    :cond_4
    sput-boolean v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->isTracking:Z

    .line 691
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->removeLocationUpdates()V

    .line 692
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mWorkManager:Landroidx/work/WorkManager;

    if-eqz p1, :cond_5

    .line 693
    const-string v0, "DataSyncTaskID"

    invoke-virtual {p1, v0}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    .line 702
    :cond_5
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 704
    const-string v0, "Confirm"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 705
    const-string v0, "Are you sure,you want to stop tracking?"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 707
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$9;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$9;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    const-string v1, "YES"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 755
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$10;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$10;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    const-string v1, "NO"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 765
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 766
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_6
    :goto_1
    return-void
.end method

.method public startServiceAgain()V
    .locals 3

    .line 992
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 993
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 996
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    if-eqz v0, :cond_1

    .line 997
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->requestLocationUpdates()V

    :cond_1
    return-void
.end method
