.class public Lcom/evernote/android/job/v19/JobProxy19;
.super Lcom/evernote/android/job/v14/JobProxy14;
.source "JobProxy19.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JobProxy19"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    const-string v0, "JobProxy19"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v14/JobProxy14;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected plantOneOffFlexSupport(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 11

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 55
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    add-long v6, v0, v2

    .line 56
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    sub-long v8, v0, v2

    const/4 v5, 0x1

    move-object v4, p2

    move-object v10, p3

    .line 58
    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    .line 60
    iget-object p2, p0, Lcom/evernote/android/job/v19/JobProxy19;->mCat:Lcom/evernote/android/job/util/JobCat;

    .line 61
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p3, v2, p1

    const/4 p1, 0x2

    aput-object v0, v2, p1

    const/4 p1, 0x3

    aput-object v1, v2, p1

    .line 60
    const-string p1, "Scheduled repeating alarm (flex support), %s, start %s, end %s, flex %s"

    invoke-virtual {p2, p1, v2}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected plantOneOffInexact(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 11

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 43
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    add-long v6, v0, v2

    .line 44
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    sub-long v8, v0, v2

    const/4 v5, 0x1

    move-object v4, p2

    move-object v10, p3

    .line 46
    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    .line 48
    iget-object p2, p0, Lcom/evernote/android/job/v19/JobProxy19;->mCat:Lcom/evernote/android/job/util/JobCat;

    .line 49
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    const/4 p1, 0x2

    aput-object v0, v1, p1

    .line 48
    const-string p1, "Schedule alarm, %s, start %s, end %s"

    invoke-virtual {p2, p1, v1}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
