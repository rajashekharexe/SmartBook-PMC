.class Lcom/conceptglobal/pmc/SetupPMC$8;
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

    .line 735
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$8;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    if-nez p2, :cond_2

    .line 739
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getAssignListListener"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 740
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0xc

    if-le p2, v0, :cond_0

    .line 741
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/conceptglobal/pmc/SetupPMC$8$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/SetupPMC$8$1;-><init>(Lcom/conceptglobal/pmc/SetupPMC$8;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 775
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 777
    const-string p2, "[]"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 778
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$8;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$000(Lcom/conceptglobal/pmc/SetupPMC;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100145

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType6:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/SetupPMC;->access$500(Lcom/conceptglobal/pmc/SetupPMC;Ljava/lang/String;I)V

    goto :goto_0

    .line 780
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$8;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$000(Lcom/conceptglobal/pmc/SetupPMC;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10025f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType6:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/SetupPMC;->access$500(Lcom/conceptglobal/pmc/SetupPMC;Ljava/lang/String;I)V

    goto :goto_0

    .line 785
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$8;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$000(Lcom/conceptglobal/pmc/SetupPMC;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10025a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType6:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->access$500(Lcom/conceptglobal/pmc/SetupPMC;Ljava/lang/String;I)V

    .line 786
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$8;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$400(Lcom/conceptglobal/pmc/SetupPMC;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
