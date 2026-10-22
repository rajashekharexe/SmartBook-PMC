.class public Lcom/conceptglobal/pmc/fragments/HomePageFragment;
.super Landroidx/fragment/app/Fragment;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;,
        Lcom/conceptglobal/pmc/fragments/HomePageFragment$SendSDTVTask;,
        Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "HomePageFragment"

.field private static mAdapter:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

.field private static optionsMenu:Landroid/view/Menu;

.field private static scontext:Landroid/content/Context;


# instance fields
.field private final TEMP_FILE_NAME:Ljava/lang/String;

.field activitiesPend:Ljava/lang/String;

.field assignmentsPend:Ljava/lang/String;

.field private basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

.field builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

.field private cityEntryEditText:Landroid/widget/EditText;

.field private cityText:Landroid/widget/TextView;

.field private cityWeather:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private countSync:I

.field private counter:I

.field private countryWeather:Ljava/lang/String;

.field private currentWeather:Lcom/conceptglobal/pmc/model/Weather;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private fabStopMode:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

.field farmersPending:Ljava/lang/String;

.field private forecastWeather:I

.field private forecastWeatherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Weather;",
            ">;"
        }
    .end annotation
.end field

.field private getCityWeatherBtn:Landroid/widget/Button;

.field private getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private getLocationWeatherBtn:Landroid/widget/ImageView;

.field private homePageGridAdapter:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

.field imagesPend:Ljava/lang/String;

.field private inflaterLoc:Landroid/view/LayoutInflater;

.field private isActivityInForeground:Z

.field private isLocationWeather:I

.field private keysList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private latitude:D

.field ll_ticker:Landroid/widget/LinearLayout;

.field location:Ljava/lang/String;

.field private longitude:D

.field private mActivity:Landroid/app/Activity;

.field mCompressionResult:Landroid/content/BroadcastReceiver;

.field mDialogRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;

.field mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field public mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

.field mRunnable:Ljava/lang/Runnable;

.field menuItem:Landroid/view/MenuItem;

.field private msg:Ljava/lang/String;

.field private myListener:Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;

.field private noWeatherText:Landroid/widget/TextView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private progressLayout:Landroid/widget/RelativeLayout;

.field reportItem:Landroid/view/MenuItem;

.field retailersPending:Ljava/lang/String;

.field rootView:Landroid/view/View;

.field private rvGridItems:Landroidx/recyclerview/widget/RecyclerView;

.field scrollTextView:Lcom/conceptglobal/pmc/utils/ScrollTextView;

.field sharedPreferences:Landroid/content/SharedPreferences;

.field private showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

.field private showcaseview2:Lcom/github/amlcurran/showcaseview/ShowcaseView;

.field tableBeansHashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/TableBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private telManager:Landroid/telephony/TelephonyManager;

.field private tempFile:Ljava/io/File;

.field tickerPos:I

.field private tickermessge:Landroid/content/BroadcastReceiver;

.field private todayWeather:I

.field txt_marketname:Landroid/widget/TextView;

.field private userFunctions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/UserFunctions;",
            ">;"
        }
    .end annotation
.end field

.field private weatherAdapter:Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;

.field weatherItem:Landroid/view/MenuItem;

.field private weatherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Weather;",
            ">;"
        }
    .end annotation
.end field

.field private weatherMainLayout:Landroid/widget/RelativeLayout;

.field private weatherView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 133
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->countSync:I

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    const/4 v1, 0x1

    .line 144
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->isActivityInForeground:Z

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherList:Ljava/util/List;

    .line 179
    new-instance v1, Lcom/conceptglobal/pmc/model/Weather;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/Weather;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->currentWeather:Lcom/conceptglobal/pmc/model/Weather;

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->forecastWeatherList:Ljava/util/List;

    .line 184
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->todayWeather:I

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->forecastWeather:I

    .line 185
    const-string v1, "weather_temp1.txt"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->TEMP_FILE_NAME:Ljava/lang/String;

    .line 188
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->counter:I

    .line 190
    new-instance v1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->keysList:Ljava/util/ArrayList;

    .line 197
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tickerPos:I

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tableBeansHashmap:Ljava/util/HashMap;

    .line 351
    new-instance v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mCompressionResult:Landroid/content/BroadcastReceiver;

    .line 1174
    new-instance v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$11;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$11;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mDialogRunnable:Ljava/lang/Runnable;

    .line 1182
    new-instance v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$12;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mRunnable:Ljava/lang/Runnable;

    .line 2253
    new-instance v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tickermessge:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private ChangeUI(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Weather;",
            ">;)V"
        }
    .end annotation

    .line 1810
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/Weather;

    .line 1811
    iget-object v1, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->getDateText()Ljava/lang/String;

    move-result-object v1

    .line 1813
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1815
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 1816
    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->isAfterDay(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1817
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1819
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1820
    const-string v2, "15:00:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1821
    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->addLayout(Lcom/conceptglobal/pmc/model/Weather;Z)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1825
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1828
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setWeatherView(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->countryWeather:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/conceptglobal/pmc/fragments/HomePageFragment;I)I
    .locals 0

    .line 133
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->todayWeather:I

    return p1
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Lcom/conceptglobal/pmc/model/Weather;Z)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->addLayout(Lcom/conceptglobal/pmc/model/Weather;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Z)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setWeatherView(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/app/Activity;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/conceptglobal/pmc/fragments/HomePageFragment;I)I
    .locals 0

    .line 133
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->forecastWeather:I

    return p1
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Ljava/util/List;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->ChangeUI(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700()Landroid/view/Menu;
    .locals 1

    .line 133
    sget-object v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->optionsMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->msg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/widget/EditText;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->cityEntryEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->counter:I

    return p0
.end method

.method static synthetic access$2108(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)I
    .locals 2

    .line 133
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->counter:I

    return v0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->fetchLocation()V

    return-void
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)D
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->latitude:D

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/conceptglobal/pmc/fragments/HomePageFragment;D)D
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->latitude:D

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)D
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->longitude:D

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/conceptglobal/pmc/fragments/HomePageFragment;D)D
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->longitude:D

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->keysList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->sendHomeLocationDetails()V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->progressLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Z)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getLocation(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/content/Context;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getWeatherInfo(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Lcom/conceptglobal/pmc/smartalerts/Basics;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    return-object p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/fragments/HomePageFragment;I)I
    .locals 0

    .line 133
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->isLocationWeather:I

    return p1
.end method

.method static synthetic access$902(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->cityWeather:Ljava/lang/String;

    return-object p1
.end method

.method private addAttendance()V
    .locals 2

    .line 875
    new-instance v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;-><init>()V

    const/16 v1, 0x19

    .line 876
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setFunctionId(I)V

    .line 877
    const-string v1, "Attendance Approval"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setFunctionName(Ljava/lang/String;)V

    .line 878
    const-string v1, "AttendanceApproval"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setNavigationUrl(Ljava/lang/String;)V

    .line 879
    const-string v1, "PMCAttendance"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setPdafunction(Ljava/lang/String;)V

    .line 880
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAttendanceReports()V
    .locals 2

    .line 884
    new-instance v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;-><init>()V

    const/16 v1, 0xb

    .line 885
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setFunctionId(I)V

    .line 886
    const-string v1, "Attendance Report"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setFunctionName(Ljava/lang/String;)V

    .line 887
    const-string v1, "AttendanceReport"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setNavigationUrl(Ljava/lang/String;)V

    .line 888
    const-string v1, "Attendance Reports"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setPdafunction(Ljava/lang/String;)V

    .line 889
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addChannelOrdersFunction()V
    .locals 2

    .line 902
    new-instance v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;-><init>()V

    const/16 v1, 0x1c

    .line 903
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setFunctionId(I)V

    .line 904
    const-string v1, "Channel Orders"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setFunctionName(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setNavigationUrl(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setPdafunction(Ljava/lang/String;)V

    .line 907
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLayout(Lcom/conceptglobal/pmc/model/Weather;Z)V
    .locals 3

    .line 1832
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1834
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1836
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherList:Ljava/util/List;

    new-instance v2, Lcom/conceptglobal/pmc/model/Weather;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/model/Weather;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1837
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1840
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p2, :cond_2

    .line 1844
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->currentWeather:Lcom/conceptglobal/pmc/model/Weather;

    goto :goto_1

    .line 1846
    :cond_2
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->forecastWeatherList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private addMarketingFunction()V
    .locals 2

    .line 893
    new-instance v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;-><init>()V

    const/16 v1, 0x1a

    .line 894
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setFunctionId(I)V

    .line 895
    const-string v1, "Testimonial"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setFunctionName(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setNavigationUrl(Ljava/lang/String;)V

    .line 897
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setPdafunction(Ljava/lang/String;)V

    .line 898
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSttaicUserFunction()V
    .locals 2

    .line 864
    new-instance v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;-><init>()V

    const/16 v1, 0x19

    .line 865
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setFunctionId(I)V

    .line 866
    const-string v1, "Planning and Reports"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setFunctionName(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setNavigationUrl(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserFunctions;->setPdafunction(Ljava/lang/String;)V

    .line 869
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkCountForSynFO()V
    .locals 1

    .line 826
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getCountForSync()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->countSync:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 828
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->countSync:I

    :goto_0
    return-void
.end method

.method private checkHomeLocationStatus()V
    .locals 2

    .line 391
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getHomeAddressDetaisCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getHomeAddressDetais()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getHomeAddressInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/HomeLocationDetails;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/HomeLocationDetails;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->sendHoeLocationDetailsToserver(Lcom/conceptglobal/pmc/model/HomeLocationDetails;)V

    goto :goto_1

    .line 393
    :cond_1
    :goto_0
    const-string v0, "Please update your home location details to continue further"

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->showHomeLocationUpdateAlertDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static differenceInMinutes(Ljava/util/Date;)J
    .locals 5

    .line 1897
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1898
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1899
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 1901
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1904
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private fetchLocation()V
    .locals 5

    .line 2177
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 2181
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/HomePageFragment$18;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$18;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getColoredSpanned(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<font color="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDataFromDB()V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingFunctionNames()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getModules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    return-void
.end method

.method private getDate()Ljava/lang/String;
    .locals 4

    .line 2363
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2364
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x7

    .line 2365
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 2366
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2367
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/common/Queries;->getExpCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2371
    const-string v1, "HomePageFragment"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 2374
    const-string v0, ""

    return-object v0
.end method

.method private getGsmLevels()I
    .locals 3

    .line 1726
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    sget-object v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->optionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    const v1, 0x7f0903e4

    .line 1728
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0801f5

    .line 1730
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1737
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1738
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1739
    new-instance v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Lcom/conceptglobal/pmc/fragments/HomePageFragment$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->myListener:Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;

    .line 1740
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->telManager:Landroid/telephony/TelephonyManager;

    .line 1741
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->myListener:Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getItems()Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/StaggeredItemsModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    const-string v3, ""

    .line 1203
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getTotalFarmers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2a

    .line 1204
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/conceptglobal/pmc/common/Queries;->getPendingFarmersToSend(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_29

    .line 1205
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/conceptglobal/pmc/common/Queries;->getDraftFarmersToSend(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_28

    .line 1207
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getTotalDealers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_27

    .line 1208
    :try_start_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/conceptglobal/pmc/common/Queries;->getPendingRetailersToSend(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_26

    .line 1209
    :try_start_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/conceptglobal/pmc/common/Queries;->getDraftDealers(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_25

    .line 1211
    :try_start_6
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/common/Queries;->getTotalDealers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_24

    .line 1212
    :try_start_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/conceptglobal/pmc/common/Queries;->getPendingRetailersToSend(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_23

    .line 1213
    :try_start_8
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/conceptglobal/pmc/common/Queries;->getDraftDealers(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_22

    .line 1215
    :try_start_9
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/Queries;->getPendingActivities()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_21

    add-int v14, v0, v6

    .line 1220
    :try_start_a
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v15

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getToDoDraftUpdate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/conceptglobal/pmc/common/Queries;->updateVisitLatLong(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_20

    .line 1222
    :try_start_b
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    const-string v15, "IgnoreAttrIdsForDraftDelete"

    invoke-virtual {v4, v15}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1223
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v15
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move/from16 v17, v5

    :try_start_c
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getToDoDraftUpdate()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    invoke-virtual {v15, v5, v0}, Lcom/conceptglobal/pmc/common/Queries;->updateActivityDetails(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_1

    :catch_0
    move/from16 v17, v5

    .line 1225
    :catch_1
    :goto_1
    :try_start_d
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getDraftActivities()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1f

    .line 1226
    :try_start_e
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selfAssignmentTileText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1e

    .line 1230
    :try_start_f
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v15

    invoke-virtual {v15}, Lcom/conceptglobal/pmc/common/Queries;->getServyPendingActivities()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v15
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1d

    .line 1231
    :try_start_10
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v18
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1c

    move/from16 v19, v4

    :try_start_11
    invoke-virtual/range {v18 .. v18}, Lcom/conceptglobal/pmc/common/Queries;->getSurveyDraftActivities()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    .line 1233
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getDraftSelfActivities()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1b

    .line 1234
    :try_start_12
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v18
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1a

    move/from16 v20, v4

    :try_start_13
    invoke-virtual/range {v18 .. v18}, Lcom/conceptglobal/pmc/common/Queries;->getDraftTSTActivities()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_19

    .line 1236
    :try_start_14
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_18

    move/from16 v18, v4

    :try_start_15
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_17

    move-object/from16 v21, v5

    const/16 v5, 0x8

    :try_start_16
    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getTotalFarmers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 1237
    :try_start_17
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_15

    move/from16 v22, v4

    :try_start_18
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getPendingFarmersToSend(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_14

    .line 1238
    :try_start_19
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_13

    move/from16 v23, v4

    :try_start_1a
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDraftFarmersToSend(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v4
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_12

    .line 1240
    :try_start_1b
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_11

    move/from16 v24, v4

    const/4 v4, 0x4

    :try_start_1c
    invoke-virtual {v5, v4}, Lcom/conceptglobal/pmc/common/Queries;->getTotalFarmers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v5
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10

    .line 1241
    :try_start_1d
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f

    move/from16 v25, v5

    :try_start_1e
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/conceptglobal/pmc/common/Queries;->getPendingFarmersToSend(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v5
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_e

    .line 1242
    :try_start_1f
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_d

    move/from16 v26, v5

    :try_start_20
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/conceptglobal/pmc/common/Queries;->getDraftFarmersToSend(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_c

    .line 1246
    :try_start_21
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_4

    move/from16 v27, v4

    :try_start_22
    const-string v4, "ExpensesRequiredAttributeId"

    invoke-virtual {v5, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_5

    .line 1247
    :try_start_23
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_3

    move/from16 v28, v0

    :try_start_24
    const-string v0, "ExpensesRequiredConfigId"

    invoke-virtual {v5, v0}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_2

    move v4, v0

    move/from16 v0, v28

    goto :goto_3

    :catch_2
    move/from16 v0, v28

    goto :goto_2

    :catch_3
    move/from16 v28, v0

    goto :goto_2

    :catch_4
    move/from16 v27, v4

    :catch_5
    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x0

    .line 1250
    :goto_3
    :try_start_25
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_b

    move/from16 v28, v6

    :try_start_26
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lcom/conceptglobal/pmc/common/Queries;->getPendingExpenses(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v5

    .line 1251
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_a

    move/from16 v29, v7

    :try_start_27
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Lcom/conceptglobal/pmc/common/Queries;->getPendingExpensesSelf(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v6
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_9

    add-int/2addr v5, v6

    .line 1252
    :try_start_28
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Lcom/conceptglobal/pmc/common/Queries;->getSubmitedExpenses(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v6

    .line 1253
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_8

    move/from16 v30, v5

    :try_start_29
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lcom/conceptglobal/pmc/common/Queries;->getSubmitedExpensesNew(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    .line 1254
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getSubmitedExpensesSelf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_7

    add-int/2addr v6, v0

    .line 1256
    :try_start_2a
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getExpCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_6

    move/from16 v5, v17

    move/from16 v4, v23

    move/from16 v7, v29

    move/from16 v17, v6

    move-object/from16 v6, v21

    goto/16 :goto_21

    :catch_6
    move-exception v0

    move/from16 v5, v17

    move/from16 v7, v29

    move/from16 v17, v6

    move/from16 v6, v28

    goto/16 :goto_20

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    move/from16 v30, v5

    :goto_4
    move/from16 v5, v17

    move/from16 v6, v28

    move/from16 v7, v29

    const/16 v17, 0x0

    goto/16 :goto_20

    :catch_9
    move-exception v0

    move/from16 v5, v17

    move/from16 v6, v28

    move/from16 v7, v29

    goto :goto_5

    :catch_a
    move-exception v0

    move/from16 v29, v7

    move/from16 v5, v17

    move/from16 v6, v28

    goto :goto_5

    :catch_b
    move-exception v0

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v5, v17

    :goto_5
    const/16 v17, 0x0

    goto/16 :goto_1f

    :catch_c
    move-exception v0

    goto :goto_6

    :catch_d
    move-exception v0

    move/from16 v26, v5

    :goto_6
    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v5, v17

    const/16 v17, 0x0

    goto/16 :goto_1e

    :catch_e
    move-exception v0

    goto :goto_7

    :catch_f
    move-exception v0

    move/from16 v25, v5

    :goto_7
    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v5, v17

    const/16 v17, 0x0

    goto/16 :goto_1d

    :catch_10
    move-exception v0

    goto :goto_8

    :catch_11
    move-exception v0

    move/from16 v24, v4

    :goto_8
    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v5, v17

    const/16 v17, 0x0

    goto/16 :goto_1c

    :catch_12
    move-exception v0

    goto :goto_9

    :catch_13
    move-exception v0

    move/from16 v23, v4

    :goto_9
    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v5, v17

    const/16 v17, 0x0

    goto/16 :goto_1b

    :catch_14
    move-exception v0

    goto :goto_a

    :catch_15
    move-exception v0

    move/from16 v22, v4

    :goto_a
    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v5, v17

    const/16 v17, 0x0

    goto/16 :goto_1a

    :catch_16
    move-exception v0

    goto :goto_c

    :catch_17
    move-exception v0

    goto :goto_b

    :catch_18
    move-exception v0

    move/from16 v18, v4

    :goto_b
    move-object/from16 v21, v5

    :goto_c
    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v5, v17

    const/16 v17, 0x0

    goto/16 :goto_19

    :catch_19
    move-exception v0

    goto :goto_d

    :catch_1a
    move-exception v0

    move/from16 v20, v4

    :goto_d
    move-object/from16 v21, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v5, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto/16 :goto_19

    :catch_1b
    move-exception v0

    goto :goto_e

    :catch_1c
    move-exception v0

    move/from16 v19, v4

    :goto_e
    move-object/from16 v21, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v5, v17

    goto :goto_10

    :catch_1d
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v21, v5

    move/from16 v28, v6

    move/from16 v29, v7

    goto :goto_f

    :catch_1e
    move-exception v0

    move/from16 v19, v4

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v21, v3

    :goto_f
    move/from16 v5, v17

    const/4 v15, 0x0

    :goto_10
    const/16 v17, 0x0

    const/16 v18, 0x0

    goto/16 :goto_18

    :catch_1f
    move-exception v0

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v21, v3

    move/from16 v5, v17

    goto/16 :goto_17

    :catch_20
    move-exception v0

    move/from16 v17, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v21, v3

    goto/16 :goto_17

    :catch_21
    move-exception v0

    move/from16 v17, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v21, v3

    goto/16 :goto_16

    :catch_22
    move-exception v0

    move/from16 v17, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v21, v3

    const/4 v12, 0x0

    goto :goto_16

    :catch_23
    move-exception v0

    move/from16 v17, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v21, v3

    goto :goto_15

    :catch_24
    move-exception v0

    move/from16 v17, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v21, v3

    goto :goto_14

    :catch_25
    move-exception v0

    move/from16 v17, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v21, v3

    const/4 v9, 0x0

    goto :goto_14

    :catch_26
    move-exception v0

    move/from16 v17, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v21, v3

    goto :goto_13

    :catch_27
    move-exception v0

    move/from16 v17, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v21, v3

    goto :goto_12

    :catch_28
    move-exception v0

    move/from16 v17, v5

    move/from16 v29, v7

    move-object/from16 v21, v3

    const/4 v6, 0x0

    goto :goto_12

    :catch_29
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v21, v3

    goto :goto_11

    :catch_2a
    move-exception v0

    move-object/from16 v21, v3

    const/4 v5, 0x0

    :goto_11
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_12
    const/4 v8, 0x0

    :goto_13
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_14
    const/4 v11, 0x0

    :goto_15
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_16
    const/4 v14, 0x0

    :goto_17
    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_18
    const/16 v20, 0x0

    :goto_19
    const/16 v22, 0x0

    :goto_1a
    const/16 v23, 0x0

    :goto_1b
    const/16 v24, 0x0

    :goto_1c
    const/16 v25, 0x0

    :goto_1d
    const/16 v26, 0x0

    :goto_1e
    const/16 v27, 0x0

    :goto_1f
    const/16 v30, 0x0

    .line 1260
    :goto_20
    const-string v4, "HomePageFragment"

    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v28, v6

    move-object/from16 v6, v21

    move/from16 v4, v23

    .line 1262
    :goto_21
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v21

    move/from16 v23, v14

    invoke-virtual/range {v21 .. v21}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1263
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getLanguageConfigurations()V

    :cond_1
    const/4 v14, 0x0

    .line 1266
    :goto_22
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_26

    .line 1268
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getPdafunction()Ljava/lang/String;

    move-result-object v0

    move/from16 v16, v12

    const-string v12, "1"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move/from16 v21, v13

    if-eqz v0, :cond_2

    .line 1269
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1270
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1271
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1272
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerTotal()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription(Ljava/lang/String;)V

    .line 1273
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerPend()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription1(Ljava/lang/String;)V

    .line 1274
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount(Ljava/lang/String;)V

    .line 1275
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount1(Ljava/lang/String;)V

    .line 1276
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draft()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription2(Ljava/lang/String;)V

    .line 1277
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount2(Ljava/lang/String;)V

    const v12, 0x7f080141

    .line 1278
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1279
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_23
    move/from16 v32, v4

    move/from16 v33, v5

    goto/16 :goto_27

    .line 1280
    :cond_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getPdafunction()Ljava/lang/String;

    move-result-object v0

    const-string v12, "8"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1281
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1282
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1283
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addPlanterHomeText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1284
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerTotal()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription(Ljava/lang/String;)V

    .line 1285
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addFarmerPend()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription1(Ljava/lang/String;)V

    .line 1286
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount(Ljava/lang/String;)V

    .line 1287
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount1(Ljava/lang/String;)V

    .line 1288
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draft()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription2(Ljava/lang/String;)V

    .line 1289
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount2(Ljava/lang/String;)V

    const v12, 0x7f080141

    .line 1290
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1291
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 1292
    :cond_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getPdafunction()Ljava/lang/String;

    move-result-object v0

    const-string v12, "2"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1293
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1294
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1295
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailerText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1296
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailerTotal()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription(Ljava/lang/String;)V

    .line 1297
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailerPend()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription1(Ljava/lang/String;)V

    .line 1298
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount(Ljava/lang/String;)V

    .line 1299
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount1(Ljava/lang/String;)V

    .line 1300
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draft()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription2(Ljava/lang/String;)V

    .line 1301
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount2(Ljava/lang/String;)V

    const v12, 0x7f080176

    .line 1302
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1303
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 1304
    :cond_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getPdafunction()Ljava/lang/String;

    move-result-object v0

    const-string v13, "4"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1305
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1306
    invoke-virtual {v0, v13}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1307
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addVillageText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1308
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailerTotal()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription(Ljava/lang/String;)V

    .line 1309
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailerPend()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription1(Ljava/lang/String;)V

    .line 1310
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draft()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription2(Ljava/lang/String;)V

    .line 1311
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount(Ljava/lang/String;)V

    .line 1312
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount1(Ljava/lang/String;)V

    .line 1313
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount2(Ljava/lang/String;)V

    const v12, 0x7f08020c

    .line 1314
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1315
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 1316
    :cond_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v13, "SelfAssignment"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1317
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1318
    const-string v12, "11"

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1319
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selfAssignText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription(Ljava/lang/String;)V

    .line 1322
    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draft()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription2(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount1(Ljava/lang/String;)V

    .line 1325
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount2(Ljava/lang/String;)V

    const v12, 0x7f08017c

    .line 1326
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1327
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 1328
    :cond_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v13, "ToDo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1329
    new-instance v13, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v13}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1330
    const-string v0, "12"

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1331
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v31

    move/from16 v32, v4

    invoke-virtual/range {v31 .. v31}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_toDoText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1332
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_todoPendText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription(Ljava/lang/String;)V

    .line 1334
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draft()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription1(Ljava/lang/String;)V

    .line 1335
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->validateFarmerWithOTP()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->validateRetailerWithOTP()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_24

    :cond_7
    move/from16 v33, v5

    goto :goto_26

    .line 1337
    :cond_8
    :goto_24
    :try_start_2b
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getUnVerifiedFarmersCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int v0, v23, v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_2c

    move/from16 v33, v5

    :try_start_2c
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/conceptglobal/pmc/common/Queries;->getUnVerifiedRetailersCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2b

    add-int v23, v0, v4

    goto :goto_26

    :catch_2b
    move-exception v0

    goto :goto_25

    :catch_2c
    move-exception v0

    move/from16 v33, v5

    .line 1339
    :goto_25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1342
    :goto_26
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount(Ljava/lang/String;)V

    .line 1344
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount1(Ljava/lang/String;)V

    .line 1345
    const-string v0, "Eligible :"

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription2(Ljava/lang/String;)V

    .line 1346
    const-string v0, "0"

    invoke-virtual {v13, v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount2(Ljava/lang/String;)V

    const v4, 0x7f080189

    .line 1355
    invoke-virtual {v13, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1356
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    :cond_9
    move/from16 v32, v4

    move/from16 v33, v5

    .line 1357
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Survey"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v4, 0x7f080184

    if-eqz v0, :cond_a

    .line 1358
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1359
    const-string v5, "30"

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1360
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1361
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_todoPendText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription(Ljava/lang/String;)V

    .line 1364
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount1(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount2(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1377
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1378
    :cond_a
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Attendance"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v5, 0x7f080188

    if-eqz v0, :cond_b

    .line 1379
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1380
    const-string v4, "15"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1381
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_attendance()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1382
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setFunctionID(I)V

    .line 1389
    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1390
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1391
    :cond_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v12, "Orders"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1392
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1393
    const-string v4, "13"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1395
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1403
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1404
    :cond_c
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v12, "Complaints"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1405
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1406
    const-string v4, "14"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1407
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1415
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1416
    :cond_d
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v12, "Reports"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v12, 0x7f080175

    if-eqz v0, :cond_e

    .line 1417
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1418
    const-string v4, "25"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1419
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1427
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1428
    :cond_e
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v13, "Rewards"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1429
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1430
    const-string v4, "33"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1431
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1439
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1440
    :cond_f
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v12, "Planning"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1441
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1442
    const-string v4, "26"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1443
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1451
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1470
    :cond_10
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v12, "AttendanceApproval"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v12, 0x7f0800f3

    if-eqz v0, :cond_11

    .line 1471
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1472
    const-string v4, "10"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1473
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1475
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1476
    :cond_11
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v13, "AttendanceReport"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1477
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1478
    const-string v4, "16"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1479
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1481
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1482
    :cond_12
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v13, "MDOLocation"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1483
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1484
    const-string v4, "31"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1485
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1487
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1488
    :cond_13
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v12, "Marketing Material"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1489
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1490
    const-string v4, "1119"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1491
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    const v4, 0x7f08016f

    .line 1492
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1493
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1494
    :cond_14
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v12, "Testimonial"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1495
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1496
    const-string v4, "1120"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1497
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1498
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draft()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription2(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount1(Ljava/lang/String;)V

    .line 1501
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount2(Ljava/lang/String;)V

    const v4, 0x7f080187

    .line 1502
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1503
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1504
    :cond_15
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v12, "FeedBackForm"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1505
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1506
    const-string v5, "1125"

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1507
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1508
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1509
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1510
    :cond_16
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getPdafunction()Ljava/lang/String;

    move-result-object v0

    const-string v12, "3"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1511
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1512
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1513
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addDistributorText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1514
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailerTotal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription(Ljava/lang/String;)V

    .line 1515
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addRetailerPend()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription1(Ljava/lang/String;)V

    .line 1516
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount(Ljava/lang/String;)V

    .line 1517
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount1(Ljava/lang/String;)V

    .line 1518
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draft()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription2(Ljava/lang/String;)V

    .line 1519
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount2(Ljava/lang/String;)V

    const v4, 0x7f080176

    .line 1520
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1521
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1522
    :cond_17
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v12, "TargetPlanEvents"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v12, "20"

    if-eqz v0, :cond_18

    .line 1523
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1524
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1525
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_PlanAndExecutionText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    const v4, 0x7f080186

    .line 1528
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1529
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1530
    :cond_18
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v13, "PackageofPractice"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1531
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1532
    const-string v4, "1181"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1533
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    const v4, 0x7f08016e

    .line 1536
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1537
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1538
    :cond_19
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v13, "MandiPrice"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1539
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1540
    const-string v4, "29"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1541
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1542
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setFunctionID(I)V

    const v4, 0x7f080158

    .line 1549
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1550
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1551
    :cond_1a
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v13, "Channel Orders"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1552
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1553
    const-string v4, "28"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1554
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    const v4, 0x7f08017c

    .line 1557
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1558
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1559
    :cond_1b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v13, "WeeklyTourPlan"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1560
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1561
    invoke-virtual {v0, v12}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1562
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1565
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1566
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1567
    :cond_1c
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v12, "powerBI"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1568
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1569
    const-string v5, "420"

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1570
    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1572
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1574
    :cond_1d
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ApplyLeave"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1575
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1576
    const-string v4, "192"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1577
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1586
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1587
    :cond_1e
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UserCreation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1588
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1589
    const-string v4, "193"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1590
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1598
    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1599
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1600
    :cond_1f
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ApproveResignations"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1601
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1602
    const-string v4, "194"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1603
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1612
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1613
    :cond_20
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AttendanceRegularization"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1614
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1615
    const-string v4, "195"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1616
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1625
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1626
    :cond_21
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Policy"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1627
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1628
    const-string v4, "196"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1629
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1638
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1639
    :cond_22
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Abscond"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1640
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1641
    const-string v4, "200"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1642
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1650
    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1651
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    .line 1652
    :cond_23
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Expenses"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1653
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1654
    const-string v4, "32"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1655
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    .line 1656
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_expensesPendText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription(Ljava/lang/String;)V

    .line 1657
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getpmc_expensesSibmitText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDescription1(Ljava/lang/String;)V

    .line 1660
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount(Ljava/lang/String;)V

    .line 1661
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setCount1(Ljava/lang/String;)V

    const v4, 0x7f080189

    .line 1671
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1672
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 1673
    :cond_24
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/UserFunctions;->getNavigationUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Task Assign"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1674
    new-instance v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;-><init>()V

    .line 1675
    const-string v4, "34"

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setModuleid(Ljava/lang/String;)V

    .line 1676
    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->userFunctions:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/UserFunctions;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/UserFunctions;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setTitle(Ljava/lang/String;)V

    const v4, 0x7f08017c

    .line 1692
    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->setDrawable(I)V

    .line 1693
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_27
    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v16

    move/from16 v13, v21

    move/from16 v4, v32

    move/from16 v5, v33

    goto/16 :goto_22

    :cond_26
    return-object v2
.end method

.method private getLanguageConfigurations()V
    .locals 4

    .line 2124
    const-string v0, "HomePageFragment"

    :try_start_0
    new-instance v1, Lcom/conceptglobal/pmc/utils/SharedPrefManager;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;-><init>()V

    .line 2125
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getPMCLanguage(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2127
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->getStrings(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFOLables(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2129
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2130
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2133
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2134
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getLocation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->fetchLocation()V

    goto :goto_0

    .line 552
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getWeatherInCache()V

    :goto_0
    return-void
.end method

.method private getLoginStatus()Z
    .locals 4

    .line 2300
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x3

    .line 2302
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 2303
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2304
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/common/Queries;->getLoginTimeStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIsRecordExists(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private getTickerData()V
    .locals 3

    .line 246
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPricesListData()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tableBeansHashmap:Ljava/util/HashMap;

    .line 247
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->ll_ticker:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->scrollTextView:Lcom/conceptglobal/pmc/utils/ScrollTextView;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tableBeansHashmap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->keysList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->ll_ticker:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->scrollTextView:Lcom/conceptglobal/pmc/utils/ScrollTextView;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private getWeatherInCache()V
    .locals 11

    .line 740
    const-string v0, "HomePageFragment"

    .line 0
    const-string v1, "/weather_temp1.txt"

    .line 740
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const/4 v3, 0x1

    .line 743
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 746
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tempFile:Ljava/io/File;

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tempFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 752
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 755
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 756
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 758
    :cond_0
    new-instance v4, Ljava/io/StringReader;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/conceptglobal/pmc/model/WeatherCacheModel;

    invoke-virtual {v2, v4, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/WeatherCacheModel;

    .line 759
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->getCity()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->cityWeather:Ljava/lang/String;

    .line 760
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->countryWeather:Ljava/lang/String;

    .line 761
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 762
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->latitude:D

    .line 763
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->longitude:D

    .line 765
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->getCurrentWeather()Lcom/conceptglobal/pmc/model/Weather;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    iput v3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->todayWeather:I

    .line 768
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->getForecastWeatherList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 769
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 770
    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->forecastWeatherList:Ljava/util/List;

    .line 771
    iput v3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->forecastWeather:I

    .line 772
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 774
    :cond_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    .line 776
    :try_start_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->getTimeUpdated()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 777
    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->isBeforeDay(Ljava/util/Date;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, ""

    if-eqz v5, :cond_4

    .line 778
    :try_start_2
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->getIsCurrentLocation()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->latitude:D

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->longitude:D

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getWeatherInfo(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 781
    :cond_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->cityWeather:Ljava/lang/String;

    invoke-direct {p0, v1, v6, v4, v4}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getWeatherInfo(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 784
    :cond_4
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->getCurrentWeatherUpdatedTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 785
    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->differenceInMinutes(Ljava/util/Date;)J

    move-result-wide v7

    const-wide/16 v9, 0x3c

    cmp-long v2, v7, v9

    if-lez v2, :cond_6

    .line 786
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->getIsCurrentLocation()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->latitude:D

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->longitude:D

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getWeatherInfo(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 789
    :cond_5
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->cityWeather:Ljava/lang/String;

    invoke-direct {p0, v1, v6, v4, v3}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getWeatherInfo(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 794
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :cond_6
    :goto_1
    invoke-direct {p0, v4}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setWeatherView(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 800
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getLocation(Z)V

    :goto_2
    return-void
.end method

.method private getWeatherInfo(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    new-instance v0, Lcom/conceptglobal/pmc/model/Weather;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/Weather;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->currentWeather:Lcom/conceptglobal/pmc/model/Weather;

    .line 563
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p4, :cond_0

    goto :goto_0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->forecastWeatherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 570
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 619
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    if-nez p4, :cond_1

    .line 621
    new-instance p4, Ljava/lang/Thread;

    new-instance v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 664
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private init()V
    .locals 4

    .line 415
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 418
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->inflaterLoc:Landroid/view/LayoutInflater;

    .line 419
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0905fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherView:Landroidx/recyclerview/widget/RecyclerView;

    .line 420
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 421
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 422
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 424
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09035c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->progressLayout:Landroid/widget/RelativeLayout;

    .line 425
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0905fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherMainLayout:Landroid/widget/RelativeLayout;

    .line 426
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090332

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->noWeatherText:Landroid/widget/TextView;

    .line 427
    new-instance v0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherList:Ljava/util/List;

    invoke-direct {v0, v1, v3}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherAdapter:Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;

    .line 428
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 429
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->cityText:Landroid/widget/TextView;

    .line 430
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0902d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->cityEntryEditText:Landroid/widget/EditText;

    .line 431
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getLocationWeatherBtn:Landroid/widget/ImageView;

    .line 432
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getCityWeatherBtn:Landroid/widget/Button;

    .line 433
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0905d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/utils/ScrollTextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->scrollTextView:Lcom/conceptglobal/pmc/utils/ScrollTextView;

    .line 434
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0905cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->txt_marketname:Landroid/widget/TextView;

    .line 435
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0902c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->ll_ticker:Landroid/widget/LinearLayout;

    .line 439
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09039d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rvGridItems:Landroidx/recyclerview/widget/RecyclerView;

    .line 440
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 441
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 442
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 444
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rvGridItems:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 470
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getLocationWeatherBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getCityWeatherBtn:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$3;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initialization()V
    .locals 2

    .line 838
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 841
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setAdapter()V

    return-void
.end method

.method public static isAfterDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 1866
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    return v0

    .line 1867
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    return v3

    .line 1868
    :cond_1
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v1, v2, :cond_2

    return v0

    .line 1869
    :cond_2
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le v1, v2, :cond_3

    return v3

    :cond_3
    const/4 v1, 0x6

    .line 1870
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-le p0, p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    .line 1864
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isAfterDay(Ljava/util/Date;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1855
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1856
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1857
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 1859
    invoke-static {v0, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->isAfterDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    .line 1853
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The dates must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isBeforeDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 1889
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    return v3

    .line 1890
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le v1, v2, :cond_1

    return v0

    .line 1891
    :cond_1
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v1, v2, :cond_2

    return v3

    .line 1892
    :cond_2
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le v1, v2, :cond_3

    return v0

    :cond_3
    const/4 v1, 0x6

    .line 1893
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ge p0, p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    .line 1887
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isBeforeDay(Ljava/util/Date;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1877
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1878
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1879
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 1881
    invoke-static {v0, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->isBeforeDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    .line 1875
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The dates must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private notifyUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1149
    const-string v0, "HomePageFragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1150
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->isActivityInForeground:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1151
    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setRefreshActionButtonState(Z)V

    .line 1153
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1154
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1156
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mHandler:Landroid/os/Handler;

    .line 1157
    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->msg:Ljava/lang/String;

    .line 1158
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1159
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->checkCountForSynFO()V

    .line 1160
    iget p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->countSync:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->menuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    const p2, 0x7f08010d

    .line 1161
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1163
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setAdapter()V

    goto :goto_0

    .line 1164
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isAppRunningInForeground(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1165
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mHandler:Landroid/os/Handler;

    .line 1166
    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->msg:Ljava/lang/String;

    .line 1167
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private saveWeatherInCache(Lcom/conceptglobal/pmc/model/WeatherCacheModel;)V
    .locals 4

    const-string v0, "/weather_temp1.txt"

    .line 716
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 717
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 720
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 722
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tempFile:Ljava/io/File;

    .line 725
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tempFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 728
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 733
    const-string v0, "HomePageFragment"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendHoeLocationDetailsToserver(Lcom/conceptglobal/pmc/model/HomeLocationDetails;)V
    .locals 1

    .line 407
    :try_start_0
    new-instance p1, Lcom/conceptglobal/pmc/fragments/HomePageFragment$SendSDTVTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$SendSDTVTask;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Lcom/conceptglobal/pmc/fragments/HomePageFragment$1;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$SendSDTVTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 409
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private sendHomeLocationDetails()V
    .locals 7

    const/4 v0, 0x0

    .line 2335
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getHomeAddressDetais()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getHomeAddressInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/HomeLocationDetails;

    move-result-object v1

    .line 2336
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 2337
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2338
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/HomeLocationDetails;->setPdaId(Ljava/lang/String;)V

    .line 2340
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2341
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v3

    .line 2342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodsaveHomeLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2344
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v5

    invoke-virtual {v5, v1, v4, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2345
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 2346
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AUTHORISED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sucess"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2348
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2349
    const-string v2, "HomeLocationSyncStatus"

    const-string v3, "True"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateUserDetailsFOHomeLocation(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 2351
    :cond_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNAUTHORISED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2355
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getGeoDetails"

    const-string v3, "HomePageFragment"

    invoke-static {v3, v1, v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setAdapter()V
    .locals 3

    .line 846
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->homePageGridAdapter:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    .line 847
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rvGridItems:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 848
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->homePageGridAdapter:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 850
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private varargs setAlpha(F[Landroid/view/View;)V
    .locals 3

    .line 2111
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 2112
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setRefreshActionButtonState(Z)V
    .locals 2

    .line 1087
    sget-object v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->scontext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment$10;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$10;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setWeatherView(Z)V
    .locals 5

    .line 670
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->todayWeather:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->forecastWeather:I

    if-eq v3, v2, :cond_1

    :cond_0
    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->forecastWeather:I

    if-nez v0, :cond_6

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 672
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->forecastWeatherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherList:Ljava/util/List;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->forecastWeatherList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherAdapter:Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 676
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->progressLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->noWeatherText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->cityText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->cityWeather:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 681
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->cityText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->cityWeather:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->countryWeather:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz p1, :cond_7

    .line 684
    new-instance p1, Lcom/conceptglobal/pmc/model/WeatherCacheModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;-><init>()V

    .line 685
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->cityWeather:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->setCity(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->countryWeather:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->setCountry(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->currentWeather:Lcom/conceptglobal/pmc/model/Weather;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->setCurrentWeather(Lcom/conceptglobal/pmc/model/Weather;)V

    .line 688
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->forecastWeatherList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->setForecastWeatherList(Ljava/util/List;)V

    .line 689
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->isLocationWeather:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->setIsCurrentLocation(I)V

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->latitude:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->setLatitude(Ljava/lang/String;)V

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->longitude:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->setLongitude(Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 693
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->setTimeUpdated(Ljava/lang/String;)V

    .line 694
    iget v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->todayWeather:I

    if-ne v1, v2, :cond_4

    .line 695
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->setCurrentWeatherUpdatedTime(Ljava/lang/String;)V

    .line 697
    :cond_4
    iget v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->forecastWeather:I

    if-ne v1, v2, :cond_5

    .line 698
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->setForecastWeatherUpdatedTime(Ljava/lang/String;)V

    .line 700
    :cond_5
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->saveWeatherInCache(Lcom/conceptglobal/pmc/model/WeatherCacheModel;)V

    goto :goto_0

    .line 705
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->cityText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 707
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 708
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->noWeatherText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 1047
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1048
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/HomePageFragment$7;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$7;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1054
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1055
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1056
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertDialogLogout(Ljava/lang/String;)V
    .locals 3

    .line 2276
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2277
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/HomePageFragment$20;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$20;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2289
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2290
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2291
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2292
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showHomeLocationUpdateAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 1063
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1064
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/HomePageFragment$9;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$9;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment$8;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$8;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    .line 1071
    const-string v2, "Update Later"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1077
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1078
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1079
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showOverLayWalkthrough()V
    .locals 5

    .line 1922
    new-instance v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$13;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$13;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    .line 1931
    new-instance v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment$14;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$14;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    .line 1940
    new-instance v2, Lcom/conceptglobal/pmc/fragments/HomePageFragment$15;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$15;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    .line 1949
    new-instance v3, Lcom/conceptglobal/pmc/fragments/HomePageFragment$16;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$16;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    .line 1957
    new-instance v3, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;-><init>(Landroid/app/Activity;)V

    .line 1959
    invoke-virtual {v3, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const-string v3, "Sync Icon"

    .line 1960
    invoke-virtual {v0, v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const-string v3, "Click here for update in data."

    .line 1961
    invoke-virtual {v0, v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    .line 1963
    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->withMaterialShowcase()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const v3, 0x7f1100e7

    .line 1965
    invoke-virtual {v0, v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setStyle(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    new-instance v3, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;

    invoke-direct {v3, p0, v1, v2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Lcom/github/amlcurran/showcaseview/targets/Target;Lcom/github/amlcurran/showcaseview/targets/Target;)V

    .line 1966
    invoke-virtual {v0, v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    .line 2025
    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->build()Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 2026
    const-string v1, "Next"

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showPopupForLocationTracker()V
    .locals 5

    .line 498
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 499
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0c005a

    .line 500
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f090166

    .line 501
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f09007b

    .line 502
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 504
    new-instance v4, Lcom/conceptglobal/pmc/fragments/HomePageFragment$4;

    invoke-direct {v4, p0, v2, v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$4;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 524
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 525
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 526
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private validateFarmerWithOTP()Z
    .locals 5

    const/4 v0, 0x0

    .line 2216
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

    .line 2217
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 2218
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 2219
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 2220
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 2221
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

    .line 2228
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method private validateRetailerWithOTP()Z
    .locals 5

    const/4 v0, 0x0

    .line 2236
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "RetailerOTPRoleId"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithActiveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2237
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 2238
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 2239
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 2240
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 2241
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

    .line 2248
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public fragmentCommunication()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 336
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 337
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    .line 338
    new-instance p1, Lcom/conceptglobal/pmc/SyncResultReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/SyncResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    .line 339
    invoke-virtual {p1, p0}, Lcom/conceptglobal/pmc/SyncResultReceiver;->setReceiver(Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;)V

    .line 340
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/PMCApplication;

    const/4 p1, 0x1

    .line 342
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setHasOptionsMenu(Z)V

    .line 344
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 345
    const-string v0, "android.intent.action.GPSTurnedOnForWeather"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    new-instance v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Lcom/conceptglobal/pmc/fragments/HomePageFragment$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;

    .line 348
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 913
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 914
    sput-object p1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->optionsMenu:Landroid/view/Menu;

    const v0, 0x7f090413

    .line 915
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->menuItem:Landroid/view/MenuItem;

    .line 916
    iget v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->countSync:I

    if-nez v1, :cond_0

    const v1, 0x7f08010d

    .line 917
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const v1, 0x7f08010e

    .line 919
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 921
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->menuItem:Landroid/view/MenuItem;

    const v1, 0x7f0c001d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f0903e4

    .line 928
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->reportItem:Landroid/view/MenuItem;

    .line 929
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 930
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->reportItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 931
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->reportItem:Landroid/view/MenuItem;

    const v1, 0x7f0801f3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 933
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->reportItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 934
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->reportItem:Landroid/view/MenuItem;

    const v1, 0x7f0801f5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_1
    const v0, 0x7f0905fe

    .line 937
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherItem:Landroid/view/MenuItem;

    .line 939
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c002f

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    .line 209
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    .line 210
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->scontext:Landroid/content/Context;

    .line 211
    new-instance p1, Lcom/conceptglobal/pmc/smartalerts/Basics;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/conceptglobal/pmc/smartalerts/Basics;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    .line 212
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    const-string p2, "MyPref"

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 213
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->editor:Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->init()V

    .line 216
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getDataFromDB()V

    .line 221
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyTicketVisibility()Ljava/lang/String;

    move-result-object p2

    const-string p3, "True"

    invoke-static {p1, p2, p3}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 222
    const-string p2, "False"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->ll_ticker:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->ll_ticker:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getTickerData()V

    .line 228
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->scrollTextView:Lcom/conceptglobal/pmc/utils/ScrollTextView;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->getVal()I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tickerPos:I

    .line 229
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tableBeansHashmap:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->keysList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setTickerData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 235
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "location"

    const-string p3, ""

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->location:Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tickermessge:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "gettickercall"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 237
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->location:Ljava/lang/String;

    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->checkHomeLocationStatus()V

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 818
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 819
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mLocalBroadcastReceiver:Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 820
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tickermessge:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 944
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_c

    const v1, 0x7f090413

    if-eq v0, v1, :cond_3

    const v1, 0x7f0905fe

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    .line 950
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_1

    .line 951
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 952
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 953
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherMainLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 954
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getLocationWeatherBtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    .line 956
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->weatherMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return v2

    .line 966
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "receiver"

    const-string v3, "HomePageFragment"

    if-eqz v0, :cond_9

    .line 967
    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setRefreshActionButtonState(Z)V

    .line 968
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->countSync:I

    const-string v4, "callbackActivity"

    if-eqz v0, :cond_6

    .line 969
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v5, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 970
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 971
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 973
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 976
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dataSendBGToast()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 978
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v5, Lcom/conceptglobal/pmc/service/MasterSyncService;

    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 979
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/conceptglobal/pmc/service/MasterSyncService;

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 980
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 982
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_4

    .line 985
    :cond_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dataSendBGToast()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 997
    :cond_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v5, Lcom/conceptglobal/pmc/service/MasterSyncService;

    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 998
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/conceptglobal/pmc/service/MasterSyncService;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 999
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1001
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 1004
    :cond_7
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dataSendBGToast()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1006
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v5, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v5}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1007
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1008
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1010
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_4

    .line 1012
    :cond_8
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dataSendBGToast()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 1026
    :cond_9
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_CannotSyncAlertText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_CannotSyncAlertText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_a
    const-string v2, ""

    :goto_3
    sget-object v4, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {v0, v2, v4}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    .line 1028
    :goto_4
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getCountForFOTrackerSync()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1029
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    const-class v4, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1030
    const-string v2, "capallbackActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1032
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1042
    :cond_b
    :goto_5
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 946
    :cond_c
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return v2
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 834
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 808
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 810
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/PMCApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/PMCApplication;->setIsHomeFragmentActive(Z)V

    .line 811
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->telManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 812
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->myListener:Lcom/conceptglobal/pmc/fragments/HomePageFragment$MyPhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1129
    :cond_0
    const-string p1, "respMsg"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1130
    const-string v0, "callbackActivity"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Act response--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomePageFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Act callbackActivity--"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->countSync:I

    if-eqz v0, :cond_1

    .line 1134
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->notifyUser(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1136
    :cond_1
    const-string p1, "Data synchronized"

    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->notifyUser(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1124
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 367
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 374
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->initialization()V

    .line 375
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->checkCountForSynFO()V

    .line 376
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getGsmLevels()I

    .line 377
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/PMCApplication;

    const/4 v1, 0x1

    .line 379
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/PMCApplication;->setIsHomeFragmentActive(Z)V

    .line 380
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setRefreshActionButtonState(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 385
    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setRefreshActionButtonState(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method setTickerData(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/TableBean;",
            ">;)V"
        }
    .end annotation

    .line 295
    const-string v0, "-"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "#C5C5C5"

    if-eqz v3, :cond_7

    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/TableBean;

    .line 298
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getCommodity()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, ""

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getCommodity()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v5

    .line 299
    :goto_1
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getMarket()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getMarket()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    move-object v6, v5

    .line 300
    :goto_2
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getVariety()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getVariety()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_2
    move-object v7, v5

    .line 301
    :goto_3
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getArrival_date()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getArrival_date()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_3
    move-object v8, v5

    .line 302
    :goto_4
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getMin_price()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getMin_price()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_4
    move-object v9, v5

    :goto_5
    const-string v10, "#FF0000"

    invoke-direct {p0, v9, v10}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getColoredSpanned(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 303
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getMax_price()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getMax_price()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_5
    move-object v10, v5

    :goto_6
    const-string v11, "#2EC54A"

    invoke-direct {p0, v10, v11}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getColoredSpanned(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 304
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getModal_price()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/TableBean;->getModal_price()Ljava/lang/String;

    move-result-object v5

    :cond_6
    const-string v2, "#009fe3"

    invoke-direct {p0, v5, v2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getColoredSpanned(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")-"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Min Price-"

    invoke-direct {p0, v3, v4}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getColoredSpanned(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Max Price-"

    invoke-direct {p0, v3, v4}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getColoredSpanned(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Modal Price-"

    invoke-direct {p0, v3, v4}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getColoredSpanned(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v6

    goto/16 :goto_0

    .line 316
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->txt_marketname:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Market-"

    invoke-direct {p0, v3, v4}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getColoredSpanned(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->scrollTextView:Lcom/conceptglobal/pmc/utils/ScrollTextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->scrollTextView:Lcom/conceptglobal/pmc/utils/ScrollTextView;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->startScroll()V

    .line 320
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->scrollTextView:Lcom/conceptglobal/pmc/utils/ScrollTextView;

    iget v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tickerPos:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setVal(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 322
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void
.end method
