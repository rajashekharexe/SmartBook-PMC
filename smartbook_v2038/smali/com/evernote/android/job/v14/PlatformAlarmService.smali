.class public final Lcom/evernote/android/job/v14/PlatformAlarmService;
.super Landroidx/core/app/JobIntentService;
.source "PlatformAlarmService.java"


# static fields
.field private static final CAT:Lcom/evernote/android/job/util/JobCat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "PlatformAlarmService"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/v14/PlatformAlarmService;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method static runJob(Landroid/content/Intent;Landroid/app/Service;Lcom/evernote/android/job/util/JobCat;)V
    .locals 2

    if-nez p0, :cond_0

    .line 55
    const-string p0, "Delivered intent is null"

    invoke-virtual {p2, p0}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_0
    const-string v0, "EXTRA_JOB_ID"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 60
    const-string v1, "EXTRA_TRANSIENT_EXTRAS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 61
    new-instance v1, Lcom/evernote/android/job/JobProxy$Common;

    invoke-direct {v1, p1, p2, v0}, Lcom/evernote/android/job/JobProxy$Common;-><init>(Landroid/app/Service;Lcom/evernote/android/job/util/JobCat;I)V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {v1, p1, p1}, Lcom/evernote/android/job/JobProxy$Common;->getPendingRequest(ZZ)Lcom/evernote/android/job/JobRequest;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {v1, p1, p0}, Lcom/evernote/android/job/JobProxy$Common;->executeJobRequest(Lcom/evernote/android/job/JobRequest;Landroid/os/Bundle;)Lcom/evernote/android/job/Job$Result;

    :cond_1
    return-void
.end method

.method public static start(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 2

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    const-string v1, "EXTRA_JOB_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 42
    const-string p1, "EXTRA_TRANSIENT_EXTRAS"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 45
    :cond_0
    const-class p1, Lcom/evernote/android/job/v14/PlatformAlarmService;

    const p2, 0x7ffff1c1

    invoke-static {p0, p1, p2, v0}, Lcom/evernote/android/job/v14/PlatformAlarmService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 1

    .line 50
    sget-object v0, Lcom/evernote/android/job/v14/PlatformAlarmService;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-static {p1, p0, v0}, Lcom/evernote/android/job/v14/PlatformAlarmService;->runJob(Landroid/content/Intent;Landroid/app/Service;Lcom/evernote/android/job/util/JobCat;)V

    return-void
.end method
