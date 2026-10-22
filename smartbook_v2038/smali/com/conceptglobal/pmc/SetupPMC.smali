.class public Lcom/conceptglobal/pmc/SetupPMC;
.super Landroid/app/Activity;
.source "SetupPMC.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/NetworkListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private getAckReceiptListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private getAssignListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private getFarmerListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private getRetailersListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private getSVFarmerApprovalListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private getSVFarmerListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private getsvAckReceiptListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private getsvApprovalAckReceiptListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private objAck:Lcom/conceptglobal/pmc/model/SendAckList;

.field private objAcksv:Lcom/conceptglobal/pmc/model/SendAckListSV;

.field private objAcksvforApproval:Lcom/conceptglobal/pmc/model/SendSVAckForApproval;

.field private retailerCount:I

.field private rlSyncScreen:Landroid/widget/RelativeLayout;

.field private sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

.field private tvProgressMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const-string v0, "SetupPMC"

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->retailerCount:I

    .line 216
    new-instance v0, Lcom/conceptglobal/pmc/SetupPMC$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SetupPMC$1;-><init>(Lcom/conceptglobal/pmc/SetupPMC;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->getSVFarmerListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 292
    new-instance v0, Lcom/conceptglobal/pmc/SetupPMC$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SetupPMC$2;-><init>(Lcom/conceptglobal/pmc/SetupPMC;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->getRetailersListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 372
    new-instance v0, Lcom/conceptglobal/pmc/SetupPMC$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SetupPMC$3;-><init>(Lcom/conceptglobal/pmc/SetupPMC;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->getFarmerListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 465
    new-instance v0, Lcom/conceptglobal/pmc/SetupPMC$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SetupPMC$4;-><init>(Lcom/conceptglobal/pmc/SetupPMC;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->getAckReceiptListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 520
    new-instance v0, Lcom/conceptglobal/pmc/SetupPMC$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SetupPMC$5;-><init>(Lcom/conceptglobal/pmc/SetupPMC;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->getsvAckReceiptListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 583
    new-instance v0, Lcom/conceptglobal/pmc/SetupPMC$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SetupPMC$6;-><init>(Lcom/conceptglobal/pmc/SetupPMC;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->getSVFarmerApprovalListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 672
    new-instance v0, Lcom/conceptglobal/pmc/SetupPMC$7;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SetupPMC$7;-><init>(Lcom/conceptglobal/pmc/SetupPMC;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->getsvApprovalAckReceiptListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 735
    new-instance v0, Lcom/conceptglobal/pmc/SetupPMC$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SetupPMC$8;-><init>(Lcom/conceptglobal/pmc/SetupPMC;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->getAssignListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/SetupPMC;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/SetupPMC;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/conceptglobal/pmc/SetupPMC;->tvProgressMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/SetupPMC;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->sendSVApprovalFarmersRequest()V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/SetupPMC;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->sendSVApprovalAcktoServer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/SetupPMC;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getSVAssignPendingFromServer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/SetupPMC;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->init()V

    return-void
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/SetupPMC;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->setupPMC()V

    return-void
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/SetupPMC;)Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/conceptglobal/pmc/SetupPMC;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/SetupPMC;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/conceptglobal/pmc/SetupPMC;->rlSyncScreen:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/SetupPMC;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->sendSVAcktoServer()V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/SetupPMC;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/conceptglobal/pmc/SetupPMC;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/SetupPMC;Ljava/lang/String;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/SetupPMC;->showAlert(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/SetupPMC;)Lcom/conceptglobal/pmc/model/SendAckList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/conceptglobal/pmc/SetupPMC;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    return-object p0
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/SetupPMC;Lcom/conceptglobal/pmc/model/SendAckList;)Lcom/conceptglobal/pmc/model/SendAckList;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/SetupPMC;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getFarmerDetails()V

    return-void
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/SetupPMC;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->sendAckSendtoServer()V

    return-void
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/SetupPMC;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->redirectoHome()V

    return-void
.end method

.method private getFarmerDetails()V
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getPMCFarmerDetailsFromServer()V

    goto :goto_0

    .line 938
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType2:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->showAlert(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private getPMCFarmerDetailsFromServer()V
    .locals 9

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->tvProgressMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->rlSyncScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 139
    new-instance v0, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;-><init>()V

    .line 140
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 141
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;->setPDAID(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 143
    const-string v0, "getFarmerListListenerOBJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v4, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/conceptglobal/pmc/SetupPMC;->getFarmerListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

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

    .line 145
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetSegmentationDetails()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    .line 146
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getSVAssignPendingFromServer()V
    .locals 9

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->tvProgressMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->rlSyncScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 718
    new-instance v0, Lcom/conceptglobal/pmc/model/SVAssignAFCount;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SVAssignAFCount;-><init>()V

    .line 719
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 720
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/SVAssignAFCount;->setSvpdaid(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 722
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v4, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/conceptglobal/pmc/SetupPMC;->getAssignListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

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

    .line 723
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetAssignPendingDetails()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    .line 724
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 726
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 1

    .line 84
    iput-object p0, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    const v0, 0x7f0905ac

    .line 85
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/SetupPMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->tvProgressMessage:Landroid/widget/TextView;

    const v0, 0x7f090394

    .line 86
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/SetupPMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->rlSyncScreen:Landroid/widget/RelativeLayout;

    .line 87
    new-instance v0, Lcom/conceptglobal/pmc/model/SendAckList;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendAckList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    .line 88
    new-instance v0, Lcom/conceptglobal/pmc/model/SendAckListSV;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendAckListSV;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->objAcksv:Lcom/conceptglobal/pmc/model/SendAckListSV;

    .line 89
    new-instance v0, Lcom/conceptglobal/pmc/model/SendSVAckForApproval;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendSVAckForApproval;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->objAcksvforApproval:Lcom/conceptglobal/pmc/model/SendSVAckForApproval;

    return-void
.end method

.method private redirectoHome()V
    .locals 3

    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;-><init>(Landroid/content/Context;Z)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 967
    :cond_0
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    const v1, 0x7f1001a2

    invoke-static {p0, v1, v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;ILde/keyboardsurfer/android/widget/crouton/Style;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 970
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 972
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIssupervisor()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 976
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/SetupPMC;->startActivity(Landroid/content/Intent;)V

    .line 977
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->finish()V

    :goto_1
    return-void
.end method

.method private sendAckSendtoServer()V
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->sendAcktoServer()V

    goto :goto_0

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType2:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->showAlert(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private sendAcktoServer()V
    .locals 8

    .line 182
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->tvProgressMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->rlSyncScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 184
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/SendAckList;->setPDAID(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAckReceiptListenerOBJ"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v3, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/SetupPMC;->getAckReceiptListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSendACK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    .line 190
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private sendSVAcktoServer()V
    .locals 8

    .line 200
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->tvProgressMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->rlSyncScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 202
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 203
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->objAcksv:Lcom/conceptglobal/pmc/model/SendAckListSV;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/SendAckListSV;->setPDAID(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->objAcksv:Lcom/conceptglobal/pmc/model/SendAckListSV;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsvAckReceiptListenerOBJ"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v3, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/SetupPMC;->getsvAckReceiptListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSVSendACK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    .line 208
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private sendSVApprovalAcktoServer()V
    .locals 8

    .line 659
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->tvProgressMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100141

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->rlSyncScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 661
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 662
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->objAcksvforApproval:Lcom/conceptglobal/pmc/model/SendSVAckForApproval;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/SendSVAckForApproval;->setPDAID(Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->objAcksvforApproval:Lcom/conceptglobal/pmc/model/SendSVAckForApproval;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 664
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v3, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/SetupPMC;->getsvApprovalAckReceiptListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSyncSendApprovalACK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    .line 666
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private sendSVApprovalFarmersRequest()V
    .locals 9

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->tvProgressMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100142

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->rlSyncScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 564
    new-instance v0, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;-><init>()V

    .line 565
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 566
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;->setPdaid(Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;->setUsertype(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 569
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v4, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/conceptglobal/pmc/SetupPMC;->getSVFarmerApprovalListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

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

    .line 570
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetSVFarmerApproval()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    .line 571
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 574
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setData()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->setupPMC()V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType2:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->showAlert(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private setupPMC()V
    .locals 9

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->tvProgressMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->rlSyncScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 116
    new-instance v0, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;-><init>()V

    .line 117
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 118
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getTeritoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->setTerritoryId(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->setPDAID(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 121
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v4, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/conceptglobal/pmc/SetupPMC;->getRetailersListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

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

    .line 122
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetDealerList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    .line 123
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    .line 907
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 908
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/SetupPMC$12;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SetupPMC$12;-><init>(Lcom/conceptglobal/pmc/SetupPMC;)V

    const v2, 0x104000a

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/SetupPMC$11;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SetupPMC$11;-><init>(Lcom/conceptglobal/pmc/SetupPMC;)V

    const/high16 v2, 0x1040000

    .line 915
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 922
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 923
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlert(Ljava/lang/String;I)V
    .locals 3

    .line 811
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 812
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/SetupPMC$10;

    invoke-direct {v1, p0, p2}, Lcom/conceptglobal/pmc/SetupPMC$10;-><init>(Lcom/conceptglobal/pmc/SetupPMC;I)V

    const/high16 v2, 0x1040000

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 850
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/SetupPMC$9;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/SetupPMC$9;-><init>(Lcom/conceptglobal/pmc/SetupPMC;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 877
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 878
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 879
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPMCSVFarmerDetailsFromServer()V
    .locals 9

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->tvProgressMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->rlSyncScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 162
    new-instance v0, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;-><init>()V

    .line 163
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 164
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;->setPdaid(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;->setUsertype(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 167
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v4, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/conceptglobal/pmc/SetupPMC;->getSVFarmerListListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

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

    .line 168
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetSVFarmerDetails()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    .line 169
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/SetupPMC;->requestWindowFeature(I)Z

    const p1, 0x7f0c0133

    .line 72
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/SetupPMC;->setContentView(I)V

    .line 73
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->init()V

    .line 74
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SetupPMC;->setData()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 893
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1001e0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/SetupPMC;->showAlert(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNetWorkDisconnected()V
    .locals 3

    .line 989
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC;->context:Landroid/content/Context;

    const-string v1, "Network disconnected"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
