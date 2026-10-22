.class public Lcom/evernote/android/job/v24/JobProxy24;
.super Lcom/evernote/android/job/v21/JobProxy21;
.source "JobProxy24.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JobProxy24"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    const-string v0, "JobProxy24"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v24/JobProxy24;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/v21/JobProxy21;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I
    .locals 2

    .line 67
    sget-object v0, Lcom/evernote/android/job/v24/JobProxy24$1;->$SwitchMap$com$evernote$android$job$JobRequest$NetworkType:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 71
    invoke-super {p0, p1}, Lcom/evernote/android/job/v21/JobProxy21;->convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

.method protected createBuilderPeriodic(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;
    .locals 0

    .line 62
    invoke-static {p1, p2, p3, p4, p5}, Lkotlin/io/path/PathRelativizer$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public isPlatformJobScheduled(Lcom/evernote/android/job/JobRequest;)Z
    .locals 2

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v24/JobProxy24;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/io/path/PathRelativizer$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/job/JobScheduler;I)Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/evernote/android/job/v24/JobProxy24;->isJobInfoScheduled(Landroid/app/job/JobInfo;Lcom/evernote/android/job/JobRequest;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 55
    iget-object v0, p0, Lcom/evernote/android/job/v24/JobProxy24;->mCat:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public plantPeriodicFlexSupport(Lcom/evernote/android/job/JobRequest;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/evernote/android/job/v24/JobProxy24;->mCat:Lcom/evernote/android/job/util/JobCat;

    const-string v1, "plantPeriodicFlexSupport called although flex is supported"

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lcom/evernote/android/job/v21/JobProxy21;->plantPeriodicFlexSupport(Lcom/evernote/android/job/JobRequest;)V

    return-void
.end method
