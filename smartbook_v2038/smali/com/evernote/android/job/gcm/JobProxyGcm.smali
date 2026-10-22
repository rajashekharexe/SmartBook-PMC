.class public Lcom/evernote/android/job/gcm/JobProxyGcm;
.super Ljava/lang/Object;
.source "JobProxyGcm.java"

# interfaces
.implements Lcom/evernote/android/job/JobProxy;


# static fields
.field private static final CAT:Lcom/evernote/android/job/util/JobCat;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGcmNetworkManager:Lcom/google/android/gms/gcm/GcmNetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobProxyGcm"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/gcm/JobProxyGcm;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/evernote/android/job/gcm/JobProxyGcm;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object p1

    iput-object p1, p0, Lcom/evernote/android/job/gcm/JobProxyGcm;->mGcmNetworkManager:Lcom/google/android/gms/gcm/GcmNetworkManager;

    return-void
.end method

.method private scheduleTask(Lcom/google/android/gms/gcm/Task;)V
    .locals 2

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/gcm/JobProxyGcm;->mGcmNetworkManager:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The GcmTaskService class you provided"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/evernote/android/job/JobProxyIllegalStateException;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/JobProxyIllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 118
    :cond_0
    throw p1
.end method


# virtual methods
.method public cancel(I)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/evernote/android/job/gcm/JobProxyGcm;->mGcmNetworkManager:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/gcm/JobProxyGcm;->createTag(I)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/evernote/android/job/gcm/PlatformGcmService;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->cancelTask(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method protected convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I
    .locals 2

    .line 143
    sget-object v0, Lcom/evernote/android/job/gcm/JobProxyGcm$1;->$SwitchMap$com$evernote$android$job$JobRequest$NetworkType:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest$NetworkType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    return v1

    .line 153
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    return v0
.end method

.method protected createTag(I)Ljava/lang/String;
    .locals 0

    .line 139
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected createTag(Lcom/evernote/android/job/JobRequest;)Ljava/lang/String;
    .locals 0

    .line 135
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/gcm/JobProxyGcm;->createTag(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isPlatformJobScheduled(Lcom/evernote/android/job/JobRequest;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public plantOneOff(Lcom/evernote/android/job/JobRequest;)V
    .locals 10

    .line 54
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 55
    div-long v4, v0, v2

    .line 57
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v6

    .line 58
    div-long v2, v6, v2

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 60
    new-instance v8, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    invoke-direct {v8}, Lcom/google/android/gms/gcm/OneoffTask$Builder;-><init>()V

    invoke-virtual {p0, v8, p1}, Lcom/evernote/android/job/gcm/JobProxyGcm;->prepareBuilder(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/JobRequest;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    .line 61
    invoke-virtual {v8, v4, v5, v2, v3}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v2

    .line 64
    invoke-direct {p0, v2}, Lcom/evernote/android/job/gcm/JobProxyGcm;->scheduleTask(Lcom/google/android/gms/gcm/Task;)V

    .line 66
    sget-object v2, Lcom/evernote/android/job/gcm/JobProxyGcm;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v6, v7}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getRescheduleCount(Lcom/evernote/android/job/JobRequest;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v0, v4, p1

    const/4 p1, 0x2

    aput-object v1, v4, p1

    const/4 p1, 0x3

    aput-object v3, v4, p1

    .line 66
    const-string p1, "Scheduled OneoffTask, %s, start %s, end %s (from now), reschedule count %d"

    invoke-virtual {v2, p1, v4}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public plantPeriodic(Lcom/evernote/android/job/JobRequest;)V
    .locals 5

    .line 72
    new-instance v0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/android/job/gcm/JobProxyGcm;->prepareBuilder(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/JobRequest;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    .line 73
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPeriod(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setFlex(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->build()Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Lcom/evernote/android/job/gcm/JobProxyGcm;->scheduleTask(Lcom/google/android/gms/gcm/Task;)V

    .line 79
    sget-object v0, Lcom/evernote/android/job/gcm/JobProxyGcm;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v1, v3, p1

    const/4 p1, 0x2

    aput-object v2, v3, p1

    .line 79
    const-string p1, "Scheduled PeriodicTask, %s, interval %s, flex %s"

    invoke-virtual {v0, p1, v3}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public plantPeriodicFlexSupport(Lcom/evernote/android/job/JobRequest;)V
    .locals 10

    .line 85
    sget-object v0, Lcom/evernote/android/job/gcm/JobProxyGcm;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v1, "plantPeriodicFlexSupport called although flex is supported"

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v1

    .line 88
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v3

    .line 90
    new-instance v5, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/gcm/OneoffTask$Builder;-><init>()V

    invoke-virtual {p0, v5, p1}, Lcom/evernote/android/job/gcm/JobProxyGcm;->prepareBuilder(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/JobRequest;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    const-wide/16 v6, 0x3e8

    div-long v8, v1, v6

    div-long v6, v3, v6

    .line 91
    invoke-virtual {v5, v8, v9, v6, v7}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v5

    .line 94
    invoke-direct {p0, v5}, Lcom/evernote/android/job/gcm/JobProxyGcm;->scheduleTask(Lcom/google/android/gms/gcm/Task;)V

    .line 96
    invoke-static {v1, v2}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v3, v4}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v1, v4, p1

    const/4 p1, 0x2

    aput-object v2, v4, p1

    const/4 p1, 0x3

    aput-object v3, v4, p1

    .line 96
    const-string p1, "Scheduled periodic (flex support), %s, start %s, end %s, flex %s"

    invoke-virtual {v0, p1, v4}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected prepareBuilder(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/JobRequest;)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/gcm/Task$Builder;",
            ">(TT;",
            "Lcom/evernote/android/job/JobRequest;",
            ")TT;"
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p2}, Lcom/evernote/android/job/gcm/JobProxyGcm;->createTag(Lcom/evernote/android/job/JobRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/gcm/Task$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    const-class v1, Lcom/evernote/android/job/gcm/PlatformGcmService;

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/evernote/android/job/gcm/JobProxyGcm;->convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setRequiredNetwork(I)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/gcm/JobProxyGcm;->mContext:Landroid/content/Context;

    .line 128
    invoke-static {v1}, Lcom/evernote/android/job/util/JobUtil;->hasBootPermission(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->requiresCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setRequiresCharging(Z)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->getTransientExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/gcm/Task$Builder;->setExtras(Landroid/os/Bundle;)Lcom/google/android/gms/gcm/Task$Builder;

    return-object p1
.end method
