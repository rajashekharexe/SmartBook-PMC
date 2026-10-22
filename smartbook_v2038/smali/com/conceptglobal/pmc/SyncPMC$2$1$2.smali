.class Lcom/conceptglobal/pmc/SyncPMC$2$1$2;
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

    .line 338
    iput-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$2;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$2;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1$2;->this$2:Lcom/conceptglobal/pmc/SyncPMC$2$1;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v1}, Lcom/conceptglobal/pmc/SyncPMC;->access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10025c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/conceptglobal/pmc/SyncPMC;->access$200(Lcom/conceptglobal/pmc/SyncPMC;Ljava/lang/String;I)V

    return-void
.end method
