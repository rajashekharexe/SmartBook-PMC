.class public Lcom/evernote/android/job/v21/JobProxy21;
.super Ljava/lang/Object;
.source "JobProxy21.java"

# interfaces
.implements Lcom/evernote/android/job/JobProxy;


# static fields
.field private static final ERROR_BOOT_PERMISSION:I = -0x7b

.field private static final TAG:Ljava/lang/String; = "JobProxy21"


# instance fields
.field protected final mCat:Lcom/evernote/android/job/util/JobCat;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    const-string v0, "JobProxy21"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v21/JobProxy21;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/evernote/android/job/v21/JobProxy21;->mContext:Landroid/content/Context;

    .line 55
    new-instance p1, Lcom/evernote/android/job/util/JobCat;

    invoke-direct {p1, p2}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lcom/evernote/android/job/util/JobCat;

    return-void
.end method

.method protected static scheduleResultToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 236
    const-string p0, "success"

    goto :goto_0

    :cond_0
    const-string p0, "failure"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public cancel(I)V
    .locals 2

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/JobProxy21;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    iget-object v1, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v1, v0}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/evernote/android/job/v21/JobProxy21;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/evernote/android/job/v21/TransientBundleCompat;->cancel(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return-void
.end method

.method protected convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I
    .locals 3

    .line 182
    sget-object v0, Lcom/evernote/android/job/v21/JobProxy21$1;->$SwitchMap$com$evernote$android$job$JobRequest$NetworkType:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest$NetworkType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    return v0

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method protected createBaseBuilder(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/job/JobInfo$Builder;
    .locals 5

    .line 156
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/evernote/android/job/v21/JobProxy21;->mContext:Landroid/content/Context;

    const-class v4, Lcom/evernote/android/job/v21/PlatformJobService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 157
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiresCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiresDeviceIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/evernote/android/job/v21/JobProxy21;->convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isTransient()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/evernote/android/job/v21/JobProxy21;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/evernote/android/job/util/JobUtil;->hasBootPermission(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/evernote/android/job/v21/JobProxy21;->setTransientBundle(Lcom/evernote/android/job/JobRequest;Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected createBuilderOneOff(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;
    .locals 0

    .line 166
    invoke-virtual {p1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected createBuilderPeriodic(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;
    .locals 0

    .line 170
    invoke-virtual {p1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected final getJobScheduler()Landroid/app/job/JobScheduler;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/evernote/android/job/v21/JobProxy21;->mContext:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method protected isJobInfoScheduled(Landroid/app/job/JobInfo;Lcom/evernote/android/job/JobRequest;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result p1

    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 152
    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->isTransient()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/evernote/android/job/v21/JobProxy21;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/evernote/android/job/v21/TransientBundleCompat;->isScheduled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isPlatformJobScheduled(Lcom/evernote/android/job/JobRequest;)Z
    .locals 3

    const/4 v0, 0x0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/JobProxy21;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 133
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 138
    invoke-virtual {p0, v2, p1}, Lcom/evernote/android/job/v21/JobProxy21;->isJobInfoScheduled(Landroid/app/job/JobInfo;Lcom/evernote/android/job/JobRequest;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception p1

    .line 128
    iget-object v1, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public plantOneOff(Lcom/evernote/android/job/JobRequest;)V
    .locals 12

    .line 60
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 61
    invoke-static {p1, v8}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;Z)J

    move-result-wide v9

    .line 63
    invoke-virtual {p0, p1, v8}, Lcom/evernote/android/job/v21/JobProxy21;->createBaseBuilder(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    move-wide v2, v6

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/JobProxy21;->createBuilderOneOff(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/v21/JobProxy21;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    const/16 v1, -0x7b

    const/4 v11, 0x0

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p0, p1, v11}, Lcom/evernote/android/job/v21/JobProxy21;->createBaseBuilder(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    move-wide v2, v6

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/JobProxy21;->createBuilderOneOff(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/v21/JobProxy21;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-static {v0}, Lcom/evernote/android/job/v21/JobProxy21;->scheduleResultToString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v6, v7}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v11}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getRescheduleCount(Lcom/evernote/android/job/JobRequest;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v11

    aput-object p1, v5, v8

    const/4 p1, 0x2

    aput-object v2, v5, p1

    const/4 p1, 0x3

    aput-object v3, v5, p1

    const/4 p1, 0x4

    aput-object v4, v5, p1

    .line 71
    const-string p1, "Schedule one-off jobInfo %s, %s, start %s, end %s (from now), reschedule count %d"

    invoke-virtual {v1, p1, v5}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public plantPeriodic(Lcom/evernote/android/job/JobRequest;)V
    .locals 12

    .line 77
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v6

    .line 78
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v8

    const/4 v10, 0x1

    .line 80
    invoke-virtual {p0, p1, v10}, Lcom/evernote/android/job/v21/JobProxy21;->createBaseBuilder(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    move-wide v2, v6

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/JobProxy21;->createBuilderPeriodic(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/v21/JobProxy21;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    const/16 v1, -0x7b

    const/4 v11, 0x0

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p0, p1, v11}, Lcom/evernote/android/job/v21/JobProxy21;->createBaseBuilder(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    move-wide v2, v6

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/JobProxy21;->createBuilderPeriodic(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/v21/JobProxy21;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-static {v0}, Lcom/evernote/android/job/v21/JobProxy21;->scheduleResultToString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v6, v7}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v9}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v11

    aput-object p1, v4, v10

    const/4 p1, 0x2

    aput-object v2, v4, p1

    const/4 p1, 0x3

    aput-object v3, v4, p1

    .line 88
    const-string p1, "Schedule periodic jobInfo %s, %s, interval %s, flex %s"

    invoke-virtual {v1, p1, v4}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public plantPeriodicFlexSupport(Lcom/evernote/android/job/JobRequest;)V
    .locals 12

    .line 94
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v6

    .line 95
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v8

    const/4 v10, 0x1

    .line 97
    invoke-virtual {p0, p1, v10}, Lcom/evernote/android/job/v21/JobProxy21;->createBaseBuilder(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    move-wide v2, v6

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/JobProxy21;->createBuilderOneOff(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/v21/JobProxy21;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    const/16 v1, -0x7b

    const/4 v11, 0x0

    if-ne v0, v1, :cond_0

    .line 101
    invoke-virtual {p0, p1, v11}, Lcom/evernote/android/job/v21/JobProxy21;->createBaseBuilder(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    move-wide v2, v6

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/JobProxy21;->createBuilderOneOff(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/v21/JobProxy21;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-static {v0}, Lcom/evernote/android/job/v21/JobProxy21;->scheduleResultToString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v6, v7}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v9}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v11

    aput-object p1, v5, v10

    const/4 p1, 0x2

    aput-object v2, v5, p1

    const/4 p1, 0x3

    aput-object v3, v5, p1

    const/4 p1, 0x4

    aput-object v4, v5, p1

    .line 105
    const-string p1, "Schedule periodic (flex support) jobInfo %s, %s, start %s, end %s, flex %s"

    invoke-virtual {v1, p1, v5}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected final schedule(Landroid/app/job/JobInfo;)I
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/JobProxy21;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 209
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 230
    iget-object v0, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    .line 231
    new-instance v0, Lcom/evernote/android/job/JobProxyIllegalStateException;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/JobProxyIllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 211
    iget-object v0, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    .line 213
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    const-string v1, "RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, -0x7b

    return p1

    :cond_0
    if-eqz v0, :cond_1

    .line 217
    const-string v1, "No such service ComponentInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    new-instance v0, Lcom/evernote/android/job/JobProxyIllegalStateException;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/JobProxyIllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 222
    :cond_1
    throw p1

    .line 205
    :cond_2
    new-instance p1, Lcom/evernote/android/job/JobProxyIllegalStateException;

    const-string v0, "JobScheduler is null"

    invoke-direct {p1, v0}, Lcom/evernote/android/job/JobProxyIllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setTransientBundle(Lcom/evernote/android/job/JobRequest;Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo$Builder;
    .locals 1

    .line 174
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/evernote/android/job/v21/JobProxy21;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/evernote/android/job/v21/TransientBundleCompat;->persistBundle(Landroid/content/Context;Lcom/evernote/android/job/JobRequest;)V

    :cond_0
    return-object p2
.end method
