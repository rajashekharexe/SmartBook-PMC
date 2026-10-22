.class Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;
.super Ljava/lang/Object;
.source "DownloadRequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;->postDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

.field final synthetic val$errorCode:I

.field final synthetic val$errorMsg:Ljava/lang/String;

.field final synthetic val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->this$1:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    iput p3, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->val$errorCode:I

    iput-object p4, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->val$errorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result v1

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->val$errorCode:I

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->val$errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;->onDownloadFailed(IILjava/lang/String;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getStatusListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getStatusListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->val$errorCode:I

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;->val$errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;->onDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    :cond_1
    return-void
.end method
