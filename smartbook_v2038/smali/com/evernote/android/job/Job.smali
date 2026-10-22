.class public abstract Lcom/evernote/android/job/Job;
.super Ljava/lang/Object;
.source "Job.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/Job$Params;,
        Lcom/evernote/android/job/Job$Result;
    }
.end annotation


# static fields
.field private static final CAT:Lcom/evernote/android/job/util/JobCat;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private volatile mCanceled:Z

.field private mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDeleted:Z

.field private volatile mFinishedTimeStamp:J

.field private final mMonitor:Ljava/lang/Object;

.field private mParams:Lcom/evernote/android/job/Job$Params;

.field private mResult:Lcom/evernote/android/job/Job$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "Job"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/Job;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 77
    iput-wide v0, p0, Lcom/evernote/android/job/Job;->mFinishedTimeStamp:J

    .line 79
    sget-object v0, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;

    iput-object v0, p0, Lcom/evernote/android/job/Job;->mResult:Lcom/evernote/android/job/Job$Result;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/Job;->mMonitor:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/Job;->cancel(Z)Z

    return-void
.end method

.method final cancel(Z)Z
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    iget-boolean v1, p0, Lcom/evernote/android/job/Job;->mCanceled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 291
    iput-boolean v2, p0, Lcom/evernote/android/job/Job;->mCanceled:Z

    .line 292
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->onCancel()V

    .line 294
    :cond_0
    iget-boolean v1, p0, Lcom/evernote/android/job/Job;->mDeleted:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/evernote/android/job/Job;->mDeleted:Z

    .line 295
    monitor-exit v0

    return v2

    .line 297
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 299
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 339
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    check-cast p1, Lcom/evernote/android/job/Job;

    .line 343
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    iget-object p1, p1, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/Job$Params;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mApplicationContext:Landroid/content/Context;

    :cond_0
    return-object v0
.end method

.method final getFinishedTimeStamp()J
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-wide v1, p0, Lcom/evernote/android/job/Job;->mFinishedTimeStamp:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 323
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final getParams()Lcom/evernote/android/job/Job$Params;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    return-object v0
.end method

.method final getResult()Lcom/evernote/android/job/Job$Result;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mResult:Lcom/evernote/android/job/Job$Result;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    invoke-virtual {v0}, Lcom/evernote/android/job/Job$Params;->hashCode()I

    move-result v0

    return v0
.end method

.method protected final isCanceled()Z
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-boolean v1, p0, Lcom/evernote/android/job/Job;->mCanceled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 308
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final isDeleted()Z
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-boolean v1, p0, Lcom/evernote/android/job/Job;->mDeleted:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 333
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isFinished()Z
    .locals 6

    .line 315
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-wide v1, p0, Lcom/evernote/android/job/Job;->mFinishedTimeStamp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 317
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isRequirementBatteryNotLowMet()Z
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->requiresBatteryNotLow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/util/Device;->getBatteryStatus(Landroid/content/Context;)Lcom/evernote/android/job/util/BatteryStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/util/BatteryStatus;->isBatteryLow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isRequirementChargingMet()Z
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->requiresCharging()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/util/Device;->getBatteryStatus(Landroid/content/Context;)Lcom/evernote/android/job/util/BatteryStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/util/BatteryStatus;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isRequirementDeviceIdleMet()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->requiresDeviceIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/util/Device;->isIdle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isRequirementNetworkTypeMet()Z
    .locals 5

    .line 228
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v0

    .line 229
    sget-object v1, Lcom/evernote/android/job/JobRequest$NetworkType;->ANY:Lcom/evernote/android/job/JobRequest$NetworkType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/evernote/android/job/util/Device;->getNetworkType(Landroid/content/Context;)Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v1

    .line 235
    sget-object v3, Lcom/evernote/android/job/Job$1;->$SwitchMap$com$evernote$android$job$JobRequest$NetworkType:[I

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest$NetworkType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    .line 243
    sget-object v0, Lcom/evernote/android/job/JobRequest$NetworkType;->CONNECTED:Lcom/evernote/android/job/JobRequest$NetworkType;

    if-eq v1, v0, :cond_2

    sget-object v0, Lcom/evernote/android/job/JobRequest$NetworkType;->NOT_ROAMING:Lcom/evernote/android/job/JobRequest$NetworkType;

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2

    .line 245
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_4
    sget-object v0, Lcom/evernote/android/job/JobRequest$NetworkType;->UNMETERED:Lcom/evernote/android/job/JobRequest$NetworkType;

    if-ne v1, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 239
    :cond_6
    sget-object v0, Lcom/evernote/android/job/JobRequest$NetworkType;->NOT_ROAMING:Lcom/evernote/android/job/JobRequest$NetworkType;

    if-eq v1, v0, :cond_8

    sget-object v0, Lcom/evernote/android/job/JobRequest$NetworkType;->UNMETERED:Lcom/evernote/android/job/JobRequest$NetworkType;

    if-eq v1, v0, :cond_8

    sget-object v0, Lcom/evernote/android/job/JobRequest$NetworkType;->METERED:Lcom/evernote/android/job/JobRequest$NetworkType;

    if-ne v1, v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_2
    return v2

    .line 237
    :cond_9
    sget-object v0, Lcom/evernote/android/job/JobRequest$NetworkType;->ANY:Lcom/evernote/android/job/JobRequest$NetworkType;

    if-eq v1, v0, :cond_a

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method protected isRequirementStorageNotLowMet()Z
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->requiresStorageNotLow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/evernote/android/job/util/Device;->isStorageLow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected meetsRequirements()Z
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/Job;->meetsRequirements(Z)Z

    move-result v0

    return v0
.end method

.method meetsRequirements(Z)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requirementsEnforced()Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->isRequirementChargingMet()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 165
    sget-object p1, Lcom/evernote/android/job/Job;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v0, "Job requires charging, reschedule"

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;)V

    return v1

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->isRequirementDeviceIdleMet()Z

    move-result p1

    if-nez p1, :cond_2

    .line 169
    sget-object p1, Lcom/evernote/android/job/Job;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v0, "Job requires device to be idle, reschedule"

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;)V

    return v1

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->isRequirementNetworkTypeMet()Z

    move-result p1

    if-nez p1, :cond_3

    .line 173
    sget-object p1, Lcom/evernote/android/job/Job;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/android/job/JobRequest;->requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v2

    .line 174
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/evernote/android/job/util/Device;->getNetworkType(Landroid/content/Context;)Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    .line 173
    const-string v0, "Job requires network to be %s, but was %s"

    invoke-virtual {p1, v0, v4}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->isRequirementBatteryNotLowMet()Z

    move-result p1

    if-nez p1, :cond_4

    .line 178
    sget-object p1, Lcom/evernote/android/job/Job;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v0, "Job requires battery not be low, reschedule"

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;)V

    return v1

    .line 182
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->isRequirementStorageNotLowMet()Z

    move-result p1

    if-nez p1, :cond_5

    .line 183
    sget-object p1, Lcom/evernote/android/job/Job;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v0, "Job requires storage not be low, reschedule"

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;)V

    return v1

    :cond_5
    return v0
.end method

.method protected onCancel()V
    .locals 0

    return-void
.end method

.method protected onReschedule(I)V
    .locals 0

    return-void
.end method

.method protected abstract onRunJob(Lcom/evernote/android/job/Job$Params;)Lcom/evernote/android/job/Job$Result;
.end method

.method final runJob()Lcom/evernote/android/job/Job$Result;
    .locals 3

    .line 123
    :try_start_0
    instance-of v0, p0, Lcom/evernote/android/job/DailyJob;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/Job;->meetsRequirements(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/Job$Params;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/evernote/android/job/Job$Result;->RESCHEDULE:Lcom/evernote/android/job/Job$Result;

    :goto_0
    iput-object v0, p0, Lcom/evernote/android/job/Job;->mResult:Lcom/evernote/android/job/Job$Result;

    goto :goto_2

    .line 124
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/Job;->onRunJob(Lcom/evernote/android/job/Job$Params;)Lcom/evernote/android/job/Job$Result;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/Job;->mResult:Lcom/evernote/android/job/Job$Result;

    .line 129
    :goto_2
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mResult:Lcom/evernote/android/job/Job$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/evernote/android/job/Job;->mFinishedTimeStamp:J

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/evernote/android/job/Job;->mFinishedTimeStamp:J

    throw v0
.end method

.method final setContext(Landroid/content/Context;)Lcom/evernote/android/job/Job;
    .locals 1

    .line 264
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/evernote/android/job/Job;->mContextReference:Ljava/lang/ref/WeakReference;

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/evernote/android/job/Job;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method final setRequest(Lcom/evernote/android/job/JobRequest;Landroid/os/Bundle;)Lcom/evernote/android/job/Job;
    .locals 2

    .line 251
    new-instance v0, Lcom/evernote/android/job/Job$Params;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/evernote/android/job/Job$Params;-><init>(Lcom/evernote/android/job/JobRequest;Landroid/os/Bundle;Lcom/evernote/android/job/Job$1;)V

    iput-object v0, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "job{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    .line 354
    invoke-virtual {v1}, Lcom/evernote/android/job/Job$Params;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/android/job/Job;->mResult:Lcom/evernote/android/job/Job$Result;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canceled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/android/job/Job;->mCanceled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", periodic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    .line 358
    invoke-virtual {v1}, Lcom/evernote/android/job/Job$Params;->isPeriodic()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    .line 360
    invoke-virtual {v1}, Lcom/evernote/android/job/Job$Params;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
