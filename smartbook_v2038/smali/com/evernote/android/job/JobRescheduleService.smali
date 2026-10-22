.class public final Lcom/evernote/android/job/JobRescheduleService;
.super Landroidx/core/app/JobIntentService;
.source "JobRescheduleService.java"


# static fields
.field private static final CAT:Lcom/evernote/android/job/util/JobCat;

.field static latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobRescheduleService"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/evernote/android/job/JobRescheduleService;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method static startService(Landroid/content/Context;)V
    .locals 3

    .line 44
    :try_start_0
    const-class v0, Lcom/evernote/android/job/JobRescheduleService;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const v2, 0x7ffff1c0

    invoke-static {p0, v0, v2, v1}, Lcom/evernote/android/job/JobRescheduleService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 45
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object p0, Lcom/evernote/android/job/JobRescheduleService;->latch:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    sget-object v0, Lcom/evernote/android/job/JobRescheduleService;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 6

    .line 73
    :try_start_0
    sget-object p1, Lcom/evernote/android/job/JobRescheduleService;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v0, "Reschedule service started"

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->getJobReschedulePause()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    invoke-static {p0}, Lcom/evernote/android/job/JobManager;->create(Landroid/content/Context;)Lcom/evernote/android/job/JobManager;

    move-result-object v0
    :try_end_1
    .catch Lcom/evernote/android/job/JobManagerCreateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    :try_start_2
    invoke-virtual {v0, v1, v2, v2}, Lcom/evernote/android/job/JobManager;->getAllJobRequests(Ljava/lang/String;ZZ)Ljava/util/Set;

    move-result-object v1

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/evernote/android/job/JobRescheduleService;->rescheduleJobs(Lcom/evernote/android/job/JobManager;Ljava/util/Collection;)I

    move-result v0

    .line 87
    const-string v3, "Reschedule %d jobs of %d jobs"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    invoke-virtual {p1, v3, v4}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    sget-object p1, Lcom/evernote/android/job/JobRescheduleService;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void

    .line 89
    :catch_0
    sget-object p1, Lcom/evernote/android/job/JobRescheduleService;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_1

    .line 91
    sget-object p1, Lcom/evernote/android/job/JobRescheduleService;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 89
    sget-object v0, Lcom/evernote/android/job/JobRescheduleService;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    throw p1
.end method

.method rescheduleJobs(Lcom/evernote/android/job/JobManager;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 98
    invoke-virtual {p1, v0, v1, v1}, Lcom/evernote/android/job/JobManager;->getAllJobRequests(Ljava/lang/String;ZZ)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/JobRescheduleService;->rescheduleJobs(Lcom/evernote/android/job/JobManager;Ljava/util/Collection;)I

    move-result p1

    return p1
.end method

.method rescheduleJobs(Lcom/evernote/android/job/JobManager;Ljava/util/Collection;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/android/job/JobManager;",
            "Ljava/util/Collection<",
            "Lcom/evernote/android/job/JobRequest;",
            ">;)I"
        }
    .end annotation

    .line 104
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evernote/android/job/JobRequest;

    .line 106
    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest;->isStarted()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 107
    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/evernote/android/job/JobManager;->getJob(I)Lcom/evernote/android/job/Job;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest;->getJobApi()Lcom/evernote/android/job/JobApi;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/evernote/android/job/JobManager;->getJobProxy(Lcom/evernote/android/job/JobApi;)Lcom/evernote/android/job/JobProxy;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/evernote/android/job/JobProxy;->isPlatformJobScheduled(Lcom/evernote/android/job/JobRequest;)Z

    move-result v4

    xor-int/2addr v4, v5

    :goto_1
    if-eqz v4, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest;->cancelAndEdit()Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest$Builder;->build()Lcom/evernote/android/job/JobRequest;

    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest;->schedule()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    if-nez v2, :cond_3

    .line 123
    sget-object v2, Lcom/evernote/android/job/JobRescheduleService;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v2, v3}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method
