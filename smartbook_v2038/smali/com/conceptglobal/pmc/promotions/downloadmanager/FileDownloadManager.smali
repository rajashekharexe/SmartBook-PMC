.class public Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;
.super Ljava/lang/Object;
.source "FileDownloadManager.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadManager;


# instance fields
.field private mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    invoke-direct {v0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;-><init>(I)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    .line 54
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->start()V

    const/4 p1, 0x1

    .line 55
    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->setLoggingEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    invoke-direct {v0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    .line 41
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->start()V

    const/4 p1, 0x1

    .line 42
    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->setLoggingEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    .line 30
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->start()V

    .line 31
    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->setLoggingEnabled(Z)V

    return-void
.end method

.method private checkReleased(Ljava/lang/String;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setLoggingEnabled(Z)V
    .locals 0

    .line 118
    invoke-static {p0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public add(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 69
    const-string v0, "add(...) called on a released FileDownloadManager."

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->checkReleased(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->add(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)I

    move-result p1

    return p1

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DownloadRequest cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancel(I)I
    .locals 1

    .line 78
    const-string v0, "cancel(...) called on a released FileDownloadManager."

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->checkReleased(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->cancel(I)I

    move-result p1

    return p1
.end method

.method public cancelAll()V
    .locals 1

    .line 84
    const-string v0, "cancelAll() called on a released FileDownloadManager."

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->checkReleased(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->cancelAll()V

    return-void
.end method

.method public isReleased()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public query(I)I
    .locals 1

    .line 90
    const-string v0, "query(...) called on a released FileDownloadManager."

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->checkReleased(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->query(I)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->release()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    :cond_0
    return-void
.end method
