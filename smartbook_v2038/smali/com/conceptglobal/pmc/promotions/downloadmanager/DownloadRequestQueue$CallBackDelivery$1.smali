.class Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$1;
.super Ljava/lang/Object;
.source "DownloadRequestQueue.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;-><init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$1;->this$1:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$1;->val$this$0:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
