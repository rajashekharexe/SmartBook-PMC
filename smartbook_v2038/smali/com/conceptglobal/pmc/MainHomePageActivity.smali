.class public Lcom/conceptglobal/pmc/MainHomePageActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "MainHomePageActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/fragments/FragmentDrawer$FragmentDrawerListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;
.implements Lcom/conceptglobal/pmc/interfaces/OnEndDayListener;


# static fields
.field public static final REQUEST_CHECK_LOCATION_PERMISSION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MainHomePageActivity"


# instance fields
.field private basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

.field builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

.field private context:Landroid/content/Context;

.field private counter:I

.field dateTime:Ljava/lang/String;

.field dialogCrops:Landroid/app/Dialog;

.field private dl_navigator:Landroidx/drawerlayout/widget/DrawerLayout;

.field private doubleBackToExitPressedOnce:Z

.field private drawerFragment:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

.field editor:Landroid/content/SharedPreferences$Editor;

.field public endBtn:Landroid/widget/Button;

.field private getClearDBSMSListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field isCustomCamera:Ljava/lang/Boolean;

.field isitToday:Ljava/lang/Boolean;

.field location:Ljava/lang/String;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private mLogoutReceiver:Landroid/content/BroadcastReceiver;

.field public mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field millis:J

.field private parent:Landroid/widget/RelativeLayout;

.field private reciever:Landroid/content/BroadcastReceiver;

.field private sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

.field sharedPreferences:Landroid/content/SharedPreferences;

.field private showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

.field startDateDBvalues:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 116
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 139
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 123
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->doubleBackToExitPressedOnce:Z

    const/4 v2, 0x0

    .line 129
    iput-object v2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    .line 131
    iput v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->counter:I

    .line 138
    iput-object v2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->startDateDBvalues:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->isitToday:Ljava/lang/Boolean;

    .line 589
    iput-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->isCustomCamera:Ljava/lang/Boolean;

    .line 935
    new-instance v0, Lcom/conceptglobal/pmc/MainHomePageActivity$16;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$16;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->reciever:Landroid/content/BroadcastReceiver;

    .line 967
    new-instance v0, Lcom/conceptglobal/pmc/MainHomePageActivity$17;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$17;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mLogoutReceiver:Landroid/content/BroadcastReceiver;

    .line 1123
    new-instance v0, Lcom/conceptglobal/pmc/MainHomePageActivity$20;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$20;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getClearDBSMSListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showEnddayReportDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/MainHomePageActivity;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/MainHomePageActivity;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showPopupForLocationTrackerEnd()V

    return-void
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->fetchLocationEndDay()V

    return-void
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/MainHomePageActivity;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->perFormEnddayOperation(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/MainHomePageActivity;)Lcom/conceptglobal/pmc/smartalerts/Basics;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/MainHomePageActivity;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->fetchLocationAndStartDay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/MainHomePageActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showDialogLogout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/MainHomePageActivity;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->doubleBackToExitPressedOnce:Z

    return p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/MainHomePageActivity;)Lcom/conceptglobal/pmc/fragments/FragmentDrawer;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->drawerFragment:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/MainHomePageActivity;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/MainHomePageActivity;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->counter:I

    return p0
.end method

.method static synthetic access$808(Lcom/conceptglobal/pmc/MainHomePageActivity;)I
    .locals 2

    .line 116
    iget v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->counter:I

    return v0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/MainHomePageActivity;)Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    return-object p0
.end method

.method private checkPwdExp()V
    .locals 6

    .line 1516
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getGetPasswordChangedDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1517
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1518
    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->diffDays(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1519
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "PWDExpiryDays"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v1, 0x1e

    .line 1523
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 1524
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdatePaswordDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 1525
    const-string v0, "Password expired! please change password and re-login again to continue to this."

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showChangePWDAlert(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1529
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private fetchLocation()V
    .locals 4

    .line 1348
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1352
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/MainHomePageActivity$26;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$26;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    const-string v2, "MainHomePageActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1370
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private fetchLocationAndStartDay(Ljava/lang/String;)V
    .locals 3

    .line 1412
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1413
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p1, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1416
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/MainHomePageActivity$28;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity$28;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;Ljava/lang/String;)V

    const-string p1, "MainHomePageActivity"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1499
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private fetchLocationEndDay()V
    .locals 4

    .line 1377
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1381
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/MainHomePageActivity$27;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$27;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    const-string v2, "MainHomePageActivity"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1405
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getCurrentFragment()Z
    .locals 3

    .line 633
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 636
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 637
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HomePageFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getLanguageConfigurations()V
    .locals 4

    .line 329
    const-string v0, "MainHomePageActivity"

    :try_start_0
    new-instance v1, Lcom/conceptglobal/pmc/utils/SharedPrefManager;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;-><init>()V

    .line 330
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getPMCLanguage(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
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

    .line 334
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 338
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getLiveStatusSMS()V
    .locals 7

    .line 1114
    new-instance v0, Lcom/conceptglobal/pmc/model/ClearDBSMSModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/ClearDBSMSModel;-><init>()V

    .line 1115
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ClearDBSMSModel;->setPdaID(Ljava/lang/String;)V

    .line 1116
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1118
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getClearDBSMSListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    .line 1119
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodLiveOrClearDB()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/DeleteDb"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    const/4 v1, 0x0

    .line 1120
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private init()V
    .locals 4

    .line 349
    iput-object p0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    .line 350
    new-instance v0, Lcom/conceptglobal/pmc/smartalerts/Basics;

    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/smartalerts/Basics;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    const v0, 0x7f090139

    .line 351
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dl_navigator:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 352
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090210

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    iput-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->drawerFragment:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    .line 353
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v3, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2, v0, v3}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->setUp(ILandroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;)V

    .line 354
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->drawerFragment:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->setDrawerListener(Lcom/conceptglobal/pmc/fragments/FragmentDrawer$FragmentDrawerListener;)V

    .line 355
    new-instance v0, Lcom/conceptglobal/pmc/SyncResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/SyncResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    .line 356
    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/SyncResultReceiver;->setReceiver(Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;)V

    const v0, 0x7f090343

    .line 357
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->parent:Landroid/widget/RelativeLayout;

    const v0, 0x7f09007b

    .line 358
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->endBtn:Landroid/widget/Button;

    return-void
.end method

.method private perFormEnddayOperation(Z)V
    .locals 5

    .line 1256
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "location"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Start day"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "End day"

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1259
    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDateTimeBefore(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dateTime:Ljava/lang/String;

    goto :goto_0

    .line 1261
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dateTime:Ljava/lang/String;

    .line 1264
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1266
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1267
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/smartalerts/Basics;->stopLocationTrackerService()V

    .line 1268
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dateTime:Ljava/lang/String;

    const-string v0, "na"

    invoke-static {p1, v2, v0, v0}, Lcom/conceptglobal/pmc/fotracker/database/InsertDataIntoDB;->updateCloseDayFOTrackerHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->endBtn:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1270
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    const-string v0, "Foreground Service Completed."

    const/4 v4, 0x0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1271
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getCountForFOTrackerSync()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    const-class v0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1272
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;

    invoke-direct {p1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1273
    const-class v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    const-string v0, "HomePageFragment"

    const-string v4, "capallbackActivity"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1274
    const-string v0, "receiver"

    iget-object v4, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1275
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1287
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getTodayRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 1288
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showPopupForLocationTracker()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1291
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private saveNotificationIdtoPref()V
    .locals 2

    .line 1535
    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/MainHomePageActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$$ExternalSyntheticLambda1;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1549
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private shareDbtoMedia()V
    .locals 5

    .line 1209
    const-string v0, "/"

    :try_start_0
    new-instance v1, Lcom/conceptglobal/pmc/utils/FileZipping;

    iget-object v2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/utils/FileZipping;-><init>(Landroid/content/Context;)V

    .line 1211
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/conceptglobal/pmc/utils/FileUtils;

    invoke-direct {v4}, Lcom/conceptglobal/pmc/utils/FileUtils;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getRootfolderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getImageFiledate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_LOG.zip"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1212
    sget-object v0, Lcom/conceptglobal/pmc/database/DataBaseHandler;->datapath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/conceptglobal/pmc/utils/FileZipping;->zip_File(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1213
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1214
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1215
    const-string v2, "application/zip"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    iget-object v2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    const-string v3, "com.conceptglobal.pmcdeepakfertilizers.provider"

    invoke-static {v2, v3, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1217
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1218
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1219
    const-string v2, "Share via"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1221
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private showAboutPMC()V
    .locals 8

    .line 839
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 840
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_aboutPMCNav()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c0126

    .line 841
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090595

    .line 842
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090596

    .line 843
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09051f

    .line 844
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090520

    .line 845
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090356

    .line 846
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 847
    iget-object v6, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_buildVersionText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v6, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_appVersionText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0900c3

    .line 849
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 850
    iget-object v6, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x8

    .line 851
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 852
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 853
    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10011d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 856
    new-instance v1, Lcom/conceptglobal/pmc/MainHomePageActivity$14;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity$14;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 863
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 864
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 865
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v2, -0x1

    .line 866
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 867
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 868
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 869
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    .line 1177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1178
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

    new-instance v2, Lcom/conceptglobal/pmc/MainHomePageActivity$22;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$22;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1186
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 649
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 650
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

    new-instance v2, Lcom/conceptglobal/pmc/MainHomePageActivity$7;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$7;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 656
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 657
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertForTracker(Ljava/lang/String;)V
    .locals 3

    .line 1161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1162
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

    new-instance v2, Lcom/conceptglobal/pmc/MainHomePageActivity$21;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$21;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1170
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1171
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showChangePWDAlert(Ljava/lang/String;)V
    .locals 3

    .line 1192
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1193
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

    new-instance v2, Lcom/conceptglobal/pmc/MainHomePageActivity$23;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$23;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1202
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showCustomCrouton(Ljava/lang/String;)V
    .locals 2

    .line 956
    sget-object p1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->parent:Landroid/widget/RelativeLayout;

    const-string v1, "THIS IS A CUSTOMIZE TOAST THIS IS A CUSTOMIZE TOAST THIS IS A CUSTOMIZE TOAST THIS IS A CUSTOMIZE TOAST"

    invoke-static {p0, v1, p1, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;Landroid/view/ViewGroup;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object p1

    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    return-void
.end method

.method private showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 664
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 665
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 666
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 668
    new-instance p2, Landroid/widget/EditText;

    invoke-direct {p2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 669
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 672
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const p3, 0x7f0801a0

    .line 674
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 676
    iget-object p3, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_yesText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/conceptglobal/pmc/MainHomePageActivity$8;

    invoke-direct {v1, p0, p2, p4, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity$8;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 689
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/conceptglobal/pmc/MainHomePageActivity$9;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$9;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 696
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 697
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 698
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDialogCameraSwap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 594
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 595
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 596
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 599
    const-string p1, "camera"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080093

    .line 600
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 603
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_yesText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/conceptglobal/pmc/MainHomePageActivity$5;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$5;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 613
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/conceptglobal/pmc/MainHomePageActivity$6;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$6;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 627
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showDialogClearLog(Landroid/content/Context;)V
    .locals 3

    .line 703
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 705
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_clearLogsConfirmation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

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

    new-instance v2, Lcom/conceptglobal/pmc/MainHomePageActivity$10;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$10;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 716
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/MainHomePageActivity$11;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$11;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 721
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 722
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDialogLogout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 791
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 792
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 793
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 795
    const-string p2, "Logout"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0801ad

    .line 796
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 799
    :cond_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_yesText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/conceptglobal/pmc/MainHomePageActivity$12;

    invoke-direct {p3, p0, p4, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity$12;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 820
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/conceptglobal/pmc/MainHomePageActivity$13;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$13;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 826
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 827
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 828
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_1
    return-void
.end method

.method private showEnddayReportDialog()V
    .locals 1

    .line 1505
    new-instance v0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;

    invoke-direct {v0, p0, p0}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnEndDayListener;)V

    .line 1506
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->showDialog()V

    return-void
.end method

.method private showOverLayWalkthrough()V
    .locals 2

    .line 1054
    new-instance v0, Lcom/conceptglobal/pmc/MainHomePageActivity$18;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$18;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    .line 1064
    new-instance v1, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    invoke-direct {v1, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;-><init>(Landroid/app/Activity;)V

    .line 1066
    invoke-virtual {v1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const-string v1, "MENU"

    .line 1067
    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const-string v1, "Please Click Here for menu"

    .line 1068
    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/MainHomePageActivity$19;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$19;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    .line 1069
    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->build()Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 1110
    const-string v1, "Next"

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showPopupForLocationTracker()V
    .locals 6

    .line 270
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dialogCrops:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 271
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 272
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dialogCrops:Landroid/app/Dialog;

    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 273
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dialogCrops:Landroid/app/Dialog;

    const v1, 0x7f09017c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 274
    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dialogCrops:Landroid/app/Dialog;

    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 275
    iget-object v2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dialogCrops:Landroid/app/Dialog;

    const v3, 0x7f090076

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 276
    iget-object v3, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dialogCrops:Landroid/app/Dialog;

    const v4, 0x7f0904cc

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 277
    iget-object v4, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;

    invoke-static {v4, v5}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/smartalerts/Basics;->stopLocationTrackerService()V

    .line 281
    :cond_0
    new-instance v4, Lcom/conceptglobal/pmc/MainHomePageActivity$2;

    invoke-direct {v4, p0, v3}, Lcom/conceptglobal/pmc/MainHomePageActivity$2;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    new-instance v3, Lcom/conceptglobal/pmc/MainHomePageActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity$3;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    new-instance v0, Lcom/conceptglobal/pmc/MainHomePageActivity$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$4;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dialogCrops:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dialogCrops:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 321
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dialogCrops:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 322
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dialogCrops:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 323
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dialogCrops:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private showPopupForLocationTrackerEnd()V
    .locals 4

    .line 1226
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1227
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0c005a

    .line 1228
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090166

    .line 1229
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v1, 0x7f09007b

    .line 1230
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f090079

    .line 1231
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1233
    new-instance v3, Lcom/conceptglobal/pmc/MainHomePageActivity$24;

    invoke-direct {v3, p0, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity$24;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1240
    new-instance v1, Lcom/conceptglobal/pmc/MainHomePageActivity$25;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity$25;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1246
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1247
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1248
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1249
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1250
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method


# virtual methods
.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public displayView(I)V
    .locals 4

    .line 367
    const-string v0, ""

    const/4 v1, 0x1

    const v2, 0x7f090100

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_export
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dl_navigator:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_close_dr

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    :cond_close_dr
    invoke-static {p0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper;->showExportDialog(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 509
    :pswitch_0
    new-instance p1, Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;-><init>()V

    .line 510
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 511
    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 512
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 564
    :pswitch_1
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const-string v1, "ResignationUserRoleId"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithActiveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 565
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 566
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 567
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 568
    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    .line 569
    aget-object v1, p1, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 579
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/ResignationActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 576
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 581
    :cond_1
    const-string p1, "Feature currently not availble for your role."

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showAlert(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 554
    :pswitch_2
    new-instance p1, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;-><init>()V

    .line 555
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 556
    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 557
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 529
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 502
    :pswitch_4
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showAboutPMC()V

    goto/16 :goto_1

    .line 495
    :pswitch_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_logoutNav()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_logoutConfirmDialog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Logout"

    invoke-direct {p0, p0, p1, v0, v1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showDialogLogout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 488
    :pswitch_6
    invoke-direct {p0, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showDialogClearLog(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 469
    :pswitch_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 470
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/conceptglobal/pmc/service/LogDataSyncService;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 471
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/service/LogDataSyncService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    const-class v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    const-string v0, "HomePageFragment"

    const-string v1, "callbackActivity"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v0, "receiver"

    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 474
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 475
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Sending Logs Initiated"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 477
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dataSendBGToast()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showAlertDialog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 480
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_CannotSyncAlertText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_CannotSyncAlertText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    goto/16 :goto_1

    .line 459
    :pswitch_8
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 460
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getLiveStatusSMS()V

    goto/16 :goto_1

    .line 462
    :cond_5
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000fb

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 447
    :pswitch_9
    new-instance p1, Lcom/conceptglobal/pmc/fragments/SyncSummaryFragment;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/fragments/SyncSummaryFragment;-><init>()V

    .line 448
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 449
    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 450
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 438
    :pswitch_a
    new-instance p1, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 439
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Uploading DB file to server"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 417
    :pswitch_b
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 418
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->checkForApplicationPatch(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 420
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_CannotSyncAlertText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_CannotSyncAlertText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    goto/16 :goto_1

    .line 382
    :pswitch_c
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 383
    new-instance p1, Lcom/conceptglobal/pmc/sync/MasterSync;

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Lcom/conceptglobal/pmc/sync/MasterSync;-><init>(Landroid/content/Context;Z)V

    .line 384
    new-instance v0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    invoke-direct {v0, p1}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;-><init>(Lcom/conceptglobal/pmc/sync/MasterSync;)V

    iput-object v0, p1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    .line 385
    iget-object p1, p1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 387
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_CannotSyncAlertText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_CannotSyncAlertText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    goto :goto_1

    .line 397
    :pswitch_d
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/Queries;->getHomeAddressDetaisCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 399
    const-string p1, "Home Location details already saved."

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showAlert(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 403
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 405
    :cond_a
    new-instance p1, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;-><init>()V

    .line 406
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 407
    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 408
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 371
    :pswitch_e
    new-instance p1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;-><init>()V

    .line 372
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 373
    const-string v1, "HOME"

    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 374
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_export
        :pswitch_export
    .end packed-switch
.end method

.method synthetic lambda$saveNotificationIdtoPref$0$com-conceptglobal-pmc-MainHomePageActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1536
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1540
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1541
    const-string v0, "FCM-- firebase token-"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 1542
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1543
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FCMKEY"

    invoke-static {v0, v1, p1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->setStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1319
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 1331
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1327
    :cond_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->fetchLocation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 880
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dl_navigator:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dl_navigator:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_1

    .line 882
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->finish()V

    goto :goto_1

    .line 887
    :cond_1
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->doubleBackToExitPressedOnce:Z

    if-eqz v0, :cond_2

    .line 888
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteCache(Landroid/content/Context;)V

    .line 889
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onBackPressed()V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 892
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->doubleBackToExitPressedOnce:Z

    .line 893
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_onExitToastText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_onExitToastText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    .line 894
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/conceptglobal/pmc/MainHomePageActivity$15;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$15;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 149
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0128

    .line 153
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->setContentView(I)V

    .line 154
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/PMCApplication;

    .line 157
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getLanguageConfigurations()V

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MainHome"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "time111"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :try_start_0
    const-string v2, "DashBoard"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "MyPref"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 165
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 180
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    const/4 v1, 0x2

    const-string v3, ")"

    if-eq p1, v1, :cond_1

    .line 181
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_homeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "   (T - "

    if-nez p1, :cond_0

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBarImage(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 184
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBarImage(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 186
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_homeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "   (L - "

    if-nez p1, :cond_2

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBarImage(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 189
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBarImage(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 192
    :goto_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->init()V

    const/4 p1, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->displayView(I)V

    .line 196
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const-string v4, "Action.Finish"

    if-lt v1, v3, :cond_3

    .line 197
    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mLogoutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v3, v2}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mLogoutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/conceptglobal/pmc/MainHomePageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    :goto_2
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->reciever:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "MasterSyncUpdate"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 203
    new-instance v1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 205
    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "location"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->location:Ljava/lang/String;

    .line 207
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getStartedDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->startDateDBvalues:Ljava/lang/String;

    .line 208
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.sss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDate()Ljava/lang/String;

    move-result-object v2

    .line 213
    iget-object v3, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->startDateDBvalues:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->millis:J

    .line 215
    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->startDateDBvalues:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->startDateDBvalues:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 216
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->isitToday:Ljava/lang/Boolean;

    goto :goto_3

    .line 219
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->isitToday:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 223
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    :goto_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->location:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_5

    .line 226
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showPopupForLocationTracker()V

    .line 227
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->endBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 228
    :cond_5
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->location:Ljava/lang/String;

    const-string v2, "End day"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 230
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->getTodayRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    .line 231
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showPopupForLocationTracker()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 234
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->endBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 237
    :cond_7
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->location:Ljava/lang/String;

    const-string v1, "Start day"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 239
    :try_start_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->isitToday:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 240
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->perFormEnddayOperation(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->endBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 250
    :cond_9
    :goto_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->endBtn:Landroid/widget/Button;

    new-instance v0, Lcom/conceptglobal/pmc/MainHomePageActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/MainHomePageActivity$1;-><init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->checkPwdExp()V

    .line 258
    :try_start_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getExpenseExpDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteExpensesExpiryQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 259
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getExpenseExpDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteExpensesExpiryQuery2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    :goto_7
    const-string p1, "FCMKEY"

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 264
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->saveNotificationIdtoPref()V

    :cond_a
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 930
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    .line 931
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mLogoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 932
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->reciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDrawerItemSelected(Landroid/view/View;I)V
    .locals 0

    .line 363
    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/MainHomePageActivity;->displayView(I)V

    return-void
.end method

.method public onEndDayClick()V
    .locals 0

    .line 1511
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->showPopupForLocationTrackerEnd()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 980
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 981
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 986
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 983
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dl_navigator:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 991
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 909
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;-><init>()V

    .line 910
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f090100

    .line 911
    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 912
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1298
    const-string p2, "onRequestPermissionResult"

    const-string v0, "MainHomePageActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 1300
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 1303
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1304
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 1306
    invoke-direct {p0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->fetchLocation()V

    goto :goto_0

    .line 1309
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1041
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1048
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onStop()V

    return-void
.end method
