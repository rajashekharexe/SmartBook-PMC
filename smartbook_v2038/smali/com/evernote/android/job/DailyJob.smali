.class public abstract Lcom/evernote/android/job/DailyJob;
.super Lcom/evernote/android/job/Job;
.source "DailyJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/DailyJob$DailyJobResult;
    }
.end annotation


# static fields
.field private static final CAT:Lcom/evernote/android/job/util/JobCat;

.field private static final DAY:J

.field static final EXTRA_END_MS:Ljava/lang/String; = "EXTRA_END_MS"

.field private static final EXTRA_ONCE:Ljava/lang/String; = "EXTRA_ONCE"

.field static final EXTRA_START_MS:Ljava/lang/String; = "EXTRA_START_MS"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "DailyJob"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/DailyJob;->CAT:Lcom/evernote/android/job/util/JobCat;

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/DailyJob;->DAY:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/evernote/android/job/Job;-><init>()V

    return-void
.end method

.method public static schedule(Lcom/evernote/android/job/JobRequest$Builder;JJ)I
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 82
    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/DailyJob;->schedule(Lcom/evernote/android/job/JobRequest$Builder;ZJJZ)I

    move-result p0

    return p0
.end method

.method private static schedule(Lcom/evernote/android/job/JobRequest$Builder;ZJJZ)I
    .locals 7

    .line 142
    sget-wide v0, Lcom/evernote/android/job/DailyJob;->DAY:J

    cmp-long v2, p2, v0

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-gez v2, :cond_7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_7

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 147
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->getClock()Lcom/evernote/android/job/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/evernote/android/job/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 150
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xd

    .line 151
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 154
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    rsub-int/lit8 v0, v0, 0x3c

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    rsub-int/lit8 v2, v2, 0x3c

    int-to-long v5, v2

    .line 155
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    rsub-int/lit8 v1, v1, 0x18

    rem-int/lit8 v1, v1, 0x18

    int-to-long v1, v1

    .line 156
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 157
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 158
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 159
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    add-long/2addr v3, p2

    .line 161
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    rem-long/2addr v3, v5

    if-eqz p6, :cond_0

    .line 163
    sget-object p6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xc

    invoke-virtual {p6, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long p6, v3, v5

    if-gez p6, :cond_0

    .line 165
    sget-object p6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p6, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_0
    cmp-long p6, p2, p4

    if-lez p6, :cond_1

    .line 170
    sget-object p6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p6, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr p4, v5

    :cond_1
    sub-long v5, p4, p2

    add-long/2addr v5, v3

    .line 174
    new-instance p6, Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    invoke-direct {p6}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>()V

    .line 175
    const-string v0, "EXTRA_START_MS"

    invoke-virtual {p6, v0, p2, p3}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->putLong(Ljava/lang/String;J)V

    .line 176
    const-string p2, "EXTRA_END_MS"

    invoke-virtual {p6, p2, p4, p5}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->putLong(Ljava/lang/String;J)V

    .line 178
    invoke-virtual {p0, p6}, Lcom/evernote/android/job/JobRequest$Builder;->addExtras(Lcom/evernote/android/job/util/support/PersistableBundleCompat;)Lcom/evernote/android/job/JobRequest$Builder;

    if-eqz p1, :cond_4

    .line 182
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object p2

    .line 183
    new-instance p3, Ljava/util/HashSet;

    iget-object p4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/evernote/android/job/JobManager;->getAllJobRequestsForTag(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 184
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/evernote/android/job/JobRequest;

    .line 185
    invoke-virtual {p4}, Lcom/evernote/android/job/JobRequest;->isExact()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-virtual {p4}, Lcom/evernote/android/job/JobRequest;->getStartMs()J

    move-result-wide p5

    cmp-long v0, p5, v1

    if-eqz v0, :cond_2

    .line 186
    :cond_3
    invoke-virtual {p4}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/evernote/android/job/JobManager;->cancel(I)Z

    goto :goto_0

    .line 192
    :cond_4
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/evernote/android/job/JobRequest$Builder;->setExecutionWindow(JJ)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest$Builder;->build()Lcom/evernote/android/job/JobRequest;

    move-result-object p0

    if-eqz p1, :cond_6

    .line 195
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->isExact()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->isTransient()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 196
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Daily jobs cannot be exact, periodic or transient"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->schedule()I

    move-result p0

    return p0

    .line 143
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "startMs or endMs should be less than one day (in milliseconds)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static scheduleAsync(Lcom/evernote/android/job/JobRequest$Builder;JJ)V
    .locals 6

    .line 95
    sget-object v5, Lcom/evernote/android/job/JobRequest;->DEFAULT_JOB_SCHEDULED_CALLBACK:Lcom/evernote/android/job/JobRequest$JobScheduledCallback;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/evernote/android/job/DailyJob;->scheduleAsync(Lcom/evernote/android/job/JobRequest$Builder;JJLcom/evernote/android/job/JobRequest$JobScheduledCallback;)V

    return-void
.end method

.method public static scheduleAsync(Lcom/evernote/android/job/JobRequest$Builder;JJLcom/evernote/android/job/JobRequest$JobScheduledCallback;)V
    .locals 9

    .line 107
    invoke-static {p5}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v8, Lcom/evernote/android/job/DailyJob$1;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/evernote/android/job/DailyJob$1;-><init>(Lcom/evernote/android/job/JobRequest$Builder;JJLcom/evernote/android/job/JobRequest$JobScheduledCallback;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startNowOnce(Lcom/evernote/android/job/JobRequest$Builder;)I
    .locals 3

    .line 131
    new-instance v0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    invoke-direct {v0}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>()V

    .line 132
    const-string v1, "EXTRA_ONCE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest$Builder;->startNow()Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object p0

    .line 136
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/JobRequest$Builder;->addExtras(Lcom/evernote/android/job/util/support/PersistableBundleCompat;)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest$Builder;->build()Lcom/evernote/android/job/JobRequest;

    move-result-object p0

    .line 138
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->schedule()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract onRunDailyJob(Lcom/evernote/android/job/Job$Params;)Lcom/evernote/android/job/DailyJob$DailyJobResult;
.end method

.method protected final onRunJob(Lcom/evernote/android/job/Job$Params;)Lcom/evernote/android/job/Job$Result;
    .locals 21

    .line 205
    const-string v1, "Rescheduling daily job %s"

    const-string v2, "Cancel daily job %s"

    const-string v3, "Daily job result was null"

    invoke-virtual/range {p1 .. p1}, Lcom/evernote/android/job/Job$Params;->getExtras()Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    move-result-object v4

    .line 206
    const-string v0, "EXTRA_ONCE"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 208
    const-string v7, "EXTRA_END_MS"

    const-string v8, "EXTRA_START_MS"

    if-nez v6, :cond_1

    invoke-virtual {v4, v8}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4, v7}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    sget-object v0, Lcom/evernote/android/job/DailyJob;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v1, "Daily job doesn\'t contain start and end time"

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;

    return-object v0

    :cond_1
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v13, p0

    .line 216
    :try_start_0
    invoke-virtual {v13, v11}, Lcom/evernote/android/job/DailyJob;->meetsRequirements(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    invoke-virtual/range {p0 .. p1}, Lcom/evernote/android/job/DailyJob;->onRunDailyJob(Lcom/evernote/android/job/Job$Params;)Lcom/evernote/android/job/DailyJob$DailyJobResult;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_2
    sget-object v12, Lcom/evernote/android/job/DailyJob$DailyJobResult;->SUCCESS:Lcom/evernote/android/job/DailyJob$DailyJobResult;

    .line 220
    sget-object v0, Lcom/evernote/android/job/DailyJob;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v14, "Daily job requirements not met, reschedule for the next day"

    invoke-virtual {v0, v14}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v12

    :goto_0
    if-nez v0, :cond_3

    .line 226
    sget-object v0, Lcom/evernote/android/job/DailyJob$DailyJobResult;->SUCCESS:Lcom/evernote/android/job/DailyJob$DailyJobResult;

    .line 227
    sget-object v12, Lcom/evernote/android/job/DailyJob;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v12, v3}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/String;)V

    :cond_3
    if-nez v6, :cond_5

    .line 231
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v3

    .line 232
    sget-object v6, Lcom/evernote/android/job/DailyJob$DailyJobResult;->SUCCESS:Lcom/evernote/android/job/DailyJob$DailyJobResult;

    if-ne v0, v6, :cond_4

    .line 233
    sget-object v0, Lcom/evernote/android/job/DailyJob;->CAT:Lcom/evernote/android/job/util/JobCat;

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest;->createBuilder()Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v14

    .line 237
    invoke-virtual {v4, v8, v9, v10}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sget-wide v2, Lcom/evernote/android/job/DailyJob;->DAY:J

    rem-long v16, v0, v2

    invoke-virtual {v4, v7, v9, v10}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    rem-long v18, v0, v2

    const/16 v20, 0x1

    const/4 v15, 0x0

    .line 236
    invoke-static/range {v14 .. v20}, Lcom/evernote/android/job/DailyJob;->schedule(Lcom/evernote/android/job/JobRequest$Builder;ZJJZ)I

    move-result v0

    .line 239
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/evernote/android/job/JobManager;->getJobRequest(I)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 241
    invoke-virtual {v0, v5, v11}, Lcom/evernote/android/job/JobRequest;->updateStats(ZZ)V

    goto :goto_1

    .line 245
    :cond_4
    sget-object v0, Lcom/evernote/android/job/DailyJob;->CAT:Lcom/evernote/android/job/util/JobCat;

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v3, v1, v5

    invoke-virtual {v0, v2, v1}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_5
    :goto_1
    sget-object v0, Lcom/evernote/android/job/Job$Result;->SUCCESS:Lcom/evernote/android/job/Job$Result;

    return-object v0

    :catchall_0
    move-exception v0

    if-nez v12, :cond_6

    .line 226
    sget-object v12, Lcom/evernote/android/job/DailyJob$DailyJobResult;->SUCCESS:Lcom/evernote/android/job/DailyJob$DailyJobResult;

    .line 227
    sget-object v14, Lcom/evernote/android/job/DailyJob;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v14, v3}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/String;)V

    :cond_6
    if-nez v6, :cond_8

    .line 231
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v3

    .line 232
    sget-object v6, Lcom/evernote/android/job/DailyJob$DailyJobResult;->SUCCESS:Lcom/evernote/android/job/DailyJob$DailyJobResult;

    if-ne v12, v6, :cond_7

    .line 233
    sget-object v2, Lcom/evernote/android/job/DailyJob;->CAT:Lcom/evernote/android/job/util/JobCat;

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v3, v6, v5

    invoke-virtual {v2, v1, v6}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest;->createBuilder()Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v14

    .line 237
    invoke-virtual {v4, v8, v9, v10}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sget-wide v15, Lcom/evernote/android/job/DailyJob;->DAY:J

    rem-long/2addr v1, v15

    invoke-virtual {v4, v7, v9, v10}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    rem-long v18, v3, v15

    const/16 v20, 0x1

    const/4 v15, 0x0

    move-wide/from16 v16, v1

    .line 236
    invoke-static/range {v14 .. v20}, Lcom/evernote/android/job/DailyJob;->schedule(Lcom/evernote/android/job/JobRequest$Builder;ZJJZ)I

    move-result v1

    .line 239
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/evernote/android/job/JobManager;->getJobRequest(I)Lcom/evernote/android/job/JobRequest;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 241
    invoke-virtual {v1, v5, v11}, Lcom/evernote/android/job/JobRequest;->updateStats(ZZ)V

    goto :goto_2

    .line 245
    :cond_7
    sget-object v1, Lcom/evernote/android/job/DailyJob;->CAT:Lcom/evernote/android/job/util/JobCat;

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, v4}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :cond_8
    :goto_2
    throw v0
.end method
