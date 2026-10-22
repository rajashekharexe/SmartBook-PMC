.class Lcom/conceptglobal/pmc/SyncPMC$2$1$1;
.super Ljava/lang/Object;
.source "SyncPMC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SyncPMC$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SyncPMC$2$1;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$1;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$1;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$300(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyfromwhichclass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x4000000

    if-eqz v0, :cond_4

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 303
    const-string v2, "fromfarmerformactivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "2"

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 304
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIssupervisor()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$1;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$400(Lcom/conceptglobal/pmc/SyncPMC;)V

    goto/16 :goto_0

    .line 313
    :cond_1
    const-string v2, "frommbaactivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIssupervisor()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$1;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$400(Lcom/conceptglobal/pmc/SyncPMC;)V

    goto :goto_0

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$1;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$1;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    iget-object v3, v3, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v3, v3, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v3}, Lcom/conceptglobal/pmc/SyncPMC;->access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/conceptglobal/pmc/SetupPMC;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/SyncPMC;->startActivity(Landroid/content/Intent;)V

    .line 325
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$1;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/SyncPMC;->finish()V

    goto :goto_0

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$1;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$1;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    iget-object v3, v3, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v3, v3, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v3}, Lcom/conceptglobal/pmc/SyncPMC;->access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/conceptglobal/pmc/SetupPMC;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/SyncPMC;->startActivity(Landroid/content/Intent;)V

    .line 329
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$1;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/SyncPMC;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 332
    iget-object v1, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$1;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v1}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
