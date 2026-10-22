.class public Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mCancelled:Z

.field private mCustomHeader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteDestinationFileOnFailure:Z

.field private mDestinationURI:Landroid/net/Uri;

.field private mDownloadContext:Ljava/lang/Object;

.field private mDownloadId:I

.field private mDownloadListener:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;

.field private mDownloadState:I

.field private mDownloadStatusListenerV1:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;

.field private mPriority:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

.field private mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

.field private mRetryPolicy:Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mCancelled:Z

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDeleteDestinationFileOnFailure:Z

    .line 65
    sget-object v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->NORMAL:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mPriority:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mCustomHeader:Ljava/util/HashMap;

    .line 77
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDownloadState:I

    .line 78
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mUri:Landroid/net/Uri;

    return-void

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only download HTTP/HTTPS URIs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addCustomHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mCustomHeader:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mCancelled:Z

    return-void
.end method

.method public compareTo(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)I
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getPriority()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    move-result-object v0

    .line 258
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getPriority()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 263
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDownloadId:I

    iget p1, p1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDownloadId:I

    sub-int/2addr v0, p1

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->compareTo(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)I

    move-result p1

    return p1
.end method

.method finish()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->finish(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V

    return-void
.end method

.method getCustomHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mCustomHeader:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDeleteDestinationFileOnFailure()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDeleteDestinationFileOnFailure:Z

    return v0
.end method

.method public getDestinationURI()Landroid/net/Uri;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDestinationURI:Landroid/net/Uri;

    return-object v0
.end method

.method public getDownloadContext()Ljava/lang/Object;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDownloadContext:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDownloadId()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDownloadId:I

    return v0
.end method

.method getDownloadListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDownloadListener:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;

    return-object v0
.end method

.method getDownloadState()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDownloadState:I

    return v0
.end method

.method public getPriority()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mPriority:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mRetryPolicy:Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;-><init>()V

    :cond_0
    return-object v0
.end method

.method getStatusListener()Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDownloadStatusListenerV1:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mCancelled:Z

    return v0
.end method

.method public setDeleteDestinationFileOnFailure(Z)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;
    .locals 0

    .line 222
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDeleteDestinationFileOnFailure:Z

    return-object p0
.end method

.method public setDestinationURI(Landroid/net/Uri;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDestinationURI:Landroid/net/Uri;

    return-object p0
.end method

.method public setDownloadContext(Ljava/lang/Object;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDownloadContext:Ljava/lang/Object;

    return-object p0
.end method

.method final setDownloadId(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDownloadId:I

    return-void
.end method

.method public setDownloadListener(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDownloadListener:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListener;

    return-object p0
.end method

.method setDownloadRequestQueue(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mRequestQueue:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;

    return-void
.end method

.method setDownloadState(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDownloadState:I

    return-void
.end method

.method public setPriority(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mPriority:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    return-object p0
.end method

.method public setRetryPolicy(Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mRetryPolicy:Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;

    return-object p0
.end method

.method public setStatusListener(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mDownloadStatusListenerV1:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->mUri:Landroid/net/Uri;

    return-object p0
.end method
