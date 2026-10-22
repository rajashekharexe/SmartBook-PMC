.class public Lcom/evernote/android/job/v14/JobProxy14;
.super Ljava/lang/Object;
.source "JobProxy14.java"

# interfaces
.implements Lcom/evernote/android/job/JobProxy;


# static fields
.field private static final TAG:Ljava/lang/String; = "JobProxy14"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field protected final mCat:Lcom/evernote/android/job/util/JobCat;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    const-string v0, "JobProxy14"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v14/JobProxy14;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/evernote/android/job/v14/JobProxy14;->mContext:Landroid/content/Context;

    .line 51
    new-instance p1, Lcom/evernote/android/job/util/JobCat;

    invoke-direct {p1, p2}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lcom/evernote/android/job/util/JobCat;

    return-void
.end method

.method private logScheduled(Lcom/evernote/android/job/JobRequest;)V
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lcom/evernote/android/job/util/JobCat;

    .line 123
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getAverageDelayMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isExact()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getRescheduleCount(Lcom/evernote/android/job/JobRequest;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 122
    const-string p1, "Scheduled alarm, %s, delay %s (from now), exact %b, reschedule count %d"

    invoke-virtual {v0, p1, v4}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 4

    .line 156
    invoke-virtual {p0}, Lcom/evernote/android/job/v14/JobProxy14;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 160
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/evernote/android/job/v14/JobProxy14;->createPendingIntentFlags(Z)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2, v1}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(IZLandroid/os/Bundle;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/evernote/android/job/v14/JobProxy14;->createPendingIntentFlags(Z)I

    move-result v1

    invoke-virtual {p0, p1, v3, v2, v1}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(IZLandroid/os/Bundle;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected createPendingIntentFlags(Z)I
    .locals 0

    if-nez p1, :cond_0

    const/high16 p1, 0x48000000    # 131072.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x8000000

    :goto_0
    return p1
.end method

.method protected getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mAlarmManager:Landroid/app/AlarmManager;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lcom/evernote/android/job/util/JobCat;

    const-string v1, "AlarmManager is null"

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/String;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method protected getPendingIntent(IZLandroid/os/Bundle;I)Landroid/app/PendingIntent;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/evernote/android/job/v14/PlatformAlarmReceiver;->createIntent(Landroid/content/Context;IZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    .line 197
    :try_start_0
    iget-object p3, p0, Lcom/evernote/android/job/v14/JobProxy14;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 201
    iget-object p2, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {p2, p1}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getPendingIntent(Lcom/evernote/android/job/JobRequest;I)Landroid/app/PendingIntent;
    .locals 2

    .line 189
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v0

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isExact()Z

    move-result v1

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getTransientExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(IZLandroid/os/Bundle;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method protected getPendingIntent(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/PendingIntent;
    .locals 0

    .line 185
    invoke-virtual {p0, p2}, Lcom/evernote/android/job/v14/JobProxy14;->createPendingIntentFlags(Z)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(Lcom/evernote/android/job/JobRequest;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method protected getTriggerAtMillis(Lcom/evernote/android/job/JobRequest;)J
    .locals 4

    .line 106
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->isForceRtc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->getClock()Lcom/evernote/android/job/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/evernote/android/job/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getAverageDelayMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    .line 109
    :cond_0
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->getClock()Lcom/evernote/android/job/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/evernote/android/job/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getAverageDelayMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    goto :goto_0
.end method

.method protected getType(Z)I
    .locals 0

    if-eqz p1, :cond_1

    .line 115
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->isForceRtc()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    .line 117
    :cond_1
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->isForceRtc()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x3

    :goto_1
    return p1
.end method

.method public isPlatformJobScheduled(Lcom/evernote/android/job/JobRequest;)Z
    .locals 1

    const/high16 v0, 0x20000000

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(Lcom/evernote/android/job/JobRequest;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public plantOneOff(Lcom/evernote/android/job/JobRequest;)V
    .locals 7

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/PendingIntent;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/evernote/android/job/v14/JobProxy14;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isExact()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getStartMs()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFailureCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 67
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getTransientExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/evernote/android/job/v14/PlatformAlarmService;->start(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/evernote/android/job/v14/JobProxy14;->plantOneOffExact(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/evernote/android/job/v14/JobProxy14;->plantOneOffInexact(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected plantOneOffExact(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 5

    .line 86
    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v14/JobProxy14;->getTriggerAtMillis(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    .line 87
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    .line 88
    invoke-virtual {p0, v4}, Lcom/evernote/android/job/v14/JobProxy14;->getType(Z)I

    move-result v2

    invoke-static {p2, v2, v0, v1, p3}, Landroidx/core/app/DialogCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0, v4}, Lcom/evernote/android/job/v14/JobProxy14;->getType(Z)I

    move-result v2

    invoke-virtual {p2, v2, v0, v1, p3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 94
    :goto_0
    invoke-direct {p0, p1}, Lcom/evernote/android/job/v14/JobProxy14;->logScheduled(Lcom/evernote/android/job/JobRequest;)V

    return-void
.end method

.method protected plantOneOffFlexSupport(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 4

    .line 98
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->getClock()Lcom/evernote/android/job/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/evernote/android/job/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getAverageDelayMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/4 v2, 0x1

    .line 99
    invoke-virtual {p2, v2, v0, v1, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 101
    iget-object p2, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lcom/evernote/android/job/util/JobCat;

    .line 102
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    aput-object p3, v1, v2

    const/4 p1, 0x2

    aput-object v0, v1, p1

    .line 101
    const-string p1, "Scheduled repeating alarm (flex support), %s, interval %s, flex %s"

    invoke-virtual {p2, p1, v1}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected plantOneOffInexact(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 3

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/v14/JobProxy14;->getType(Z)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v14/JobProxy14;->getTriggerAtMillis(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/evernote/android/job/v14/JobProxy14;->logScheduled(Lcom/evernote/android/job/JobRequest;)V

    return-void
.end method

.method public plantPeriodic(Lcom/evernote/android/job/JobRequest;)V
    .locals 8

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/PendingIntent;

    move-result-object v7

    .line 129
    invoke-virtual {p0}, Lcom/evernote/android/job/v14/JobProxy14;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/v14/JobProxy14;->getType(Z)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v14/JobProxy14;->getTriggerAtMillis(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v2, v3, v0

    const-string p1, "Scheduled repeating alarm, %s, interval %s"

    invoke-virtual {v1, p1, v3}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public plantPeriodicFlexSupport(Lcom/evernote/android/job/JobRequest;)V
    .locals 2

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/PendingIntent;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/evernote/android/job/v14/JobProxy14;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 147
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/evernote/android/job/v14/JobProxy14;->plantOneOffFlexSupport(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
