.class public final Lcom/evernote/android/job/JobManager;
.super Ljava/lang/Object;
.source "JobManager.java"


# static fields
.field private static final CAT:Lcom/evernote/android/job/util/JobCat;

.field private static volatile instance:Lcom/evernote/android/job/JobManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mJobCreatorHolder:Lcom/evernote/android/job/JobCreatorHolder;

.field private final mJobExecutor:Lcom/evernote/android/job/JobExecutor;

.field private final mJobStorage:Lcom/evernote/android/job/JobStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobManager"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/JobManager;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    .line 144
    new-instance v0, Lcom/evernote/android/job/JobCreatorHolder;

    invoke-direct {v0}, Lcom/evernote/android/job/JobCreatorHolder;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobCreatorHolder:Lcom/evernote/android/job/JobCreatorHolder;

    .line 145
    new-instance v0, Lcom/evernote/android/job/JobStorage;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/JobStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    .line 146
    new-instance v0, Lcom/evernote/android/job/JobExecutor;

    invoke-direct {v0}, Lcom/evernote/android/job/JobExecutor;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobExecutor:Lcom/evernote/android/job/JobExecutor;

    .line 148
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->isSkipJobReschedule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-static {p1}, Lcom/evernote/android/job/JobRescheduleService;->startService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized cancelAllInner(Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 410
    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/evernote/android/job/JobManager;->getAllJobRequests(Ljava/lang/String;ZZ)Ljava/util/Set;

    move-result-object v1

    .line 411
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/android/job/JobRequest;

    .line 412
    invoke-direct {p0, v2}, Lcom/evernote/android/job/JobManager;->cancelInner(Lcom/evernote/android/job/JobRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/evernote/android/job/JobManager;->getAllJobs()Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/evernote/android/job/JobManager;->getAllJobsForTag(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 419
    :goto_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/android/job/Job;

    .line 420
    invoke-direct {p0, v1}, Lcom/evernote/android/job/JobManager;->cancelInner(Lcom/evernote/android/job/Job;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 424
    :cond_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private cancelInner(Lcom/evernote/android/job/Job;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 399
    invoke-virtual {p1, v1}, Lcom/evernote/android/job/Job;->cancel(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    sget-object v2, Lcom/evernote/android/job/JobManager;->CAT:Lcom/evernote/android/job/util/JobCat;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string p1, "Cancel running %s"

    invoke-virtual {v2, p1, v3}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    return v0
.end method

.method private cancelInner(Lcom/evernote/android/job/JobRequest;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 388
    sget-object v1, Lcom/evernote/android/job/JobManager;->CAT:Lcom/evernote/android/job/util/JobCat;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string v0, "Found pending job %s, canceling"

    invoke-virtual {v1, v0, v3}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobApi()Lcom/evernote/android/job/JobApi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/JobManager;->getJobProxy(Lcom/evernote/android/job/JobApi;)Lcom/evernote/android/job/JobProxy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/evernote/android/job/JobProxy;->cancel(I)V

    .line 390
    invoke-virtual {p0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    const-wide/16 v0, 0x0

    .line 391
    invoke-virtual {p1, v0, v1}, Lcom/evernote/android/job/JobRequest;->setScheduledAt(J)V

    return v2

    :cond_0
    return v0
.end method

.method public static create(Landroid/content/Context;)Lcom/evernote/android/job/JobManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/android/job/JobManagerCreateException;
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    if-nez v0, :cond_6

    .line 88
    const-class v0, Lcom/evernote/android/job/JobManager;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    if-nez v1, :cond_5

    .line 90
    const-string v1, "Context cannot be null"

    invoke-static {p0, v1}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/evernote/android/job/JobApi;->getDefault(Landroid/content/Context;)Lcom/evernote/android/job/JobApi;

    move-result-object v1

    .line 98
    sget-object v2, Lcom/evernote/android/job/JobApi;->V_14:Lcom/evernote/android/job/JobApi;

    if-ne v1, v2, :cond_2

    invoke-virtual {v1, p0}, Lcom/evernote/android/job/JobApi;->isSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    new-instance p0, Lcom/evernote/android/job/JobManagerCreateException;

    const-string v1, "All APIs are disabled, cannot schedule any job"

    invoke-direct {p0, v1}, Lcom/evernote/android/job/JobManagerCreateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_2
    :goto_0
    new-instance v1, Lcom/evernote/android/job/JobManager;

    invoke-direct {v1, p0}, Lcom/evernote/android/job/JobManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    .line 104
    invoke-static {p0}, Lcom/evernote/android/job/util/JobUtil;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 105
    sget-object v1, Lcom/evernote/android/job/JobManager;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v2, "No wake lock permission"

    invoke-virtual {v1, v2}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;)V

    .line 107
    :cond_3
    invoke-static {p0}, Lcom/evernote/android/job/util/JobUtil;->hasBootPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 108
    sget-object v1, Lcom/evernote/android/job/JobManager;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v2, "No boot permission"

    invoke-virtual {v1, v2}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;)V

    .line 111
    :cond_4
    invoke-static {p0}, Lcom/evernote/android/job/JobManager;->sendAddJobCreatorIntent(Landroid/content/Context;)V

    .line 113
    :cond_5
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 116
    :cond_6
    :goto_1
    sget-object p0, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    return-object p0
.end method

.method public static instance()Lcom/evernote/android/job/JobManager;
    .locals 3

    .line 126
    sget-object v0, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    if-nez v0, :cond_1

    .line 127
    const-class v0, Lcom/evernote/android/job/JobManager;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    if-eqz v1, :cond_0

    .line 131
    monitor-exit v0

    goto :goto_0

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You need to call create() at least once to create the singleton"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 134
    :cond_1
    :goto_0
    sget-object v0, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    return-object v0
.end method

.method private scheduleWithApi(Lcom/evernote/android/job/JobRequest;Lcom/evernote/android/job/JobApi;ZZ)V
    .locals 0

    .line 224
    invoke-virtual {p0, p2}, Lcom/evernote/android/job/JobManager;->getJobProxy(Lcom/evernote/android/job/JobApi;)Lcom/evernote/android/job/JobProxy;

    move-result-object p2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 227
    invoke-interface {p2, p1}, Lcom/evernote/android/job/JobProxy;->plantPeriodicFlexSupport(Lcom/evernote/android/job/JobRequest;)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-interface {p2, p1}, Lcom/evernote/android/job/JobProxy;->plantPeriodic(Lcom/evernote/android/job/JobRequest;)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-interface {p2, p1}, Lcom/evernote/android/job/JobProxy;->plantOneOff(Lcom/evernote/android/job/JobRequest;)V

    :goto_0
    return-void
.end method

.method private static sendAddJobCreatorIntent(Landroid/content/Context;)V
    .locals 4

    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 478
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.evernote.android.job.ADD_JOB_CREATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 490
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 491
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 492
    iget-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 493
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 498
    :cond_1
    :try_start_1
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 499
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/android/job/JobCreator$AddJobCreatorReceiver;

    .line 501
    sget-object v3, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v2, p0, v3}, Lcom/evernote/android/job/JobCreator$AddJobCreatorReceiver;->addJobCreator(Landroid/content/Context;Lcom/evernote/android/job/JobManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addJobCreator(Lcom/evernote/android/job/JobCreator;)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobCreatorHolder:Lcom/evernote/android/job/JobCreatorHolder;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobCreatorHolder;->addJobCreator(Lcom/evernote/android/job/JobCreator;)V

    return-void
.end method

.method public cancel(I)Z
    .locals 2

    const/4 v0, 0x1

    .line 362
    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/JobManager;->getJobRequest(IZ)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/evernote/android/job/JobManager;->cancelInner(Lcom/evernote/android/job/JobRequest;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/JobManager;->getJob(I)Lcom/evernote/android/job/Job;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/evernote/android/job/JobManager;->cancelInner(Lcom/evernote/android/job/Job;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 363
    iget-object v1, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/evernote/android/job/JobProxy$Common;->cleanUpOrphanedJob(Landroid/content/Context;I)V

    return v0
.end method

.method public cancelAll()I
    .locals 1

    const/4 v0, 0x0

    .line 373
    invoke-direct {p0, v0}, Lcom/evernote/android/job/JobManager;->cancelAllInner(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public cancelAllForTag(Ljava/lang/String;)I
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobManager;->cancelAllInner(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method destroy()V
    .locals 5

    .line 463
    const-class v0, Lcom/evernote/android/job/JobManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 464
    :try_start_0
    sput-object v1, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    .line 465
    invoke-static {}, Lcom/evernote/android/job/JobApi;->values()[Lcom/evernote/android/job/JobApi;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 466
    invoke-virtual {v4}, Lcom/evernote/android/job/JobApi;->invalidateCachedProxy()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 468
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllJobRequests()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/evernote/android/job/JobRequest;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    invoke-virtual {p0, v2, v0, v1}, Lcom/evernote/android/job/JobManager;->getAllJobRequests(Ljava/lang/String;ZZ)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getAllJobRequests(Ljava/lang/String;ZZ)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/Set<",
            "Lcom/evernote/android/job/JobRequest;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    invoke-virtual {v0, p1, p2}, Lcom/evernote/android/job/JobStorage;->getAllJobRequests(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 284
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 285
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 286
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/evernote/android/job/JobRequest;

    .line 287
    invoke-virtual {p3}, Lcom/evernote/android/job/JobRequest;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/evernote/android/job/JobRequest;->getJobApi()Lcom/evernote/android/job/JobApi;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobApi;->getProxy(Landroid/content/Context;)Lcom/evernote/android/job/JobProxy;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/evernote/android/job/JobProxy;->isPlatformJobScheduled(Lcom/evernote/android/job/JobRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    invoke-virtual {v0, p3}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 289
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getAllJobRequestsForTag(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/evernote/android/job/JobRequest;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 277
    invoke-virtual {p0, p1, v0, v1}, Lcom/evernote/android/job/JobManager;->getAllJobRequests(Ljava/lang/String;ZZ)Ljava/util/Set;

    move-result-object p1

    return-object p1
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

    .line 351
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobExecutor:Lcom/evernote/android/job/JobExecutor;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobExecutor;->getAllJobResults()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getAllJobs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/evernote/android/job/Job;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobExecutor:Lcom/evernote/android/job/JobExecutor;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobExecutor;->getAllJobs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllJobsForTag(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
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

    .line 339
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobExecutor:Lcom/evernote/android/job/JobExecutor;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobExecutor;->getAllJobsForTag(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getJob(I)Lcom/evernote/android/job/Job;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobExecutor:Lcom/evernote/android/job/JobExecutor;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobExecutor;->getJob(I)Lcom/evernote/android/job/Job;

    move-result-object p1

    return-object p1
.end method

.method getJobCreatorHolder()Lcom/evernote/android/job/JobCreatorHolder;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobCreatorHolder:Lcom/evernote/android/job/JobCreatorHolder;

    return-object v0
.end method

.method getJobExecutor()Lcom/evernote/android/job/JobExecutor;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobExecutor:Lcom/evernote/android/job/JobExecutor;

    return-object v0
.end method

.method getJobProxy(Lcom/evernote/android/job/JobApi;)Lcom/evernote/android/job/JobProxy;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/JobApi;->getProxy(Landroid/content/Context;)Lcom/evernote/android/job/JobProxy;

    move-result-object p1

    return-object p1
.end method

.method public getJobRequest(I)Lcom/evernote/android/job/JobRequest;
    .locals 2

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/JobManager;->getJobRequest(IZ)Lcom/evernote/android/job/JobRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobApi()Lcom/evernote/android/job/JobApi;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobApi;->getProxy(Landroid/content/Context;)Lcom/evernote/android/job/JobProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/evernote/android/job/JobProxy;->isPlatformJobScheduled(Lcom/evernote/android/job/JobRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method getJobRequest(IZ)Lcom/evernote/android/job/JobRequest;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->get(I)Lcom/evernote/android/job/JobRequest;

    move-result-object p1

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method getJobStorage()Lcom/evernote/android/job/JobStorage;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    return-object v0
.end method

.method public removeJobCreator(Lcom/evernote/android/job/JobCreator;)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobCreatorHolder:Lcom/evernote/android/job/JobCreatorHolder;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobCreatorHolder;->removeJobCreator(Lcom/evernote/android/job/JobCreator;)V

    return-void
.end method

.method public declared-synchronized schedule(Lcom/evernote/android/job/JobRequest;)V
    .locals 7

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobCreatorHolder:Lcom/evernote/android/job/JobCreatorHolder;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobCreatorHolder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/evernote/android/job/JobManager;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v1, "you haven\'t registered a JobCreator with addJobCreator(), it\'s likely that your job never will be executed"

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getScheduledAt()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 169
    monitor-exit p0

    return-void

    .line 172
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isUpdateCurrent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/JobManager;->cancelAllForTag(Ljava/lang/String;)I

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/evernote/android/job/JobProxy$Common;->cleanUpOrphanedJob(Landroid/content/Context;I)V

    .line 178
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobApi()Lcom/evernote/android/job/JobApi;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    invoke-virtual {v0}, Lcom/evernote/android/job/JobApi;->isFlexSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 182
    :goto_0
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->getClock()Lcom/evernote/android/job/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/evernote/android/job/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/evernote/android/job/JobRequest;->setScheduledAt(J)V

    .line 183
    invoke-virtual {p1, v2}, Lcom/evernote/android/job/JobRequest;->setFlexSupport(Z)V

    .line 184
    iget-object v3, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    invoke-virtual {v3, p1}, Lcom/evernote/android/job/JobStorage;->put(Lcom/evernote/android/job/JobRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :try_start_2
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/evernote/android/job/JobManager;->scheduleWithApi(Lcom/evernote/android/job/JobRequest;Lcom/evernote/android/job/JobApi;ZZ)V
    :try_end_2
    .catch Lcom/evernote/android/job/JobProxyIllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 194
    :try_start_3
    iget-object v1, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 195
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    :catch_1
    :try_start_4
    invoke-virtual {v0}, Lcom/evernote/android/job/JobApi;->invalidateCachedProxy()V

    .line 202
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/evernote/android/job/JobManager;->scheduleWithApi(Lcom/evernote/android/job/JobRequest;Lcom/evernote/android/job/JobApi;ZZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    :catch_2
    move-exception v3

    .line 205
    :try_start_5
    sget-object v4, Lcom/evernote/android/job/JobApi;->V_14:Lcom/evernote/android/job/JobApi;

    if-eq v0, v4, :cond_5

    sget-object v4, Lcom/evernote/android/job/JobApi;->V_19:Lcom/evernote/android/job/JobApi;

    if-eq v0, v4, :cond_5

    .line 210
    sget-object v0, Lcom/evernote/android/job/JobApi;->V_19:Lcom/evernote/android/job/JobApi;

    iget-object v3, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/evernote/android/job/JobApi;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/android/job/JobApi;->V_19:Lcom/evernote/android/job/JobApi;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/evernote/android/job/JobApi;->V_14:Lcom/evernote/android/job/JobApi;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 215
    :goto_1
    :try_start_6
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/evernote/android/job/JobManager;->scheduleWithApi(Lcom/evernote/android/job/JobRequest;Lcom/evernote/android/job/JobApi;ZZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    :catch_3
    move-exception v0

    .line 218
    :try_start_7
    iget-object v1, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 219
    throw v0

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 208
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
