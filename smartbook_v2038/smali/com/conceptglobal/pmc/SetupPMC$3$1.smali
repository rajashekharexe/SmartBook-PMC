.class Lcom/conceptglobal/pmc/SetupPMC$3$1;
.super Ljava/lang/Object;
.source "SetupPMC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SetupPMC$3;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/SetupPMC$3;

.field final synthetic val$responseFarmers:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SetupPMC$3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$3;

    iput-object p2, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1;->val$responseFarmers:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$3;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    new-instance v1, Lcom/conceptglobal/pmc/SetupPMC$3$1$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SetupPMC$3$1$1;-><init>(Lcom/conceptglobal/pmc/SetupPMC$3$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 393
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 394
    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1;->val$responseFarmers:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;

    .line 395
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$3;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    iget-object v2, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$3;

    iget-object v2, v2, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {v2}, Lcom/conceptglobal/pmc/SetupPMC;->access$600(Lcom/conceptglobal/pmc/SetupPMC;)Lcom/conceptglobal/pmc/model/SendAckList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmersList(Lcom/conceptglobal/pmc/model/GetSegmentationDetails;Lcom/conceptglobal/pmc/model/SendAckList;)Lcom/conceptglobal/pmc/model/SendAckList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/SetupPMC;->access$602(Lcom/conceptglobal/pmc/SetupPMC;Lcom/conceptglobal/pmc/model/SendAckList;)Lcom/conceptglobal/pmc/model/SendAckList;

    .line 396
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$3;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    new-instance v1, Lcom/conceptglobal/pmc/SetupPMC$3$1$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SetupPMC$3$1$2;-><init>(Lcom/conceptglobal/pmc/SetupPMC$3$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 403
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$3;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {v1}, Lcom/conceptglobal/pmc/SetupPMC;->access$400(Lcom/conceptglobal/pmc/SetupPMC;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$3;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    new-instance v1, Lcom/conceptglobal/pmc/SetupPMC$3$1$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SetupPMC$3$1$3;-><init>(Lcom/conceptglobal/pmc/SetupPMC$3$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
