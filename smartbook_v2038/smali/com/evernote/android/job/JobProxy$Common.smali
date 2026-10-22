.class public final Lcom/evernote/android/job/JobProxy$Common;
.super Ljava/lang/Object;
.source "JobProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Common"
.end annotation


# static fields
.field private static final COMMON_MONITOR:Ljava/lang/Object;


# instance fields
.field private final mCat:Lcom/evernote/android/job/util/JobCat;

.field private final mContext:Landroid/content/Context;

.field private final mJobId:I

.field private final mJobManager:Lcom/evernote/android/job/JobManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/evernote/android/job/JobProxy$Common;->COMMON_MONITOR:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Lcom/evernote/android/job/util/JobCat;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/evernote/android/job/JobProxy$Common;-><init>(Landroid/content/Context;Lcom/evernote/android/job/util/JobCat;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/evernote/android/job/util/JobCat;I)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/evernote/android/job/JobProxy$Common;->mContext:Landroid/content/Context;

    .line 137
    iput p3, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    .line 138
    iput-object p2, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lcom/evernote/android/job/util/JobCat;

    .line 142
    :try_start_0
    invoke-static {p1}, Lcom/evernote/android/job/JobManager;->create(Landroid/content/Context;)Lcom/evernote/android/job/JobManager;

    move-result-object p1
    :try_end_0
    .catch Lcom/evernote/android/job/JobManagerCreateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    iget-object p2, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {p2, p1}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 147
    :goto_0
    iput-object p1, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    return-void
.end method

.method private static checkNoOverflow(JZ)J
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    :goto_0
    return-wide p0
.end method

.method private static checkedAdd(JJ)J
    .locals 7

    add-long v0, p0, p2

    xor-long/2addr p2, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-gez v6, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    xor-long/2addr p0, v0

    cmp-long p3, p0, v4

    if-ltz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int p0, p2, v2

    .line 59
    invoke-static {v0, v1, p0}, Lcom/evernote/android/job/JobProxy$Common;->checkNoOverflow(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static checkedMultiply(JJ)J
    .locals 9

    .line 64
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    not-long v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    not-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x41

    if-le v0, v1, :cond_0

    mul-long p0, p0, p2

    return-wide p0

    :cond_0
    mul-long v1, p0, p2

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/evernote/android/job/JobProxy$Common;->checkNoOverflow(JZ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v6, p0, v2

    if-ltz v6, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v3, p2, v7

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    or-int/2addr v2, v3

    .line 70
    invoke-static {v0, v1, v2}, Lcom/evernote/android/job/JobProxy$Common;->checkNoOverflow(JZ)J

    move-result-wide v0

    if-eqz v6, :cond_5

    .line 71
    div-long p0, v0, p0

    cmp-long v2, p0, p2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_3
    invoke-static {v0, v1, v4}, Lcom/evernote/android/job/JobProxy$Common;->checkNoOverflow(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method static cleanUpOrphanedJob(Landroid/content/Context;I)V
    .locals 5

    .line 285
    invoke-static {}, Lcom/evernote/android/job/JobApi;->values()[Lcom/evernote/android/job/JobApi;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 286
    invoke-virtual {v3, p0}, Lcom/evernote/android/job/JobApi;->isSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    :try_start_0
    invoke-virtual {v3, p0}, Lcom/evernote/android/job/JobApi;->getProxy(Landroid/content/Context;)Lcom/evernote/android/job/JobProxy;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/evernote/android/job/JobProxy;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cleanUpOrphanedJob(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/evernote/android/job/JobProxy$Common;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-static {p1, v0}, Lcom/evernote/android/job/JobProxy$Common;->cleanUpOrphanedJob(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .locals 0

    .line 301
    invoke-static {p0}, Lcom/evernote/android/job/WakeLockUtil;->completeWakefulIntent(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static getAverageDelayMs(Lcom/evernote/android/job/JobRequest;)J
    .locals 6

    .line 106
    invoke-static {p0}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/JobProxy$Common;->checkedAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAverageDelayMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J
    .locals 6

    .line 118
    invoke-static {p0}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/evernote/android/job/JobProxy$Common;->getEndMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/JobProxy$Common;->checkedAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEndMs(Lcom/evernote/android/job/JobRequest;)J
    .locals 2

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, v0}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEndMs(Lcom/evernote/android/job/JobRequest;Z)J
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getFailureCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getBackoffOffset()J

    move-result-wide v0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getEndMs()J

    move-result-wide v0

    :goto_0
    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->requirementsEnforced()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->hasRequirements()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x64

    .line 100
    invoke-static {v0, v1, p0, p1}, Lcom/evernote/android/job/JobProxy$Common;->checkedMultiply(JJ)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public static getEndMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRescheduleCount(Lcom/evernote/android/job/JobRequest;)I
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getFailureCount()I

    move-result p0

    return p0
.end method

.method public static getStartMs(Lcom/evernote/android/job/JobRequest;)J
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getFailureCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getBackoffOffset()J

    move-result-wide v0

    return-wide v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getStartMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 0

    .line 297
    invoke-static {p0, p1}, Lcom/evernote/android/job/WakeLockUtil;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public executeJobRequest(Lcom/evernote/android/job/JobRequest;Landroid/os/Bundle;)Lcom/evernote/android/job/Job$Result;
    .locals 9

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getScheduledAt()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 209
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 210
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v6, v8, v5

    aput-object v7, v8, v4

    .line 210
    const-string v6, "interval %s, flex %s"

    invoke-static {v2, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobApi()Lcom/evernote/android/job/JobApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/android/job/JobApi;->supportsExecutionWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v6, v8, v5

    aput-object v7, v8, v4

    .line 213
    const-string v6, "start %s, end %s"

    invoke-static {v2, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 216
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "delay "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getAverageDelayMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 220
    iget-object v6, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lcom/evernote/android/job/util/JobCat;

    const-string v7, "Running JobRequest on a main thread, this could cause stutter or ANR in your app."

    invoke-virtual {v6, v7}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;)V

    .line 223
    :cond_2
    iget-object v6, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object v0, v1, v4

    aput-object v2, v1, v3

    const-string v0, "Run job, %s, waited %s, %s"

    invoke-virtual {v6, v0, v1}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobExecutor()Lcom/evernote/android/job/JobExecutor;

    move-result-object v0

    const/4 v1, 0x0

    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v2}, Lcom/evernote/android/job/JobManager;->getJobCreatorHolder()Lcom/evernote/android/job/JobCreatorHolder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/evernote/android/job/JobCreatorHolder;->createJob(Ljava/lang/String;)Lcom/evernote/android/job/Job;

    move-result-object v1

    .line 231
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v2

    if-nez v2, :cond_3

    .line 232
    invoke-virtual {p1, v4}, Lcom/evernote/android/job/JobRequest;->setStarted(Z)V

    :cond_3
    if-nez p2, :cond_4

    .line 236
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 239
    :cond_4
    iget-object v2, p0, Lcom/evernote/android/job/JobProxy$Common;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, v1, p2}, Lcom/evernote/android/job/JobExecutor;->execute(Landroid/content/Context;Lcom/evernote/android/job/JobRequest;Lcom/evernote/android/job/Job;Landroid/os/Bundle;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p2, :cond_8

    .line 241
    sget-object p2, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    .line 261
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    goto :goto_1

    .line 263
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_6

    .line 264
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    goto :goto_1

    .line 266
    :cond_6
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isFlexSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/evernote/android/job/Job;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 267
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 268
    invoke-virtual {p1, v5, v5}, Lcom/evernote/android/job/JobRequest;->reschedule(ZZ)Lcom/evernote/android/job/JobRequest;

    :cond_7
    :goto_1
    return-object p2

    .line 245
    :cond_8
    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evernote/android/job/Job$Result;

    .line 246
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lcom/evernote/android/job/util/JobCat;

    const-string v2, "Finished job, %s %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_9

    .line 261
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    goto :goto_2

    .line 263
    :cond_9
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_a

    .line 264
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    goto :goto_2

    .line 266
    :cond_a
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isFlexSupport()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lcom/evernote/android/job/Job;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_b

    .line 267
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 268
    invoke-virtual {p1, v5, v5}, Lcom/evernote/android/job/JobRequest;->reschedule(ZZ)Lcom/evernote/android/job/JobRequest;

    :cond_b
    :goto_2
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_5

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    .line 250
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v0, p2}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_c

    .line 253
    invoke-virtual {v1}, Lcom/evernote/android/job/Job;->cancel()V

    .line 254
    iget-object p2, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lcom/evernote/android/job/util/JobCat;

    const-string v0, "Canceled %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {p2, v0, v2}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :cond_c
    sget-object p2, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_d

    .line 261
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    goto :goto_4

    .line 263
    :cond_d
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_e

    .line 264
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    goto :goto_4

    .line 266
    :cond_e
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isFlexSupport()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lcom/evernote/android/job/Job;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_f

    .line 267
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 268
    invoke-virtual {p1, v5, v5}, Lcom/evernote/android/job/JobRequest;->reschedule(ZZ)Lcom/evernote/android/job/JobRequest;

    :cond_f
    :goto_4
    return-object p2

    :goto_5
    if-eqz v1, :cond_11

    .line 263
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 266
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isFlexSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Lcom/evernote/android/job/Job;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_12

    .line 267
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 268
    invoke-virtual {p1, v5, v5}, Lcom/evernote/android/job/JobRequest;->reschedule(ZZ)Lcom/evernote/android/job/JobRequest;

    goto :goto_6

    .line 264
    :cond_10
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    goto :goto_6

    .line 261
    :cond_11
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 268
    :cond_12
    :goto_6
    throw p2
.end method

.method public getPendingRequest(ZZ)Lcom/evernote/android/job/JobRequest;
    .locals 12

    .line 151
    sget-object v0, Lcom/evernote/android/job/JobProxy$Common;->COMMON_MONITOR:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 153
    monitor-exit v0

    return-object v2

    .line 157
    :cond_0
    iget v3, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/evernote/android/job/JobManager;->getJobRequest(IZ)Lcom/evernote/android/job/JobRequest;

    move-result-object v1

    .line 158
    iget-object v3, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    iget v5, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-virtual {v3, v5}, Lcom/evernote/android/job/JobManager;->getJob(I)Lcom/evernote/android/job/Job;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    if-eqz v3, :cond_2

    .line 161
    invoke-virtual {v3}, Lcom/evernote/android/job/Job;->isFinished()Z

    move-result v8

    if-nez v8, :cond_2

    .line 163
    iget-object p1, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lcom/evernote/android/job/util/JobCat;

    const-string p2, "Job %d is already running, %s"

    iget v3, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v5

    aput-object v1, v6, v4

    invoke-virtual {p1, p2, v6}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    monitor-exit v0

    return-object v2

    :cond_2
    if-eqz v3, :cond_3

    if-nez v6, :cond_3

    .line 168
    iget-object p2, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lcom/evernote/android/job/util/JobCat;

    const-string v3, "Job %d already finished, %s"

    iget v6, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v5

    aput-object v1, v7, v4

    invoke-virtual {p2, v3, v7}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobProxy$Common;->cleanUpOrphanedJob(Z)V

    .line 170
    monitor-exit v0

    return-object v2

    :cond_3
    if-eqz v3, :cond_4

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/evernote/android/job/Job;->getFinishedTimeStamp()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x7d0

    cmp-long v3, v8, v10

    if-gez v3, :cond_4

    .line 174
    iget-object p1, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lcom/evernote/android/job/util/JobCat;

    const-string p2, "Job %d is periodic and just finished, %s"

    iget v3, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v5

    aput-object v1, v6, v4

    invoke-virtual {p1, p2, v6}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    monitor-exit v0

    return-object v2

    :cond_4
    if-eqz v1, :cond_5

    .line 178
    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 179
    iget-object p1, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lcom/evernote/android/job/util/JobCat;

    const-string p2, "Request %d already started, %s"

    iget v3, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v5

    aput-object v1, v6, v4

    invoke-virtual {p1, p2, v6}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    monitor-exit v0

    return-object v2

    :cond_5
    if-eqz v1, :cond_6

    .line 183
    iget-object v3, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v3}, Lcom/evernote/android/job/JobManager;->getJobExecutor()Lcom/evernote/android/job/JobExecutor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/evernote/android/job/JobExecutor;->isRequestStarting(Lcom/evernote/android/job/JobRequest;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 184
    iget-object p1, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lcom/evernote/android/job/util/JobCat;

    const-string p2, "Request %d is in the queue to start, %s"

    iget v3, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v5

    aput-object v1, v6, v4

    invoke-virtual {p1, p2, v6}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    monitor-exit v0

    return-object v2

    :cond_6
    if-nez v1, :cond_7

    .line 188
    iget-object p2, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lcom/evernote/android/job/util/JobCat;

    const-string v1, "Request for ID %d was null"

    iget v3, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-virtual {p2, v1, v4}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobProxy$Common;->cleanUpOrphanedJob(Z)V

    .line 190
    monitor-exit v0

    return-object v2

    :cond_7
    if-eqz p2, :cond_8

    .line 194
    invoke-virtual {p0, v1}, Lcom/evernote/android/job/JobProxy$Common;->markStarting(Lcom/evernote/android/job/JobRequest;)V

    .line 197
    :cond_8
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public markStarting(Lcom/evernote/android/job/JobRequest;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobExecutor()Lcom/evernote/android/job/JobExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobExecutor;->markJobRequestStarting(Lcom/evernote/android/job/JobRequest;)V

    return-void
.end method
