.class Lcom/conceptglobal/pmc/SetupPMC$8$1;
.super Ljava/lang/Object;
.source "SetupPMC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SetupPMC$8;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/SetupPMC$8;

.field final synthetic val$responseFarmers:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SetupPMC$8;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 741
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$8$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$8;

    iput-object p2, p0, Lcom/conceptglobal/pmc/SetupPMC$8$1;->val$responseFarmers:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$8$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$8;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$8;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    new-instance v1, Lcom/conceptglobal/pmc/SetupPMC$8$1$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SetupPMC$8$1$1;-><init>(Lcom/conceptglobal/pmc/SetupPMC$8$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 752
    new-instance v0, Lcom/conceptglobal/pmc/SetupPMC$8$1$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SetupPMC$8$1$2;-><init>(Lcom/conceptglobal/pmc/SetupPMC$8$1;)V

    .line 753
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/SetupPMC$8$1$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 755
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lcom/conceptglobal/pmc/SetupPMC$8$1;->val$responseFarmers:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 756
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 757
    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignFarmerActivityPendingCountDetails(Ljava/util/List;)V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$8$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$8;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$8;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    new-instance v1, Lcom/conceptglobal/pmc/SetupPMC$8$1$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SetupPMC$8$1$3;-><init>(Lcom/conceptglobal/pmc/SetupPMC$8$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 766
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC$8$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$8;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SetupPMC$8;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {v1}, Lcom/conceptglobal/pmc/SetupPMC;->access$400(Lcom/conceptglobal/pmc/SetupPMC;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 767
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$8$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$8;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$8;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    new-instance v1, Lcom/conceptglobal/pmc/SetupPMC$8$1$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SetupPMC$8$1$4;-><init>(Lcom/conceptglobal/pmc/SetupPMC$8$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
