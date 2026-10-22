.class public Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;
.super Ljava/lang/Object;
.source "DownloadRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;
    }
.end annotation


# instance fields
.field private mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mDelivery:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

.field private mDownloadDispatchers:[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

.field private mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->initialize(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->initialize(Landroid/os/Handler;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->initialize(Landroid/os/Handler;)V

    return-void

    .line 118
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "callbackHandler must not be null"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDownloadId()I
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private initialize(Landroid/os/Handler;)V
    .locals 1

    .line 252
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 253
    new-array v0, v0, [Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

    .line 254
    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;-><init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDelivery:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

    return-void
.end method

.method private initialize(Landroid/os/Handler;I)V
    .locals 0

    .line 261
    new-array p2, p2, [Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

    .line 262
    new-instance p2, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;-><init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDelivery:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

    return-void
.end method

.method private stop()V
    .locals 3

    const/4 v0, 0x0

    .line 269
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 270
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->quit()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method add(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)I
    .locals 3

    .line 143
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->getDownloadId()I

    move-result v0

    .line 145
    invoke-virtual {p1, p0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDownloadRequestQueue(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;)V

    .line 147
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDownloadId(I)V

    .line 153
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return v0

    :catchall_0
    move-exception p1

    .line 149
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method cancel(I)I
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    .line 199
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 200
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->cancel()V

    .line 201
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 204
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method cancelAll()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    .line 182
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->cancel()V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 187
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method finish(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 212
    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 214
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method query(I)I
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    .line 167
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 168
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadState()I

    move-result p1

    monitor-exit v0

    return p1

    .line 171
    :cond_1
    monitor-exit v0

    const/16 p1, 0x40

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method release()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 223
    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 225
    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 226
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 229
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v0, :cond_1

    .line 230
    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

    if-eqz v0, :cond_3

    .line 234
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->stop()V

    const/4 v0, 0x0

    .line 236
    :goto_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 237
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    :cond_2
    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

    :cond_3
    return-void
.end method

.method public start()V
    .locals 4

    .line 125
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->stop()V

    const/4 v0, 0x0

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 129
    new-instance v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDelivery:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;)V

    .line 130
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

    aput-object v1, v2, v0

    .line 131
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
