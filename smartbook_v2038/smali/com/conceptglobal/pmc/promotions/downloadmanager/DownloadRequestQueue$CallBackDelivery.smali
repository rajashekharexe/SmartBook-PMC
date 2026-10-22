.class Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;
.super Ljava/lang/Object;
.source "DownloadRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallBackDelivery"
.end annotation


# instance fields
.field private final mCallBackExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;Landroid/os/Handler;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;->this$0:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$1;-><init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;->mCallBackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public postDownloadComplete(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;->mCallBackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$2;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$2;-><init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;->mCallBackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$3;-><init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postProgressUpdate(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;JJI)V
    .locals 11

    move-object v8, p0

    .line 82
    iget-object v9, v8, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;->mCallBackExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery$4;-><init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;JJI)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
