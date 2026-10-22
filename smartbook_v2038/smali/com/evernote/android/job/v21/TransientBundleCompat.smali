.class final Lcom/evernote/android/job/v21/TransientBundleCompat;
.super Ljava/lang/Object;
.source "TransientBundleCompat.java"


# static fields
.field private static final CAT:Lcom/evernote/android/job/util/JobCat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "TransientBundleCompat"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/v21/TransientBundleCompat;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static cancel(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 94
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/evernote/android/job/v14/PlatformAlarmServiceExact;->createIntent(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x20000000

    .line 95
    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 102
    :cond_0
    const-string p1, "alarm"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 103
    invoke-virtual {p0, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 105
    invoke-virtual {p2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    sget-object p1, Lcom/evernote/android/job/v21/TransientBundleCompat;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {p1, p0}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static isScheduled(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, p1, v0}, Lcom/evernote/android/job/v14/PlatformAlarmServiceExact;->createIntent(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000000

    .line 88
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static persistBundle(Landroid/content/Context;Lcom/evernote/android/job/JobRequest;)V
    .locals 5

    .line 53
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v0

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/evernote/android/job/v14/PlatformAlarmServiceExact;->createIntent(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result p1

    const/high16 v1, 0x8000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 58
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    const/4 v2, 0x1

    .line 59
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static startWithTransientBundle(Landroid/content/Context;Lcom/evernote/android/job/JobRequest;)Z
    .locals 6

    .line 64
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/evernote/android/job/v14/PlatformAlarmServiceExact;->createIntent(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 72
    :cond_0
    :try_start_0
    sget-object v2, Lcom/evernote/android/job/v21/TransientBundleCompat;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v3, "Delegating transient job %s to API 14"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v5}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result p1

    invoke-static {p0, p1, v0}, Lcom/evernote/android/job/v21/TransientBundleCompat;->cancel(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    :cond_1
    return v4

    :catch_0
    move-exception p0

    .line 75
    sget-object p1, Lcom/evernote/android/job/v21/TransientBundleCompat;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {p1, p0}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    return v1
.end method
