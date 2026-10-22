.class public Lcom/evernote/android/job/gcm/PlatformGcmService;
.super Lcom/google/android/gms/gcm/GcmTaskService;
.source "PlatformGcmService.java"


# static fields
.field private static final CAT:Lcom/evernote/android/job/util/JobCat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "PlatformGcmService"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/gcm/PlatformGcmService;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmTaskService;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeTasks()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/google/android/gms/gcm/GcmTaskService;->onInitializeTasks()V

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/gcm/PlatformGcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/JobManager;->create(Landroid/content/Context;)Lcom/evernote/android/job/JobManager;
    :try_end_0
    .catch Lcom/evernote/android/job/JobManagerCreateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I
    .locals 3

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/gcm/TaskParams;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 38
    new-instance v1, Lcom/evernote/android/job/JobProxy$Common;

    sget-object v2, Lcom/evernote/android/job/gcm/PlatformGcmService;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-direct {v1, p0, v2, v0}, Lcom/evernote/android/job/JobProxy$Common;-><init>(Landroid/app/Service;Lcom/evernote/android/job/util/JobCat;I)V

    const/4 v0, 0x1

    .line 40
    invoke-virtual {v1, v0, v0}, Lcom/evernote/android/job/JobProxy$Common;->getPendingRequest(ZZ)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    return v2

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/gcm/TaskParams;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/evernote/android/job/JobProxy$Common;->executeJobRequest(Lcom/evernote/android/job/JobRequest;Landroid/os/Bundle;)Lcom/evernote/android/job/Job$Result;

    move-result-object p1

    .line 46
    sget-object v0, Lcom/evernote/android/job/Job$Result;->SUCCESS:Lcom/evernote/android/job/Job$Result;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/Job$Result;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v2
.end method
