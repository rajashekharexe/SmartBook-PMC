.class Lcom/evernote/android/job/JobExecutor;
.super Ljava/lang/Object;
.source "JobExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/JobExecutor$JobCallable;
    }
.end annotation


# static fields
.field private static final CAT:Lcom/evernote/android/job/util/JobCat;

.field private static final WAKE_LOCK_TIMEOUT:J


# instance fields
.field private final mFinishedJobResults:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/evernote/android/job/Job$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final mFinishedJobsCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/evernote/android/job/Job;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mJobs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/evernote/android/job/Job;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/evernote/android/job/JobRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobExecutor"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/JobExecutor;->CAT:Lcom/evernote/android/job/util/JobCat;

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/JobExecutor;->WAKE_LOCK_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mJobs:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mFinishedJobsCache:Landroid/util/LruCache;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mFinishedJobResults:Landroid/util/SparseArray;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mStartingRequests:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .line 44
    sget-wide v0, Lcom/evernote/android/job/JobExecutor;->WAKE_LOCK_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$200()Lcom/evernote/android/job/util/JobCat;
    .locals 1

    .line 44
    sget-object v0, Lcom/evernote/android/job/JobExecutor;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-object v0
.end method


# virtual methods
.method cleanUpRoutine(Landroid/util/LruCache;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/evernote/android/job/Job;",
            ">;>;)V"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 142
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 143
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 144
    :cond_1
    invoke-virtual {p1, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public declared-synchronized execute(Landroid/content/Context;Lcom/evernote/android/job/JobRequest;Lcom/evernote/android/job/Job;Landroid/os/Bundle;)Ljava/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/evernote/android/job/JobRequest;",
            "Lcom/evernote/android/job/Job;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/android/job/Job$Result;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mStartingRequests:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_0

    .line 65
    sget-object p1, Lcom/evernote/android/job/JobExecutor;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string p3, "JobCreator returned null for tag %s"

    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object p2

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v1

    invoke-virtual {p1, p3, p4}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-object v0

    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Lcom/evernote/android/job/Job;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    invoke-virtual {p3, p1}, Lcom/evernote/android/job/Job;->setContext(Landroid/content/Context;)Lcom/evernote/android/job/Job;

    move-result-object v3

    invoke-virtual {v3, p2, p4}, Lcom/evernote/android/job/Job;->setRequest(Lcom/evernote/android/job/JobRequest;Landroid/os/Bundle;)Lcom/evernote/android/job/Job;

    .line 74
    sget-object p4, Lcom/evernote/android/job/JobExecutor;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v3, "Executing %s, context %s"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p1, v4, v2

    invoke-virtual {p4, v3, v4}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lcom/evernote/android/job/JobExecutor;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result p2

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/evernote/android/job/JobExecutor$JobCallable;

    invoke-direct {p2, p0, p3, v0}, Lcom/evernote/android/job/JobExecutor$JobCallable;-><init>(Lcom/evernote/android/job/JobExecutor;Lcom/evernote/android/job/Job;Lcom/evernote/android/job/JobExecutor$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 69
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p4, "Job for tag %s was already run, a creator should always create a new Job instance"

    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {p3, p4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAllJobResults()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/evernote/android/job/Job$Result;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mFinishedJobResults:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAllJobs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/evernote/android/job/Job;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 90
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/JobExecutor;->getAllJobsForTag(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllJobsForTag(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/evernote/android/job/Job;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/evernote/android/job/JobExecutor;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 96
    iget-object v2, p0, Lcom/evernote/android/job/JobExecutor;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/android/job/Job;

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {v2}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/android/job/Job$Params;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor;->mFinishedJobsCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 104
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/android/job/Job;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 109
    invoke-virtual {v2}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/android/job/Job$Params;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 114
    :cond_6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getJob(I)Lcom/evernote/android/job/Job;
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 83
    monitor-exit p0

    return-object v0

    .line 85
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mFinishedJobsCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/android/job/Job;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isRequestStarting(Lcom/evernote/android/job/JobRequest;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mStartingRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1
.end method

.method declared-synchronized markJobAsFinished(Lcom/evernote/android/job/Job;)V
    .locals 3

    monitor-enter p0

    .line 131
    :try_start_0
    invoke-virtual {p1}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/Job$Params;->getId()I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 133
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor;->mFinishedJobsCache:Landroid/util/LruCache;

    invoke-virtual {p0, v1}, Lcom/evernote/android/job/JobExecutor;->cleanUpRoutine(Landroid/util/LruCache;)V

    .line 134
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor;->mFinishedJobResults:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/evernote/android/job/Job;->getResult()Lcom/evernote/android/job/Job$Result;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor;->mFinishedJobsCache:Landroid/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized markJobRequestStarting(Lcom/evernote/android/job/JobRequest;)V
    .locals 1

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mStartingRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
