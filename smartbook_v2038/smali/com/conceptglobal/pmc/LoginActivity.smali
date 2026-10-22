.class public Lcom/conceptglobal/pmc/LoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnRequestFinishListener;
.implements Lcom/conceptglobal/pmc/interfaces/OnRequestCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/LoginActivity$SDTSync;,
        Lcom/conceptglobal/pmc/LoginActivity$AcknowledgementUserIMEIStatus;,
        Lcom/conceptglobal/pmc/LoginActivity$GetLiveApkSync;
    }
.end annotation


# static fields
.field public static final DATA_SYNC_TASK_ID:Ljava/lang/String; = "DataSyncTaskID"

.field public static final LOG_SYNC_TASK_ID:Ljava/lang/String; = "LogSyncTaskID"

.field public static final MASTER_SYNC_TASK_ID:Ljava/lang/String; = "MasterSyncTaskID"

.field private static final TAG:Ljava/lang/String; = "Login Activity"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

.field private static trainingDaysDefaultValue:I


# instance fields
.field NUM_BYTES_NEEDED_FOR_MY_APP:J

.field private btnSubmit:Lcom/conceptglobal/imaterialdesign/widget/Button;

.field builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

.field private bundleData:Landroid/os/Bundle;

.field private context:Landroid/content/Context;

.field private counter:I

.field private d_language:Landroid/app/Dialog;

.field private emptyedit:Lcom/conceptglobal/imaterialdesign/widget/EditText;

.field private etPin:Lcom/conceptglobal/imaterialdesign/widget/EditText;

.field private farmersAssignedCount:I

.field private foGeoDisplayname:Ljava/lang/String;

.field private foName:Ljava/lang/String;

.field private foPdaId:Ljava/lang/String;

.field private getForgotPwdResponseListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private getLiveStatusSMSListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private getUserImeiStatusListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private isApicallInProgress:Z

.field private isSyncing:Z

.field private languageSelectedId:I

.field liveOrTrain:I

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field public notificationData:Ljava/lang/String;

.field private objAck:Lcom/conceptglobal/pmc/model/SendAckSdtv;

.field private password:Ljava/lang/String;

.field public progressBar:Landroid/widget/ProgressBar;

.field private sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

.field private sharedPrefman:Lcom/conceptglobal/pmc/utils/SharedPrefManager;

.field private showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

.field private showingUserdetails:Z

.field private toolbarTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

.field private trainingStatusMsg:Ljava/lang/String;

.field private trainingstartDate:Ljava/lang/String;

.field private tvChangeLanguage:Lcom/conceptglobal/imaterialdesign/widget/TextView;

.field private tvCopyRight:Lcom/conceptglobal/imaterialdesign/widget/TextView;

.field private tvForgotPwd:Lcom/conceptglobal/imaterialdesign/widget/TextView;

.field private tvGeoDisplayName:Lcom/conceptglobal/imaterialdesign/widget/TextView;

.field private tvName:Lcom/conceptglobal/imaterialdesign/widget/TextView;

.field private tvPdaId:Lcom/conceptglobal/imaterialdesign/widget/TextView;

.field private userActiveStatus:Ljava/lang/String;

.field private userIMEIActiveStatus:Ljava/lang/String;

.field private userSuspendStatus:Ljava/lang/String;

.field private wrongPasswordEntries:I

.field private wrongPasswordLimit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/LoginActivity;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    const/4 v0, 0x3

    .line 165
    sput v0, Lcom/conceptglobal/pmc/LoginActivity;->trainingDaysDefaultValue:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 120
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    const/4 v1, 0x0

    .line 137
    iput v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->farmersAssignedCount:I

    const/4 v2, 0x2

    .line 139
    iput v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->liveOrTrain:I

    .line 145
    const-string v2, "8"

    iput-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->wrongPasswordLimit:Ljava/lang/String;

    .line 146
    iput v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->wrongPasswordEntries:I

    .line 151
    iput v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->counter:I

    .line 161
    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->trainingStatusMsg:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->trainingstartDate:Ljava/lang/String;

    const-wide/32 v0, 0x7d000

    .line 163
    iput-wide v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J

    .line 1707
    new-instance v0, Lcom/conceptglobal/pmc/LoginActivity$13;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/LoginActivity$13;-><init>(Lcom/conceptglobal/pmc/LoginActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->getUserImeiStatusListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 1738
    new-instance v0, Lcom/conceptglobal/pmc/LoginActivity$14;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/LoginActivity$14;-><init>(Lcom/conceptglobal/pmc/LoginActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->getForgotPwdResponseListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 1768
    new-instance v0, Lcom/conceptglobal/pmc/LoginActivity$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/LoginActivity$15;-><init>(Lcom/conceptglobal/pmc/LoginActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->getLiveStatusSMSListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/LoginActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/LoginActivity;->isApicallInProgress:Z

    return p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/LoginActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->isApicallInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity;->showLowNetworkMsgAlert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->launchHome()V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/LoginActivity;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/LoginActivity;->showingUserdetails:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/conceptglobal/pmc/LoginActivity;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->showingUserdetails:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->deleteTrainingData()V

    return-void
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/conceptglobal/pmc/LoginActivity;->foName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/conceptglobal/pmc/LoginActivity;->password:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/conceptglobal/pmc/LoginActivity;->trainingstartDate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/conceptglobal/pmc/LoginActivity;->userIMEIActiveStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/LoginActivity;)I
    .locals 0

    .line 120
    iget p0, p0, Lcom/conceptglobal/pmc/LoginActivity;->counter:I

    return p0
.end method

.method static synthetic access$1708(Lcom/conceptglobal/pmc/LoginActivity;)I
    .locals 2

    .line 120
    iget v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->counter:I

    return v0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/conceptglobal/imaterialdesign/widget/Button;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/conceptglobal/pmc/LoginActivity;->btnSubmit:Lcom/conceptglobal/imaterialdesign/widget/Button;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/conceptglobal/pmc/LoginActivity;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/LoginActivity;F[Landroid/view/View;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/LoginActivity;->setAlpha(F[Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->checkForAutoAppUpdates()V

    return-void
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getGeoDetails()V

    return-void
.end method

.method static synthetic access$2302(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->trainingStatusMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/LoginActivity;->showLiveCustomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/LoginActivity;Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity;->sendIMEIAcknowledgeToServer(Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/conceptglobal/imaterialdesign/widget/EditText;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/conceptglobal/pmc/LoginActivity;->etPin:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/LoginActivity;)Landroid/app/Dialog;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/conceptglobal/pmc/LoginActivity;->d_language:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/LoginActivity;)Landroid/content/Context;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/LoginActivity;I)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity;->getLanguageConfigurations(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->setActionBarBackgroundColour()V

    return-void
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->bindLabelNames()V

    return-void
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getLiveStatusSMS()V

    return-void
.end method

.method private bindLabelNames()V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->etPin:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_hintPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->btnSubmit:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_btnLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->foName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvName:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_FoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->foName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvName:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_FoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->foPdaId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvPdaId:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pdaid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->foPdaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvPdaId:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pdaid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvCopyRight:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_copyRights()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvForgotPwd:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_labelFrgtPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private callFunctionalStateAPI()V
    .locals 2

    .line 308
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/LoginActivity$SDTSync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/LoginActivity$SDTSync;-><init>(Lcom/conceptglobal/pmc/LoginActivity;Lcom/conceptglobal/pmc/LoginActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$SDTSync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private checkForAutoAppUpdates()V
    .locals 6

    .line 999
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getAppPatchTime(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getIDEALTIMEFORAPPPATCH()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->setApplicationPatchTime(Landroid/content/Context;)V

    .line 1001
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->checkForApplicationPatch(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1006
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getappversionRecord(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIsRecordExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->setApplicationPatchTime(Landroid/content/Context;)V

    .line 1008
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->checkForApplicationPatch(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1013
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkLoginStatus(Z)V
    .locals 3

    .line 1339
    const-string v0, "Login Activity"

    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getAppVersionStatus()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1340
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getLoginStatus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1342
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->userActiveStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userActiveStatus:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1344
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1346
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userActiveStatus:Ljava/lang/String;

    const-string v1, "Y"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1348
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, "2"

    if-eqz p1, :cond_1

    .line 1350
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->notificationData:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1351
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->checkForLatestPatch(Landroid/content/Context;I)Z

    move-result p1

    goto :goto_1

    .line 1353
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->checkForLatestPatch(Landroid/content/Context;I)Z

    move-result p1

    :goto_1
    if-nez p1, :cond_7

    .line 1357
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1361
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->updateLoginTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1363
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1364
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Update login time"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    :goto_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->launchHome()V

    goto :goto_3

    .line 1370
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->notificationData:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1371
    const-string p1, "You have New Notifications,Please connect to Internet and do master sync"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1373
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1376
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->launchHome()V

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    .line 1384
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->checkForAutoAppUpdates()V

    .line 1386
    :cond_4
    iget p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->liveOrTrain:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    .line 1387
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity;->askForLiveORTraining(Landroid/content/Context;)V

    .line 1389
    :cond_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->setActionBarBackgroundColour()V

    goto :goto_3

    .line 1392
    :cond_6
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->showAppDialog()V

    :cond_7
    :goto_3
    return-void
.end method

.method private checkUserImeiActiveStatus()V
    .locals 8

    .line 268
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->startTimer()V

    .line 269
    new-instance v0, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;-><init>()V

    .line 270
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;->setPdaId(Ljava/lang/String;)V

    .line 271
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDeviceIMEIMultiple(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;->setIMEINumber(Ljava/lang/String;)V

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;->setAndroidOS(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->foPdaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;->setMobile(Ljava/lang/String;)V

    .line 274
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 275
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 276
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v3, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/LoginActivity;->getUserImeiStatusListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    .line 277
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodUserIMEIActiveDetails()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    .line 278
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private createExtraColumns()Z
    .locals 5

    const/4 v0, 0x0

    .line 1194
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->ExecuteDBPatchQueries(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1197
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1198
    new-instance v1, Lcom/conceptglobal/pmc/common/DBDownloader;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/common/DBDownloader;-><init>(Landroid/app/Activity;)V

    .line 1200
    new-instance v2, Ljava/io/File;

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

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/DBDownloader;->deleteDirectory(Ljava/io/File;)Z

    .line 1203
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 1204
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->finish()V

    goto :goto_0

    .line 1206
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseCheckDataError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/LoginActivity;->showAlert(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1212
    const-string v2, "Login Activity"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method private deleteTrainingData()V
    .locals 4

    .line 768
    const-string v0, "Live"

    .line 770
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    .line 772
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getDatabaseFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteDir(Ljava/io/File;)Z

    .line 773
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteCache(Landroid/content/Context;)V

    .line 774
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 775
    const-string v2, "Mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->setMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 778
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->finish()V

    .line 781
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 801
    throw v0

    :catch_0
    move-exception v0

    .line 798
    const-string v1, "Login Activity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private deleteTrainingData1()V
    .locals 7

    .line 742
    const-string v0, "Login Activity"

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->updateTrainingOrLiveStatus(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 744
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    sget-object v1, Lcom/conceptglobal/pmc/common/ConstantsPMC;->tablesToBeDeletedAfterTraining:[Ljava/lang/String;

    .line 745
    sget-object v2, Lcom/conceptglobal/pmc/LoginActivity;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    .line 746
    :goto_0
    array-length v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v3, v4, :cond_0

    .line 748
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->deleteTableData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 750
    :try_start_2
    invoke-static {v0, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 754
    :try_start_3
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 756
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/LoginActivity;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 758
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 759
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->finish()V

    return-void

    .line 756
    :goto_2
    sget-object v1, Lcom/conceptglobal/pmc/LoginActivity;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 757
    throw v0
.end method

.method private displayMultilingualTextVisibility()V
    .locals 5

    .line 422
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "IsNotRequireMultiLingual"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 427
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvChangeLanguage:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f09035c

    .line 428
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private forgotPassword()V
    .locals 8

    .line 282
    new-instance v0, Lcom/conceptglobal/pmc/model/ForgotPasswordModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/ForgotPasswordModel;-><init>()V

    .line 283
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ForgotPasswordModel;->setPdaID(Ljava/lang/String;)V

    .line 284
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 285
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 286
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v3, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/LoginActivity;->getForgotPwdResponseListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    .line 287
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodForgotPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    const/4 v1, 0x0

    .line 288
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getAppVersionStatus()Z
    .locals 3

    .line 1481
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getAppVersionQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIsRecordExists(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1484
    const-string v1, "Login Activity"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return v2
.end method

.method private getAvailableFreeSpace()Z
    .locals 8

    .line 1969
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1972
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/storage/StorageManager;Ljava/io/File;)Ljava/util/UUID;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1974
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    .line 1979
    :goto_0
    :try_start_1
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/storage/StorageManager;Ljava/util/UUID;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1981
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v2, 0x0

    .line 1983
    :goto_1
    iget-wide v4, p0, Lcom/conceptglobal/pmc/LoginActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-ltz v7, :cond_0

    .line 1985
    :try_start_2
    invoke-static {v0, v1, v4, v5}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/storage/StorageManager;Ljava/util/UUID;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v0, 0x1

    return v0

    :catch_2
    move-exception v0

    .line 1989
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v6

    .line 1996
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_free_space_alert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1997
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_2

    .line 1998
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Available size is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "MB.\n minimum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " MB is required to download data, please delete some files and try again."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1997
    :goto_2
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->showAlertDialog(Ljava/lang/String;)V

    return v6
.end method

.method private getGeoDetails()V
    .locals 11

    .line 1612
    const-string v0, "getGeoDetails"

    const-string v1, "data"

    const-string v2, "Functional states"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1614
    :try_start_0
    const-string v5, "Getting Functional states"

    invoke-static {v2, v5}, Lcom/conceptglobal/pmc/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    new-instance v5, Lcom/conceptglobal/pmc/model/GetGeography;

    invoke-direct {v5}, Lcom/conceptglobal/pmc/model/GetGeography;-><init>()V

    .line 1616
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 1617
    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/GetGeography;->setStateId(I)V

    .line 1618
    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/model/GetGeography;->setDistrictId(I)V

    .line 1619
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 1620
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/model/GetGeography;->setPDAID(I)V

    .line 1622
    :cond_0
    invoke-virtual {v6, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1623
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v7

    .line 1624
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSTDV()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1626
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v9

    invoke-virtual {v9, v5, v8, v7}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1627
    :try_start_1
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 1628
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AUTHORISED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1630
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0xa

    if-le v4, v7, :cond_2

    .line 1631
    new-instance v4, Ljava/io/StringReader;

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/conceptglobal/pmc/model/SDTV;

    invoke-virtual {v6, v4, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/SDTV;

    .line 1632
    iget-object v4, p0, Lcom/conceptglobal/pmc/LoginActivity;->objAck:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-static {v1, v4}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertDtdv(Lcom/conceptglobal/pmc/model/SDTV;Lcom/conceptglobal/pmc/model/SendAckSdtv;)Lcom/conceptglobal/pmc/model/SendAckSdtv;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->objAck:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    if-eqz v1, :cond_1

    .line 1633
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/SendAckSdtv;->getAckList()Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1634
    const-string v1, "returning Acknowledgement"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->sendAcktoServer()V

    goto :goto_1

    .line 1637
    :cond_1
    const-string v1, "No Functional states"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1640
    :cond_2
    iput-boolean v3, p0, Lcom/conceptglobal/pmc/LoginActivity;->isSyncing:Z

    goto :goto_1

    .line 1642
    :cond_3
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNAUTHORISED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1643
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid Token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1645
    new-instance v1, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-direct {v1, v2, v6}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 1646
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 1648
    const-string v1, "com.conceptglobal.pmc.LoginActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1649
    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x1

    .line 1650
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1651
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 1652
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1656
    :goto_0
    iput-boolean v3, p0, Lcom/conceptglobal/pmc/LoginActivity;->isSyncing:Z

    .line 1657
    const-string v2, "Login Activity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private getLanguageConfigurations(I)V
    .locals 2

    .line 326
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

    goto :goto_0

    :catch_0
    move-exception p1

    .line 328
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    const-string v0, "Login Activity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getLiveStatusSMS()V
    .locals 8

    .line 292
    new-instance v0, Lcom/conceptglobal/pmc/model/LiveSMSModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/LiveSMSModel;-><init>()V

    .line 293
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/LiveSMSModel;->setPdaID(Ljava/lang/String;)V

    .line 294
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 295
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 296
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v3, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/LoginActivity;->getLiveStatusSMSListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    .line 297
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodLiveOrClearDB()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/MoveToLive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    const/4 v1, 0x0

    .line 298
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getLoginStatus()Z
    .locals 4

    .line 1400
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1401
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x1

    .line 1402
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1404
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1405
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/common/Queries;->getLoginSessionTimeStatus(Ljava/lang/String;)Ljava/lang/String;

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

.method private init()V
    .locals 2

    const v0, 0x7f0901bd

    .line 382
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->etPin:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    const v0, 0x7f090159

    .line 383
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->emptyedit:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    const v0, 0x7f0900bb

    .line 384
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->btnSubmit:Lcom/conceptglobal/imaterialdesign/widget/Button;

    const v0, 0x7f090536

    .line 385
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvName:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const v0, 0x7f090567

    .line 386
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvPdaId:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const v0, 0x7f09050e

    .line 388
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvCopyRight:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const v0, 0x7f090537

    .line 389
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvForgotPwd:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const v0, 0x7f090508

    .line 390
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvChangeLanguage:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const v0, 0x7f09045f

    .line 391
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f090460

    .line 392
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->toolbarTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    .line 393
    new-instance v0, Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendAckSdtv;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->objAck:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    .line 394
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->bundleData:Landroid/os/Bundle;

    .line 396
    const-string v1, "Data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->notificationData:Ljava/lang/String;

    .line 400
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getWrongPasswordEntryCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->wrongPasswordLimit:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    const-string v1, "8"

    iput-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->wrongPasswordLimit:Ljava/lang/String;

    .line 404
    const-string v1, "Login Activity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->etPin:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/LoginActivity$2;-><init>(Lcom/conceptglobal/pmc/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 416
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->displayMultilingualTextVisibility()V

    return-void
.end method

.method private launchHome()V
    .locals 6

    .line 1221
    invoke-static {}, Landroidx/work/WorkManager;->getInstance()Landroidx/work/WorkManager;

    move-result-object v0

    .line 1222
    const-string v1, "Login Activity"

    const-string v2, "Queuing the Periodic Work"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    new-instance v1, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v2, Lcom/conceptglobal/pmc/worker/DataSyncWorker;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4

    invoke-direct {v1, v2, v4, v5, v3}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 1225
    invoke-virtual {v1}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v1

    check-cast v1, Landroidx/work/PeriodicWorkRequest;

    .line 1226
    const-string v2, "DataSyncTaskID"

    sget-object v3, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    .line 1228
    new-instance v1, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v2, Lcom/conceptglobal/pmc/worker/MasterSyncWorker;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v4, v5, v3}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 1229
    invoke-virtual {v1}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v1

    check-cast v1, Landroidx/work/PeriodicWorkRequest;

    .line 1230
    const-string v2, "MasterSyncTaskID"

    sget-object v3, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    .line 1232
    new-instance v1, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v2, Lcom/conceptglobal/pmc/worker/LogsSyncWorker;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v4, v5, v3}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 1233
    invoke-virtual {v1}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v1

    check-cast v1, Landroidx/work/PeriodicWorkRequest;

    .line 1234
    const-string v2, "LogSyncTaskID"

    sget-object v3, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    .line 1255
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1256
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 1257
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->finish()V

    :cond_0
    return-void
.end method

.method private sendAcktoServer()V
    .locals 6

    .line 1664
    const-string v0, "data"

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 1665
    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->objAck:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/SendAckSdtv;->setPDAID(Ljava/lang/String;)V

    .line 1666
    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->objAck:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSTDAck()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1668
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1669
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 1670
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AUTHORISED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 1672
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 1673
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidACKinFS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1680
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->isSyncing:Z

    goto :goto_0

    .line 1682
    :cond_2
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UNAUTHORISED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1683
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid Token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1685
    new-instance v0, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 1686
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 1688
    const-string v0, "com.conceptglobal.pmc.LoginActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1689
    const-string v1, "sendAcktoServer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1690
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1691
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1692
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1697
    const-string v1, "Login Activity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private sendIMEIAcknowledgeToServer(Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;)V
    .locals 3

    .line 1838
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1839
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodIMEIActiveAck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1841
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1842
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1847
    const-string v0, "Login Activity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setActionBar()V
    .locals 1

    .line 360
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->setActionBarBackgroundColour()V

    .line 361
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/LoginActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method private setActionBarBackgroundColour()V
    .locals 5

    .line 366
    iget v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->liveOrTrain:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ")"

    if-eq v0, v1, :cond_1

    .line 367
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_btnLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login (Training - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_0

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_btnLogin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Training - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 372
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_btnLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login (Live - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 375
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_btnLogin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Live - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)Landroidx/appcompat/widget/Toolbar;

    :goto_0
    return-void
.end method

.method private varargs setAlpha(F[Landroid/view/View;)V
    .locals 3

    .line 316
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 317
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setLayoutData()V
    .locals 4

    .line 434
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->foName:Ljava/lang/String;

    .line 435
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->foPdaId:Ljava/lang/String;

    .line 436
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->foGeoDisplayname:Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getFOName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Login Activity"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getFOName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getFOName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->foName:Ljava/lang/String;

    goto :goto_0

    .line 441
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->foName:Ljava/lang/String;

    .line 442
    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->storeFOName(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 444
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getEmployeeID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->foPdaId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 450
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getGeoDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->foGeoDisplayname:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 455
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 458
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->foName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 459
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvName:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->foPdaId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 462
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvPdaId:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->etPin:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private setListeners(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->btnSubmit:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvForgotPwd:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvCopyRight:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvChangeLanguage:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->tvName:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    .line 690
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 691
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

    new-instance v2, Lcom/conceptglobal/pmc/LoginActivity$4;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/LoginActivity$4;-><init>(Lcom/conceptglobal/pmc/LoginActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 698
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 699
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 2005
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2006
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

    new-instance v2, Lcom/conceptglobal/pmc/LoginActivity$17;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/LoginActivity$17;-><init>(Lcom/conceptglobal/pmc/LoginActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2011
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAlertForLive(Ljava/lang/String;)V
    .locals 3

    .line 705
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 706
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

    new-instance v2, Lcom/conceptglobal/pmc/LoginActivity$5;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/LoginActivity$5;-><init>(Lcom/conceptglobal/pmc/LoginActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 717
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 718
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAppDialog()V
    .locals 3

    .line 1490
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1491
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1492
    const-string v1, "New Version Available"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1493
    const-string v1, "Please, update app to new version to continue using PMC application."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1494
    new-instance v1, Lcom/conceptglobal/pmc/LoginActivity$12;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/LoginActivity$12;-><init>(Lcom/conceptglobal/pmc/LoginActivity;)V

    const-string v2, "Update"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 1500
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1502
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1503
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1504
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showCustomDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    .line 815
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->showingUserdetails:Z

    const/4 v0, 0x1

    .line 816
    new-array v5, v0, [Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 817
    new-array v6, v0, [Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 818
    new-array v7, v0, [Lcom/conceptglobal/imaterialdesign/widget/TextView;

    .line 819
    new-array v8, v0, [Lcom/conceptglobal/imaterialdesign/widget/TextView;

    .line 820
    new-array v3, v0, [Landroid/widget/LinearLayout;

    .line 821
    new-array v4, v0, [Landroid/widget/LinearLayout;

    .line 823
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentTheme()I

    .line 824
    new-instance v0, Lcom/conceptglobal/pmc/LoginActivity$7;

    move-object v1, v0

    move-object v2, p0

    move-object v9, p2

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/conceptglobal/pmc/LoginActivity$7;-><init>(Lcom/conceptglobal/pmc/LoginActivity;[Landroid/widget/LinearLayout;[Landroid/widget/LinearLayout;[Lcom/conceptglobal/imaterialdesign/widget/EditText;[Lcom/conceptglobal/imaterialdesign/widget/EditText;[Lcom/conceptglobal/imaterialdesign/widget/TextView;[Lcom/conceptglobal/imaterialdesign/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    const p1, 0x7f0c005b

    if-eqz p2, :cond_0

    .line 891
    const-string v0, "ForgotPwd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 892
    iget-object p2, p0, Lcom/conceptglobal/pmc/LoginActivity;->builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_forgotPassTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_submitBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->positiveAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->contentView(I)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    goto :goto_0

    .line 894
    :cond_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/LoginActivity;->builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_passwordReqTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_submitBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->positiveAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->contentView(I)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    .line 896
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->newInstance(Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;)Lcom/conceptglobal/imaterialdesign/app/DialogFragment;

    move-result-object p1

    .line 897
    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->isActivityVisible()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 898
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showDBDeleteDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1265
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1266
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1267
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1268
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/conceptglobal/pmc/LoginActivity$10;

    invoke-direct {p3, p0, p1}, Lcom/conceptglobal/pmc/LoginActivity$10;-><init>(Lcom/conceptglobal/pmc/LoginActivity;Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1292
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1293
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showLanguageDialog()V
    .locals 7

    .line 655
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getlanguages()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLanguages(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 657
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 658
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 659
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 660
    aget-object v5, v0, v4

    aget-object v5, v5, v3

    aput-object v5, v2, v4

    .line 661
    aget-object v5, v0, v4

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 663
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 664
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 665
    new-instance v3, Lcom/conceptglobal/pmc/LoginActivity$3;

    invoke-direct {v3, p0, v2}, Lcom/conceptglobal/pmc/LoginActivity$3;-><init>(Lcom/conceptglobal/pmc/LoginActivity;[Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 682
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->d_language:Landroid/app/Dialog;

    .line 683
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 684
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_1
    return-void
.end method

.method private showLiveCustomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    const/4 v14, 0x0

    .line 1854
    iput-boolean v14, v12, Lcom/conceptglobal/pmc/LoginActivity;->showingUserdetails:Z

    const/4 v0, 0x1

    .line 1855
    new-array v4, v0, [Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 1856
    new-array v5, v0, [Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 1857
    new-array v6, v0, [Lcom/conceptglobal/imaterialdesign/widget/TextView;

    .line 1858
    new-array v7, v0, [Lcom/conceptglobal/imaterialdesign/widget/TextView;

    .line 1859
    new-array v8, v0, [Lcom/conceptglobal/imaterialdesign/widget/TextView;

    .line 1860
    new-array v2, v0, [Landroid/widget/LinearLayout;

    .line 1861
    new-array v3, v0, [Landroid/widget/LinearLayout;

    .line 1863
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentTheme()I

    .line 1864
    new-instance v15, Lcom/conceptglobal/pmc/LoginActivity$16;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p1

    invoke-direct/range {v0 .. v11}, Lcom/conceptglobal/pmc/LoginActivity$16;-><init>(Lcom/conceptglobal/pmc/LoginActivity;[Landroid/widget/LinearLayout;[Landroid/widget/LinearLayout;[Lcom/conceptglobal/imaterialdesign/widget/EditText;[Lcom/conceptglobal/imaterialdesign/widget/EditText;[Lcom/conceptglobal/imaterialdesign/widget/TextView;[Lcom/conceptglobal/imaterialdesign/widget/TextView;[Lcom/conceptglobal/imaterialdesign/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v15, v12, Lcom/conceptglobal/pmc/LoginActivity;->builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    const v0, 0x7f0c005b

    if-eqz v13, :cond_0

    .line 1954
    const-string v1, "ForgotPwd"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1955
    iget-object v1, v12, Lcom/conceptglobal/pmc/LoginActivity;->builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_forgotPassTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_submitBtnText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->positiveAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->contentView(I)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    goto :goto_0

    .line 1958
    :cond_0
    iget-object v1, v12, Lcom/conceptglobal/pmc/LoginActivity;->builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_passwordReqTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_submitBtnText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->positiveAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->contentView(I)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    .line 1960
    :goto_0
    iget-object v0, v12, Lcom/conceptglobal/pmc/LoginActivity;->builder:Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->newInstance(Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;)Lcom/conceptglobal/imaterialdesign/app/DialogFragment;

    move-result-object v0

    .line 1961
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1962
    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method

.method private showLowNetworkMsgAlert(Ljava/lang/String;)V
    .locals 3

    .line 724
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 725
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

    new-instance v2, Lcom/conceptglobal/pmc/LoginActivity$6;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/LoginActivity$6;-><init>(Lcom/conceptglobal/pmc/LoginActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 734
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 735
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showWalkthrough()V
    .locals 3

    .line 1415
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->etPin:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setEnabled(Z)V

    .line 1417
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->btnSubmit:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setEnabled(Z)V

    .line 1433
    new-instance v0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    invoke-direct {v0, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;

    const v2, 0x7f0901bd

    .line 1434
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const-string v1, "PASSWORD"

    .line 1435
    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    const-string v1, "Please Enter Password here"

    .line 1436
    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/LoginActivity$11;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/LoginActivity$11;-><init>(Lcom/conceptglobal/pmc/LoginActivity;)V

    .line 1437
    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    .line 1474
    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->build()Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 1475
    const-string v1, "Next"

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startTimer()V
    .locals 6

    const/4 v0, 0x1

    .line 246
    :try_start_0
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->isApicallInProgress:Z

    .line 248
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "LoginApiSkipTime"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x3c

    .line 251
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/conceptglobal/pmc/LoginActivity$1;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/LoginActivity$1;-><init>(Lcom/conceptglobal/pmc/LoginActivity;)V

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public askForLiveORTraining(Landroid/content/Context;)V
    .locals 9

    const-string v0, "You are currently in Training Mode, You can use Training mode for next "

    .line 1039
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getTrainingStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->trainingstartDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1040
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/DateUtils;->getDateToday()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/DateUtils;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1041
    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->trainingStatusMsg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1042
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->trainingStatusMsg:Ljava/lang/String;

    const-string v3, "|"

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1044
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    goto :goto_1

    .line 1046
    :cond_1
    const-string v2, ""

    .line 1047
    invoke-static {}, Lcom/conceptglobal/pmc/utils/DateUtils;->getDateToday()Ljava/util/Date;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/conceptglobal/pmc/utils/DateUtils;->differenceOfDaysBetweenDates(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    .line 1049
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/Queries;->getTrainingThresholdValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 1050
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/Queries;->getTrainingThresholdValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/conceptglobal/pmc/LoginActivity;->trainingDaysDefaultValue:I

    int-to-long v5, v1

    sub-long/2addr v5, v3

    .line 1051
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1053
    :cond_2
    sget v1, Lcom/conceptglobal/pmc/LoginActivity;->trainingDaysDefaultValue:I

    int-to-long v5, v1

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1058
    :goto_1
    sget v5, Lcom/conceptglobal/pmc/LoginActivity;->trainingDaysDefaultValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v5, v5

    const-string v7, "TrainingExpired"

    cmp-long v8, v3, v5

    if-gez v8, :cond_4

    :try_start_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 1061
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " days only."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1059
    :cond_4
    :goto_2
    const-string v0, "Your training duration is completed, Click on Live to start doing activities in Live Mode"

    .line 1064
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1065
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1066
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_LiveText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1078
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getMo_trainingText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1092
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1094
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v1, -0x1

    .line 1095
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v5, Lcom/conceptglobal/pmc/LoginActivity$8;

    invoke-direct {v5, p0, p1}, Lcom/conceptglobal/pmc/LoginActivity$8;-><init>(Lcom/conceptglobal/pmc/LoginActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, -0x2

    .line 1112
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    new-instance v6, Lcom/conceptglobal/pmc/LoginActivity$9;

    invoke-direct {v6, p0, p1}, Lcom/conceptglobal/pmc/LoginActivity$9;-><init>(Lcom/conceptglobal/pmc/LoginActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1129
    sget v5, Lcom/conceptglobal/pmc/LoginActivity;->trainingDaysDefaultValue:I

    int-to-long v5, v5

    cmp-long v8, v3, v5

    if-gez v8, :cond_6

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    .line 1133
    :cond_5
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_5

    .line 1130
    :cond_6
    :goto_4
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1135
    :goto_5
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1136
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 1139
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_7
    :goto_6
    return-void
.end method

.method public onCancel(Ljava/lang/String;Z)V
    .locals 0

    const/4 p2, 0x1

    .line 1310
    sput-boolean p2, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    .line 1311
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "ApplicationPatchURL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1312
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userActiveStatus:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p2, "Y"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userIMEIActiveStatus:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1313
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->launchHome()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 481
    const-string v0, "Update login time"

    const-string v1, "Login Activity"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 616
    :sswitch_0
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->forgotPassword()V

    goto/16 :goto_7

    .line 619
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseCheckDataError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity;->showAlert(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 483
    :sswitch_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_copyRightsDialogText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity;->showAlert(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 637
    :sswitch_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->showLanguageDialog()V

    goto/16 :goto_7

    .line 486
    :sswitch_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 487
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->emptyedit:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->requestFocus()Z

    .line 490
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_1

    .line 491
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getAvailableFreeSpace()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 495
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/DeviceMemory;->getInternalFreeSpaceInMB()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long v4, v4, v2

    .line 496
    iget-wide v6, p0, Lcom/conceptglobal/pmc/LoginActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_3

    .line 497
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_free_space_alert()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 498
    const-string v0, "Available size is "

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_0

    .line 499
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "MB.\n minimum "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/conceptglobal/pmc/LoginActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " MB is required to download data, please delete some files and try again."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 498
    :goto_0
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity;->showAlertDialog(Ljava/lang/String;)V

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "MB.\n minimum 500 MB is required to download data, please delete some files and try again."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity;->showAlertDialog(Ljava/lang/String;)V

    return-void

    .line 505
    :cond_3
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getAppVersionStatus()Z

    move-result p1

    if-nez p1, :cond_f

    .line 507
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->updateLoginTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 509
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 510
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->userActiveStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userActiveStatus:Ljava/lang/String;

    .line 514
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->userIMEIActiveStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userIMEIActiveStatus:Ljava/lang/String;

    .line 515
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->userIsDeviceActiveStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userSuspendStatus:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 518
    new-instance v2, Ljava/io/File;

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

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 520
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->finish()V

    goto :goto_2

    .line 522
    :cond_4
    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->etPin:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_e

    .line 525
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userActiveStatus:Ljava/lang/String;

    const-string v2, "Y"

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userIMEIActiveStatus:Ljava/lang/String;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 526
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->etPin:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->validateUser(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_8

    .line 528
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    const-string v4, "2"

    if-eqz p1, :cond_6

    .line 530
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->notificationData:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 531
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->checkForLatestPatch(Landroid/content/Context;I)Z

    move-result p1

    goto :goto_3

    .line 533
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->checkForLatestPatch(Landroid/content/Context;I)Z

    move-result p1

    :goto_3
    if-nez p1, :cond_10

    .line 537
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 541
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->updateLoginTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 543
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 544
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :goto_4
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->launchHome()V

    goto/16 :goto_7

    .line 550
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->notificationData:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 551
    const-string p1, "You have New Notifications,Please connect to Internet and do master sync"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 553
    :cond_7
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 556
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->launchHome()V

    goto/16 :goto_7

    .line 560
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->etPin:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_notAValidPWError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 561
    iget p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->wrongPasswordEntries:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->wrongPasswordEntries:I

    .line 564
    :try_start_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->wrongPasswordLimit:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_9

    .line 565
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_wrongPinAttemtsDBDelToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 567
    :cond_9
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->wrongPasswordEntries:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->wrongPasswordLimit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_wrongAttemptsText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 570
    :goto_5
    iget p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->wrongPasswordEntries:I

    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->wrongPasswordLimit:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_10

    .line 571
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dataErasedToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 573
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getDatabaseFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteDir(Ljava/io/File;)Z

    .line 574
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_7

    :catch_3
    move-exception p1

    .line 577
    invoke-static {v1, p1, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_7

    .line 580
    :cond_a
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userActiveStatus:Ljava/lang/String;

    if-eqz p1, :cond_d

    const-string v0, "N"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userIMEIActiveStatus:Ljava/lang/String;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 583
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userActiveStatus:Ljava/lang/String;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userSuspendStatus:Ljava/lang/String;

    if-eqz p1, :cond_b

    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 585
    const-string p1, "User Suspended."

    const-string v0, "Sorry you have been suspendend temporarly"

    goto :goto_6

    .line 586
    :cond_b
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userActiveStatus:Ljava/lang/String;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userSuspendStatus:Ljava/lang/String;

    if-eqz p1, :cond_c

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 588
    const-string p1, "User Removed."

    const-string v0, "Sorry you have been removed from server"

    goto :goto_6

    .line 590
    :cond_c
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_userRemovedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 591
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_userRemovedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    :goto_6
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/conceptglobal/pmc/LoginActivity;->showDBDeleteDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 597
    :cond_d
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_userRemovedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 598
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_userRemovedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcom/conceptglobal/pmc/LoginActivity;->showDBDeleteDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 602
    :cond_e
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->etPin:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    const-string v0, "Please enter password"

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 605
    :cond_f
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->showAppDialog()V

    :cond_10
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900bb -> :sswitch_3
        0x7f090508 -> :sswitch_2
        0x7f09050e -> :sswitch_1
        0x7f090537 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 171
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00da

    .line 176
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity;->setContentView(I)V

    .line 177
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f060052

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 179
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Z)V

    .line 181
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 184
    invoke-static {p1, v0, v0}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;II)V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f060051

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/PMCApplication;

    .line 193
    iput-object p0, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    .line 194
    new-instance p1, Lcom/conceptglobal/pmc/utils/SharedPrefManager;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->sharedPrefman:Lcom/conceptglobal/pmc/utils/SharedPrefManager;

    .line 195
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getPMCLanguage(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->languageSelectedId:I

    .line 196
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->reset()V

    .line 197
    iget p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->languageSelectedId:I

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity;->getLanguageConfigurations(I)V

    .line 198
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->liveOrTrain:I

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Login"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "time111"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :try_start_0
    const-string v3, "Login"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    :goto_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->init()V

    .line 207
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->setActionBar()V

    .line 209
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->setLayoutData()V

    .line 210
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->bindLabelNames()V

    .line 211
    const-string p1, "Setting listener"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity;->setListeners(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->createExtraColumns()Z

    .line 222
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 223
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->checkUserImeiActiveStatus()V

    .line 224
    new-instance p1, Lcom/conceptglobal/pmc/sync/DbPatch;

    iget-object v3, p0, Lcom/conceptglobal/pmc/LoginActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v3, v1, v2}, Lcom/conceptglobal/pmc/sync/DbPatch;-><init>(Landroid/content/Context;ZZ)V

    .line 225
    new-instance v2, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;

    invoke-direct {v2, p1}, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;-><init>(Lcom/conceptglobal/pmc/sync/DbPatch;)V

    iput-object v2, p1, Lcom/conceptglobal/pmc/sync/DbPatch;->mTask:Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;

    .line 226
    iget-object p1, p1, Lcom/conceptglobal/pmc/sync/DbPatch;->mTask:Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 228
    :cond_2
    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/LoginActivity;->checkLoginStatus(Z)V

    .line 234
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "time"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const-string v1, "FreeSpaceRequiredForDC"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    goto :goto_2

    .line 238
    :cond_3
    iget-wide v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J

    :goto_2
    iput-wide v0, p0, Lcom/conceptglobal/pmc/LoginActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 1

    .line 1299
    const-string v0, "DBPATCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1302
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userActiveStatus:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "Y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity;->userIMEIActiveStatus:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1303
    invoke-direct {p0}, Lcom/conceptglobal/pmc/LoginActivity;->launchHome()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1327
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 1328
    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->activityPaused()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1318
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 1319
    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->activityResumed()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1333
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
