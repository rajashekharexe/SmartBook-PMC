.class Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;
.super Ljava/lang/Object;
.source "DownloadRequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;->postProgressUpdate(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

.field final synthetic val$downloadedBytes:J

.field final synthetic val$progress:I

.field final synthetic val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

.field final synthetic val$totalBytes:J


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->this$1:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    iput-wide p3, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$totalBytes:J

    iput-wide p5, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$downloadedBytes:J

    iput p7, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 84
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;

    move-result-object v1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result v2

    iget-wide v3, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$totalBytes:J

    iget-wide v5, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$downloadedBytes:J

    iget v7, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$progress:I

    invoke-interface/range {v1 .. v7}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;->onProgress(IJJI)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getStatusListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getStatusListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    iget-wide v3, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$totalBytes:J

    iget-wide v5, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$downloadedBytes:J

    iget v7, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;->val$progress:I

    invoke-interface/range {v1 .. v7}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;->onProgress(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;JJI)V

    :cond_1
    return-void
.end method
