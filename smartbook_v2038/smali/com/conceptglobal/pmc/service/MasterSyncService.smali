.class public Lcom/conceptglobal/pmc/service/MasterSyncService;
.super Landroid/app/IntentService;
.source "MasterSyncService.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field bundle:Landroid/os/Bundle;

.field private callbackActivity:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field isTargetVsPlanData:Z

.field private objAck:Lcom/conceptglobal/pmc/model/SendAckList;

.field private objAcksv:Lcom/conceptglobal/pmc/model/SendAckListSV;

.field private objAcksvforApproval:Lcom/conceptglobal/pmc/model/SendSVAckForApproval;

.field private receiver:Landroid/os/ResultReceiver;

.field private sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    const-string v0, "MasterSyncService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v0, "SetupPMC"

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->TAG:Ljava/lang/String;

    .line 53
    iput-object p0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->context:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/conceptglobal/pmc/model/SendAckList;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendAckList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    .line 55
    new-instance v0, Lcom/conceptglobal/pmc/model/SendAckListSV;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendAckListSV;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->objAcksv:Lcom/conceptglobal/pmc/model/SendAckListSV;

    .line 56
    new-instance v0, Lcom/conceptglobal/pmc/model/SendSVAckForApproval;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendSVAckForApproval;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->objAcksvforApproval:Lcom/conceptglobal/pmc/model/SendSVAckForApproval;

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method private doMasterSync()V
    .locals 5

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Master sync start Time"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->isTargetVsPlanData:Z

    const-string v1, "Sync completed"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/MasterSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v3, v2, v4}, Lcom/conceptglobal/pmc/sync/MasterSync;-><init>(Landroid/content/Context;ZZ)V

    .line 100
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/sync/MasterSync;->startMasterSync(Z)V

    .line 101
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/service/MasterSyncService;->updateUIIfNeccessary(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/MasterSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/conceptglobal/pmc/sync/MasterSync;-><init>(Landroid/content/Context;Z)V

    .line 104
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/sync/MasterSync;->startMasterSync(Z)V

    .line 105
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/service/MasterSyncService;->updateUIIfNeccessary(Ljava/lang/String;)V

    .line 108
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Master sync End Time"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateUIIfNeccessary(Ljava/lang/String;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->bundle:Landroid/os/Bundle;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->bundle:Landroid/os/Bundle;

    const-string v1, "respMsg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->receiver:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_2

    .line 121
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->TAG:Ljava/lang/String;

    const-string v0, "sending back "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->callbackActivity:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->bundle:Landroid/os/Bundle;

    const-string v1, "callbackActivity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->receiver:Landroid/os/ResultReceiver;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/MasterSyncService;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/PMCApplication;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/PMCApplication;->isHomeFragmentActive()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 129
    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setRefreshActionButtonState(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .line 64
    const-string v0, "MasterSyncService"

    const-string v1, "onHandleIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->checkDataBase()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    const-string v0, "receiver"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->receiver:Landroid/os/ResultReceiver;

    .line 70
    const-string v0, "callbackActivity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->callbackActivity:Ljava/lang/String;

    .line 73
    :cond_0
    const-string v0, "TargetVsPlan"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->isTargetVsPlanData:Z

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callbackActivity--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->callbackActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/MasterSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 80
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/MasterSyncService;->receiver:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_2

    .line 81
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/service/MasterSyncService;->doMasterSync()V

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/MasterSyncService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000fb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/service/MasterSyncService;->updateUIIfNeccessary(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
