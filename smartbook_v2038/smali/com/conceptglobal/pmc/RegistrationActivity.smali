.class public Lcom/conceptglobal/pmc/RegistrationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RegistrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RegistrationActivity"


# instance fields
.field private arePermissionsGranted:Z

.field private btnSubmit:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field public databaseFile:Ljava/io/File;

.field private dbFileLogDataCreation:Ljava/lang/StringBuilder;

.field private etEmail:Landroid/widget/EditText;

.field private etIMEI:Landroid/widget/EditText;

.field private etMobile:Landroid/widget/EditText;

.field public externalfile:Ljava/io/File;

.field private getMobileSwapSMSListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private getUserDetailsListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field public imeiExternalFile:Ljava/io/File;

.field public imeiInternalFile:Ljava/io/File;

.field private isDataDownloaded:Z

.field isExtraColumnRequired:J

.field private mIsActivityRunning:Z

.field mOTP:Ljava/lang/String;

.field private minLengthMobile:I

.field otpVerificationDialog:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

.field reqPerms:[Ljava/lang/String;

.field reqPerms_33:[Ljava/lang/String;

.field private runtimePermissions:Lcom/conceptglobal/pmc/utils/RuntimePermissions;

.field private sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

.field private sharedPrefManager:Lcom/conceptglobal/pmc/utils/SharedPrefManager;

.field private tvVersion:Landroid/widget/TextView;

.field private userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 93
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->mIsActivityRunning:Z

    const-wide/16 v1, 0x0

    .line 105
    iput-wide v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->isExtraColumnRequired:J

    .line 106
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->isDataDownloaded:Z

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->externalfile:Ljava/io/File;

    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->imeiExternalFile:Ljava/io/File;

    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->imeiInternalFile:Ljava/io/File;

    .line 109
    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->dbFileLogDataCreation:Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.CAMERA"

    const-string v3, "android.permission.READ_PHONE_STATE"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->reqPerms:[Ljava/lang/String;

    .line 122
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->reqPerms_33:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 135
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->arePermissionsGranted:Z

    .line 137
    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->mOTP:Ljava/lang/String;

    .line 549
    new-instance v0, Lcom/conceptglobal/pmc/RegistrationActivity$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/RegistrationActivity$2;-><init>(Lcom/conceptglobal/pmc/RegistrationActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->getUserDetailsListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 1020
    new-instance v0, Lcom/conceptglobal/pmc/RegistrationActivity$7;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/RegistrationActivity$7;-><init>(Lcom/conceptglobal/pmc/RegistrationActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->getMobileSwapSMSListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/RegistrationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/RegistrationActivity;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->minLengthMobile:I

    return p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/RegistrationActivity;)Landroid/widget/Button;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->btnSubmit:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/RegistrationActivity;)Lcom/conceptglobal/pmc/model/GetUserDetailsModel;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    return-object p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/RegistrationActivity;Lcom/conceptglobal/pmc/model/GetUserDetailsModel;)Lcom/conceptglobal/pmc/model/GetUserDetailsModel;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    return-object p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/RegistrationActivity;->showAlert(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/RegistrationActivity;->getColoredSpanned(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/RegistrationActivity;->showMobileSwapAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->getMobileSwapSMS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/RegistrationActivity;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method private checkIMEIFileExists()Z
    .locals 2

    .line 187
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->imeiFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkValidations()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/RegistrationActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/RegistrationActivity$1;-><init>(Lcom/conceptglobal/pmc/RegistrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private deleteTerritoryData()V
    .locals 7

    .line 669
    :try_start_0
    const-string v0, "delete from FarmerCropDetails where FarmerID NOT in (select FarmerID from FarmerMaster JOIN TerritoryMaster on FarmerMaster.TerritoryId=TerritoryMaster.territoryID)"

    .line 670
    const-string v1, "delete from DealerLandDetails where FarmerID NOT in (select FarmerID from FarmerMaster JOIN TerritoryMaster on FarmerMaster.TerritoryId=TerritoryMaster.territoryID)"

    .line 671
    const-string v2, "delete from FarmerMaster where TerritoryId Not in (select territoryID from TerritoryMaster)"

    .line 672
    const-string v3, "delete from DealerMaster where TerritoryId Not in (select territoryID from TerritoryMaster)"

    .line 673
    const-string v4, "delete from PMCTerritoryFarmerMaster where TerritoryId Not in (select territoryID from TerritoryMaster)"

    .line 674
    const-string v5, "delete from PMCTerritoryDealerMaster where TerritoryId Not in (select territoryID from TerritoryMaster)"

    .line 675
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    .line 676
    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 677
    invoke-virtual {v6, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 678
    invoke-virtual {v6, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 679
    invoke-virtual {v6, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 680
    invoke-virtual {v6, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 681
    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 683
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getColoredSpanned(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1093
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

.method private getFreeSpace()Ljava/lang/String;
    .locals 5

    .line 804
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    mul-long v1, v1, v3

    const-wide/32 v3, 0x100000

    .line 812
    div-long/2addr v1, v3

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 816
    :catch_0
    const-string v0, "-1"

    return-object v0
.end method

.method private getLanguageConfigurations(I)V
    .locals 2

    .line 329
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/common/Queries;->getStrings(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFOLables(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getMobileSwapSMS(Ljava/lang/String;)V
    .locals 7

    .line 1015
    new-instance v6, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->getMobileSwapSMSListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    const/4 v4, 0x2

    .line 1016
    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodLiveOrClearDB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/SwapOTP"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v6, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    const/4 p1, 0x0

    .line 1017
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getRamSize()Ljava/lang/String;
    .locals 5

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 533
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 534
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 535
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v3, 0x100000

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " MB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 541
    :catch_0
    const-string v0, "-1"

    return-object v0
.end method

.method private getUserDetails(Ljava/lang/String;)V
    .locals 12

    .line 480
    new-instance v0, Lcom/conceptglobal/pmc/model/ActivateUserDetails;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;-><init>()V

    .line 483
    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDeviceIMEIMultiple_NEW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, ""

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->checkIMEIFileExists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 486
    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    const-string v2, "[^0-9]"

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->generateIMEI(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 488
    sget-object v2, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->imeiFilePath:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->saveIMEIDetailsInFile(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 490
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->checkIMEIFileExists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 491
    sget-object v2, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->imeiFilePath:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->saveIMEIDetailsInFile(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 493
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->checkIMEIFileExists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 494
    invoke-static {}, Lcom/conceptglobal/pmc/utils/FileZipping;->getIMEIFromFile()Ljava/lang/String;

    move-result-object v1

    .line 499
    :cond_3
    :goto_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 500
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setIMEINumber(Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setStrMobile(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setMobileSwap(Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodActivatePMC()Ljava/lang/String;

    move-result-object p1

    .line 511
    const-string v1, "NEW"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setStatus(Ljava/lang/String;)V

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-Total Ram-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getRamSize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "- Available space-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getFreeSpace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setDeviceModel(Ljava/lang/String;)V

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setOSVersion(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setMode(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 517
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "Mode"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 519
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setMode(Ljava/lang/String;)V

    .line 521
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Live"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 522
    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setMode(Ljava/lang/String;)V

    .line 524
    :cond_5
    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 525
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v7, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->getUserDetailsListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    .line 526
    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    .line 527
    new-array p1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private init()V
    .locals 2

    .line 337
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->reset()V

    const v0, 0x7f0901b3

    .line 338
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 344
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const v0, 0x7f0901a0

    .line 345
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etEmail:Landroid/widget/EditText;

    const v0, 0x7f0901a5

    .line 346
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etIMEI:Landroid/widget/EditText;

    const v0, 0x7f0900bc

    .line 347
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->btnSubmit:Landroid/widget/Button;

    const v0, 0x7f09050e

    .line 348
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->tvVersion:Landroid/widget/TextView;

    const/4 v0, 0x3

    .line 349
    iput v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->minLengthMobile:I

    return-void
.end method

.method private initRegistration()V
    .locals 0

    .line 175
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->reset()V

    .line 179
    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->init()V

    .line 180
    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->setLayoutData()V

    .line 182
    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->setListeners()V

    .line 183
    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->launchHomeScreen()V

    return-void
.end method

.method private isValidEmail(Ljava/lang/String;)Z
    .locals 1

    .line 778
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private isValidIMEI(Ljava/lang/String;)Z
    .locals 2

    .line 785
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$requestMissingPermissionsForTracking$2()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$requestMissingPermissionsForTracking$4()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$sendNotificationIdtoServer$0(Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    .line 691
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 692
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    new-instance v1, Lcom/conceptglobal/pmc/model/NotificationKeyModel;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/NotificationKeyModel;-><init>()V

    .line 694
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/NotificationKeyModel;->setPDAID(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v1, p0}, Lcom/conceptglobal/pmc/model/NotificationKeyModel;->setFCMKey(Ljava/lang/String;)V

    .line 696
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 698
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

    .line 699
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 700
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    const-string v1, "RegistrationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private launchHomeScreen()V
    .locals 3

    .line 198
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->dbFileLogDataCreation:Ljava/lang/StringBuilder;

    .line 200
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getDatabasePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->databaseFile:Ljava/io/File;

    .line 204
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->dbFileLogDataCreation:Ljava/lang/StringBuilder;

    const-string v1, "** Migration Report Api 30:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->databaseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getGetUSerDetailsCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->dismissProgressDialog()V

    .line 268
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getGetIsPasswordChanged()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 278
    :cond_0
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->finish()V

    goto :goto_0

    .line 281
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    const-string v1, "ISFromRegistration"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->startActivity(Landroid/content/Intent;)V

    .line 284
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->finish()V

    goto :goto_0

    .line 287
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->dismissProgressDialog()V

    goto :goto_0

    .line 292
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->dismissProgressDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->dismissProgressDialog()V

    :goto_0
    return-void
.end method

.method private locationPermissionNotGranted(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 982
    invoke-static {p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->get(Landroid/app/Activity;)Lcom/conceptglobal/pmc/smartalerts/Basics;

    move-result-object p1

    const v0, 0x7f1000c6

    .line 983
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 982
    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/smartalerts/Basics;->createMessageIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    .line 984
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private requestMissingPermissionsForTracking()V
    .locals 3

    .line 954
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->missingPermissionsForTracking(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 955
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 957
    new-instance v1, Lcom/conceptglobal/pmc/RegistrationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/conceptglobal/pmc/RegistrationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/util/Set;)V

    new-instance v0, Lcom/conceptglobal/pmc/RegistrationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/RegistrationActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v1, v0}, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->askForLocationPermission(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 965
    :cond_0
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->isBackgroundPermissionMissing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    new-instance v0, Lcom/conceptglobal/pmc/RegistrationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/RegistrationActivity$$ExternalSyntheticLambda2;-><init>(Lcom/conceptglobal/pmc/RegistrationActivity;)V

    new-instance v1, Lcom/conceptglobal/pmc/RegistrationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/RegistrationActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->askForLocationPermission(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 975
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->initRegistration()V

    .line 976
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    const-string v1, "all grant"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private sendNotificationIdtoServer()V
    .locals 2

    .line 690
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/RegistrationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/RegistrationActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private setCustomActionBar()V
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Registration ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBarNoStatus(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method private setErrorForUserDetails()V
    .locals 3

    .line 767
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    const-string v1, "Enter employee id"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->minLengthMobile:I

    if-lt v0, v1, :cond_1

    .line 770
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You have to enter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->minLengthMobile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "characters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setLayoutData()V
    .locals 6

    .line 365
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->tvVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version ( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 367
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etEmail:Landroid/widget/EditText;

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x32

    invoke-direct {v3, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 368
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etIMEI:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private setListeners()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 373
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showAlert(Ljava/lang/String;I)V
    .locals 3

    .line 832
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->mIsActivityRunning:Z

    if-eqz v0, :cond_0

    .line 833
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 834
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 835
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/RegistrationActivity$4;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/RegistrationActivity$4;-><init>(Lcom/conceptglobal/pmc/RegistrationActivity;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 850
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 851
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 852
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showDetailsToUser()V
    .locals 6

    .line 717
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->mIsActivityRunning:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 718
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->isDataDownloaded:Z

    .line 719
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v1

    .line 720
    iget-object v2, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getFirstName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 721
    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getFirstName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 722
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUsername()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 723
    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 725
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->storeFOName(Landroid/content/Context;Ljava/lang/String;)V

    .line 728
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 729
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_userDetailsDialogText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x7f0c0126

    .line 730
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f09051f

    .line 731
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090520

    .line 732
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0900c3

    .line 733
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 734
    iget-object v5, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :catch_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 741
    new-instance v2, Lcom/conceptglobal/pmc/RegistrationActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/conceptglobal/pmc/RegistrationActivity$3;-><init>(Lcom/conceptglobal/pmc/RegistrationActivity;Landroid/app/Dialog;)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 753
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 754
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v2, -0x1

    .line 755
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 756
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 757
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 758
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method private showMobileSwapAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 989
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 990
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 991
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100276

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/RegistrationActivity$6;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/RegistrationActivity$6;-><init>(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 998
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f1001f6

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/conceptglobal/pmc/RegistrationActivity$5;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/RegistrationActivity$5;-><init>(Lcom/conceptglobal/pmc/RegistrationActivity;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1004
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1005
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1006
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$requestMissingPermissionsForTracking$1$com-conceptglobal-pmc-RegistrationActivity(Ljava/util/Set;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 958
    new-array v0, v0, [Ljava/lang/String;

    .line 959
    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x4

    .line 958
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$requestMissingPermissionsForTracking$3$com-conceptglobal-pmc-RegistrationActivity()V
    .locals 2

    .line 968
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900bc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->setErrorForUserDetails()V

    .line 430
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 431
    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->setErrorForUserDetails()V

    goto :goto_0

    .line 433
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->btnSubmit:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 434
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 435
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->getUserDetails(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->btnSubmit:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 438
    const-string p1, " Unable to connect server, Please check your interne connection"

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->showAlert(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onClose()V
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->otpVerificationDialog:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->dismissDialog()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 141
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/PMCApplication;

    .line 145
    iput-object p0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    const p1, 0x7f0c011c

    .line 146
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->setContentView(I)V

    .line 147
    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->setCustomActionBar()V

    .line 148
    new-instance p1, Lcom/conceptglobal/pmc/utils/RuntimePermissions;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/utils/RuntimePermissions;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->runtimePermissions:Lcom/conceptglobal/pmc/utils/RuntimePermissions;

    .line 149
    new-instance p1, Lcom/conceptglobal/pmc/utils/SharedPrefManager;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->sharedPrefManager:Lcom/conceptglobal/pmc/utils/SharedPrefManager;

    .line 150
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->showProgressDialog(Landroid/content/Context;)V

    .line 157
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    .line 158
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    .line 159
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->runtimePermissions:Lcom/conceptglobal/pmc/utils/RuntimePermissions;

    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->reqPerms_33:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->checkPermissions([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->initRegistration()V

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->runtimePermissions:Lcom/conceptglobal/pmc/utils/RuntimePermissions;

    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->reqPerms:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->checkPermissions([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->initRegistration()V

    goto :goto_0

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->initRegistration()V

    .line 170
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Registration"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "time111"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 864
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901b3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    .line 459
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 460
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 461
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->minLengthMobile:I

    if-lt p1, v0, :cond_2

    .line 462
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 464
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->etMobile:Landroid/widget/EditText;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "You have to enter "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->minLengthMobile:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "characters"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 872
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 880
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 874
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 875
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 821
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x0

    .line 822
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->mIsActivityRunning:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    .line 892
    const-string v0, "Permission callback called-------"

    const-string v1, "RegistrationActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 893
    const-string v4, "Permissions are not granted"

    const/4 v5, 0x0

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_7

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 896
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_5

    const/4 p1, 0x0

    .line 897
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_5

    .line 900
    aget v0, p3, v5

    if-nez v0, :cond_1

    .line 901
    iput-boolean v3, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->arePermissionsGranted:Z

    goto :goto_1

    .line 903
    :cond_1
    const-string v0, "Some permissions are not granted ask again "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-lt v0, v6, :cond_2

    .line 905
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->reqPerms_33:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 906
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 907
    iput-boolean v5, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->arePermissionsGranted:Z

    goto :goto_1

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->reqPerms:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 910
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 911
    iput-boolean v5, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->arePermissionsGranted:Z

    goto :goto_1

    .line 913
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 914
    iput-boolean v5, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->arePermissionsGranted:Z

    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 921
    :cond_5
    aget p1, p3, v5

    if-nez p1, :cond_6

    .line 922
    iput-boolean v3, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->arePermissionsGranted:Z

    goto :goto_2

    .line 924
    :cond_6
    iput-boolean v5, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->arePermissionsGranted:Z

    .line 928
    :cond_7
    :goto_2
    aget p1, p3, v5

    if-nez p1, :cond_9

    .line 929
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->isBackgroundPermissionMissing(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 930
    iput-boolean v5, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->arePermissionsGranted:Z

    goto :goto_3

    .line 932
    :cond_8
    iput-boolean v3, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->arePermissionsGranted:Z

    goto :goto_3

    .line 935
    :cond_9
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 936
    iput-boolean v5, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->arePermissionsGranted:Z

    .line 941
    :goto_3
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->arePermissionsGranted:Z

    if-eqz p1, :cond_a

    .line 942
    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->initRegistration()V

    goto :goto_4

    .line 945
    :cond_a
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 946
    invoke-direct {p0, v4, v2}, Lcom/conceptglobal/pmc/RegistrationActivity;->showAlert(Ljava/lang/String;I)V

    .line 948
    invoke-direct {p0}, Lcom/conceptglobal/pmc/RegistrationActivity;->requestMissingPermissionsForTracking()V

    :goto_4
    return-void
.end method

.method public onResendOTP()V
    .locals 1

    .line 1079
    const-string v0, "swap"

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->getUserDetails(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 793
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x1

    .line 796
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->mIsActivityRunning:Z

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 885
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onSubmitOTP(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->mOTP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1068
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity;->otpVerificationDialog:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->dismissDialog()V

    .line 1069
    const-string p1, "swap"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->getUserDetails(Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_0
    const-string p1, "Please enter valid OTP."

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onVerifyLater()V
    .locals 0

    return-void
.end method
