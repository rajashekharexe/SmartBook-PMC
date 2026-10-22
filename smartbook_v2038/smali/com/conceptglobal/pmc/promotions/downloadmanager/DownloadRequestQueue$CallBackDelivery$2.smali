.class Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$2;
.super Ljava/lang/Object;
.source "DownloadRequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;->postDownloadComplete(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

.field final synthetic val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$2;->this$1:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$2;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$2;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$2;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$2;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;->onDownloadComplete(I)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$2;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getStatusListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$2;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getStatusListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$2;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;->onDownloadComplete(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V

    :cond_1
    return-void
.end method
