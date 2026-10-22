.class Lcom/conceptglobal/pmc/SetupPMC$1$1;
.super Ljava/lang/Object;
.source "SetupPMC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SetupPMC$1;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/SetupPMC$1;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SetupPMC$1;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$1$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$1$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$1;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    new-instance v1, Lcom/conceptglobal/pmc/SetupPMC$1$1$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SetupPMC$1$1$1;-><init>(Lcom/conceptglobal/pmc/SetupPMC$1$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 238
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$1$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$1;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    new-instance v1, Lcom/conceptglobal/pmc/SetupPMC$1$1$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SetupPMC$1$1$2;-><init>(Lcom/conceptglobal/pmc/SetupPMC$1$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 245
    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC$1$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$1;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SetupPMC$1;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {v1}, Lcom/conceptglobal/pmc/SetupPMC;->access$400(Lcom/conceptglobal/pmc/SetupPMC;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$1$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$1;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    new-instance v1, Lcom/conceptglobal/pmc/SetupPMC$1$1$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SetupPMC$1$1$3;-><init>(Lcom/conceptglobal/pmc/SetupPMC$1$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/SetupPMC;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
