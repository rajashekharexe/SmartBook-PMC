.class public Lcom/evernote/android/job/v21/PlatformJobService;
.super Landroid/app/job/JobService;
.source "PlatformJobService.java"


# static fields
.field private static final CAT:Lcom/evernote/android/job/util/JobCat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "PlatformJobService"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/v21/PlatformJobService;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/evernote/android/job/util/JobCat;
    .locals 1

    .line 35
    sget-object v0, Lcom/evernote/android/job/v21/PlatformJobService;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/evernote/android/job/v21/PlatformJobService;Landroid/app/job/JobParameters;)Landroid/os/Bundle;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/evernote/android/job/v21/PlatformJobService;->getTransientBundle(Landroid/app/job/JobParameters;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private getTransientBundle(Landroid/app/job/JobParameters;)Landroid/os/Bundle;
    .locals 2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 104
    invoke-static {p1}, Lkotlin/io/path/PathRelativizer$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/job/JobParameters;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 106
    :cond_0
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 45
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/evernote/android/job/v21/PlatformJobService$1;

    invoke-direct {v1, p0, p1}, Lcom/evernote/android/job/v21/PlatformJobService$1;-><init>(Lcom/evernote/android/job/v21/PlatformJobService;Landroid/app/job/JobParameters;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 89
    invoke-static {p0}, Lcom/evernote/android/job/JobManager;->create(Landroid/content/Context;)Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobManager;->getJob(I)Lcom/evernote/android/job/Job;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/evernote/android/job/Job;->cancel()V

    .line 92
    sget-object p1, Lcom/evernote/android/job/v21/PlatformJobService;->CAT:Lcom/evernote/android/job/util/JobCat;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Called onStopJob for %s"

    invoke-virtual {p1, v0, v1}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_0
    sget-object v0, Lcom/evernote/android/job/v21/PlatformJobService;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Called onStopJob, job %d not found"

    invoke-virtual {v0, p1, v1}, Lcom/evernote/android/job/util/JobCat;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v2
.end method
