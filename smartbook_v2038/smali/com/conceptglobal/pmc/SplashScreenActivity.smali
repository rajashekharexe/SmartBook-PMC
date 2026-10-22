.class public Lcom/conceptglobal/pmc/SplashScreenActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SplashScreenActivity.java"


# static fields
.field private static databaseFile:Ljava/io/File;


# instance fields
.field private TAG:Ljava/lang/String;

.field private arePermissionsGranted:Z

.field private context:Landroid/content/Context;

.field private d_language:Landroid/app/Dialog;

.field private employeeId:Ljava/lang/String;

.field private getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private isDBDownloaded:Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;

.field private loadingText:Landroid/widget/TextView;

.field private mIsActivityRunning:Z

.field private onDatabaseDownloadURL:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private pbShowProgess:Landroid/widget/ProgressBar;

.field reqPerms:[Ljava/lang/String;

.field private rlProgress:Landroid/widget/RelativeLayout;

.field private runtimePermissions:Lcom/conceptglobal/pmc/utils/RuntimePermissions;

.field private serviceUrl:Ljava/lang/String;

.field private sharedPrefManager:Lcom/conceptglobal/pmc/utils/SharedPrefManager;

.field private userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

.field private userDetailsCount:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 60
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 68
    const-string v0, "SplashScreen"

    iput-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->mIsActivityRunning:Z

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->serviceUrl:Ljava/lang/String;

    .line 76
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.CAMERA"

    const-string v4, "android.permission.READ_PHONE_STATE"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->reqPerms:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->arePermissionsGranted:Z

    .line 287
    new-instance v0, Lcom/conceptglobal/pmc/SplashScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SplashScreenActivity$1;-><init>(Lcom/conceptglobal/pmc/SplashScreenActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->onDatabaseDownloadURL:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 419
    new-instance v0, Lcom/conceptglobal/pmc/SplashScreenActivity$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SplashScreenActivity$5;-><init>(Lcom/conceptglobal/pmc/SplashScreenActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->isDBDownloaded:Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/SplashScreenActivity;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/SplashScreenActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->pbShowProgess:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/SplashScreenActivity;)Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->isDBDownloaded:Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/SplashScreenActivity;)Lcom/conceptglobal/pmc/model/GetUserDetailsModel;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/SplashScreenActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->employeeId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/SplashScreenActivity;Ljava/lang/String;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->showAlert(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/SplashScreenActivity;Ljava/lang/String;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->showAlertTryAgain(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/SplashScreenActivity;)Lcom/conceptglobal/pmc/utils/RuntimePermissions;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->runtimePermissions:Lcom/conceptglobal/pmc/utils/RuntimePermissions;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/SplashScreenActivity;Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->insertUserDetals(Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V

    return-void
.end method

.method private bindLabelNames()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->loadingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_progressText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private checkForSDCard()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->serviceUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->createPMCFolder(Ljava/lang/String;)V

    return-void
.end method

.method private createPMCFolder(Ljava/lang/String;)V
    .locals 12

    const v0, 0x7f1001e4

    .line 173
    const-string v1, ""

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 174
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    .line 177
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getPmcRootFolder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 179
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 181
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getDatabaseFolder()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->createSubFolder(Ljava/lang/String;)V

    .line 183
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getDatabasePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/conceptglobal/pmc/SplashScreenActivity;->databaseFile:Ljava/io/File;

    # Auto-wipe stale database if registering with fresh user credentials
    iget-object v3, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    if-eqz v3, :cond_skip_del

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_skip_del
    .line 184
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_6

    .line 186
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    const v3, 0x7f1001e9

    if-eqz p1, :cond_5

    .line 188
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getDBURL()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 189
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getDBURL()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getDBURL()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 190
    const-string p1, "dburl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getDBURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 192
    new-instance v5, Lcom/conceptglobal/pmc/common/DBDownloader;

    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->pbShowProgess:Landroid/widget/ProgressBar;

    invoke-direct {v5, p0, p1}, Lcom/conceptglobal/pmc/common/DBDownloader;-><init>(Landroid/app/Activity;Landroid/widget/ProgressBar;)V

    .line 194
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getDBURL()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getDBDOWNLOADPATH()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->isDBDownloaded:Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;

    iget-object v10, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    iget-object v11, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->employeeId:Ljava/lang/String;

    invoke-virtual/range {v5 .. v11}, Lcom/conceptglobal/pmc/common/DBDownloader;->dataBaseDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->showAlert(Ljava/lang/String;I)V

    goto :goto_0

    .line 199
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->showAlert(Ljava/lang/String;I)V

    goto :goto_0

    .line 220
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->showAlert(Ljava/lang/String;I)V

    goto :goto_0

    .line 223
    :cond_6
    new-instance p1, Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->getData:Lcom/conceptglobal/pmc/database/GetDataFromDB;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 258
    iget-object v1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->showAlert(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private createSubFolder(Ljava/lang/String;)V
    .locals 2

    .line 272
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001f0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->showAlert(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->serviceUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const v0, 0x7f09034b

    .line 132
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->pbShowProgess:Landroid/widget/ProgressBar;

    const v0, 0x7f09000e

    .line 133
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->rlProgress:Landroid/widget/RelativeLayout;

    const v0, 0x7f090449

    .line 134
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->loadingText:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getPMCLanguage(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->setPMCLanguage(Landroid/content/Context;I)V

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->checkForSDCard()V

    return-void
.end method

.method private insertUserDetals(Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V
    .locals 1

    .line 545
    :try_start_0
    const-string p2, ""

    .line 546
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getFirstName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 547
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getFirstName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 549
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUsername()Ljava/lang/String;

    move-result-object p2

    .line 551
    :cond_1
    :goto_0
    invoke-static {p0, p2}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->storeFOName(Landroid/content/Context;Ljava/lang/String;)V

    .line 552
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 553
    const-string p2, "ISFromRegistration"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 555
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 557
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private sendNotificationIdtoServer()V
    .locals 2

    .line 563
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/SplashScreenActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SplashScreenActivity$$ExternalSyntheticLambda0;-><init>(Lcom/conceptglobal/pmc/SplashScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private showAlert(Ljava/lang/String;I)V
    .locals 2

    .line 348
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/SplashScreenActivity$2;

    invoke-direct {v1, p0, p2}, Lcom/conceptglobal/pmc/SplashScreenActivity$2;-><init>(Lcom/conceptglobal/pmc/SplashScreenActivity;I)V

    const p2, 0x104000a

    .line 350
    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 368
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 369
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertTryAgain(Ljava/lang/String;I)V
    .locals 2

    .line 380
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 383
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/SplashScreenActivity$4;

    invoke-direct {v1, p0, p2}, Lcom/conceptglobal/pmc/SplashScreenActivity$4;-><init>(Lcom/conceptglobal/pmc/SplashScreenActivity;I)V

    .line 384
    const-string p2, "TryAgain"

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/conceptglobal/pmc/SplashScreenActivity$3;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/SplashScreenActivity$3;-><init>(Lcom/conceptglobal/pmc/SplashScreenActivity;)V

    const/high16 v1, 0x1040000

    .line 401
    invoke-virtual {p1, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 408
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 409
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 410
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showRetryDialog()V
    .locals 4

    .line 504
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 506
    const-string v1, "Unable to access database. Please try again"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/SplashScreenActivity$6;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/SplashScreenActivity$6;-><init>(Lcom/conceptglobal/pmc/SplashScreenActivity;)V

    .line 507
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 522
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 523
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$sendNotificationIdtoServer$0$com-conceptglobal-pmc-SplashScreenActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    .line 564
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 565
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    new-instance v1, Lcom/conceptglobal/pmc/model/NotificationKeyModel;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/NotificationKeyModel;-><init>()V

    .line 567
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/NotificationKeyModel;->setPDAID(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/NotificationKeyModel;->setFCMKey(Ljava/lang/String;)V

    .line 569
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 571
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetNotificationKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00bd

    .line 96
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/PMCApplication;

    .line 99
    iput-object p0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->context:Landroid/content/Context;

    .line 100
    new-instance p1, Lcom/conceptglobal/pmc/utils/RuntimePermissions;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/utils/RuntimePermissions;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->runtimePermissions:Lcom/conceptglobal/pmc/utils/RuntimePermissions;

    .line 101
    new-instance p1, Lcom/conceptglobal/pmc/utils/SharedPrefManager;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->sharedPrefManager:Lcom/conceptglobal/pmc/utils/SharedPrefManager;

    .line 102
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    const-string v0, "UserDetails"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    iput-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    .line 105
    const-string v0, "EmployeeId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->employeeId:Ljava/lang/String;

    goto :goto_0

    .line 107
    :cond_0
    const-string p1, "Something went wrong, Please Register again"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 108
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->finish()V

    .line 110
    :goto_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->init()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 468
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 469
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->mIsActivityRunning:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 489
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09004d

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 493
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 462
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 586
    iget-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->TAG:Ljava/lang/String;

    const-string v1, "Permission callback called-------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 587
    const-string v1, "Permissions are not granted"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 590
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 591
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_3

    .line 594
    aget v0, p3, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 595
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->arePermissionsGranted:Z

    goto :goto_1

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->TAG:Ljava/lang/String;

    const-string v3, "Some permissions are not granted ask again "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->reqPerms:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 600
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->arePermissionsGranted:Z

    goto :goto_1

    .line 602
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 603
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->arePermissionsGranted:Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 611
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->arePermissionsGranted:Z

    if-eqz p1, :cond_4

    .line 612
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->init()V

    goto :goto_3

    .line 615
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x5

    .line 616
    invoke-direct {p0, v1, p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->showAlert(Ljava/lang/String;I)V

    :goto_3
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 453
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 454
    iget-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting screen name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 457
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity;->mIsActivityRunning:Z

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 498
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
