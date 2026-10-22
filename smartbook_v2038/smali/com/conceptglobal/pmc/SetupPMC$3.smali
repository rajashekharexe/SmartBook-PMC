.class Lcom/conceptglobal/pmc/SetupPMC$3;
.super Ljava/lang/Object;
.source "SetupPMC.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/SetupPMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/SetupPMC;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SetupPMC;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    if-nez p2, :cond_5

    .line 377
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getFarmerListListener"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p2, 0x7f10025f

    if-eqz p1, :cond_4

    .line 379
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 380
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/conceptglobal/pmc/SetupPMC$3$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/SetupPMC$3$1;-><init>(Lcom/conceptglobal/pmc/SetupPMC$3;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 413
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 415
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$600(Lcom/conceptglobal/pmc/SetupPMC;)Lcom/conceptglobal/pmc/model/SendAckList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$600(Lcom/conceptglobal/pmc/SetupPMC;)Lcom/conceptglobal/pmc/model/SendAckList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/SendAckList;->getAckList()Lcom/conceptglobal/pmc/model/SendAcknowledge;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 416
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    new-instance p2, Lcom/conceptglobal/pmc/SetupPMC$3$2;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/SetupPMC$3$2;-><init>(Lcom/conceptglobal/pmc/SetupPMC$3;)V

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/SetupPMC;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 423
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 425
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 426
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/SetupPMC;->getPMCSVFarmerDetailsFromServer()V

    goto :goto_0

    .line 428
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$900(Lcom/conceptglobal/pmc/SetupPMC;)V

    goto :goto_0

    .line 431
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$000(Lcom/conceptglobal/pmc/SetupPMC;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType2:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/SetupPMC;->access$500(Lcom/conceptglobal/pmc/SetupPMC;Ljava/lang/String;I)V

    goto :goto_0

    .line 436
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$000(Lcom/conceptglobal/pmc/SetupPMC;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType2:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/SetupPMC;->access$500(Lcom/conceptglobal/pmc/SetupPMC;Ljava/lang/String;I)V

    goto :goto_0

    .line 440
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$000(Lcom/conceptglobal/pmc/SetupPMC;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100253

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType2:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->access$500(Lcom/conceptglobal/pmc/SetupPMC;Ljava/lang/String;I)V

    .line 441
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$400(Lcom/conceptglobal/pmc/SetupPMC;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
