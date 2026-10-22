.class public Lcom/evernote/android/job/v26/JobProxy26;
.super Lcom/evernote/android/job/v24/JobProxy24;
.source "JobProxy26.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JobProxy26"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    const-string v0, "JobProxy26"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v24/JobProxy24;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/v24/JobProxy24;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I
    .locals 2

    .line 65
    sget-object v0, Lcom/evernote/android/job/v26/JobProxy26$1;->$SwitchMap$com$evernote$android$job$JobRequest$NetworkType:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 69
    invoke-super {p0, p1}, Lcom/evernote/android/job/v24/JobProxy24;->convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1
.end method

.method protected createBaseBuilder(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/job/JobInfo$Builder;
    .locals 1

    .line 58
    invoke-super {p0, p1, p2}, Lcom/evernote/android/job/v24/JobProxy24;->createBaseBuilder(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 59
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiresBatteryNotLow()Z

    move-result v0

    invoke-static {p2, v0}, Lkotlin/io/path/PathRelativizer$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/job/JobInfo$Builder;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 60
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiresStorageNotLow()Z

    move-result p1

    invoke-static {p2, p1}, Lkotlin/io/path/PathRelativizer$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/app/job/JobInfo$Builder;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected isJobInfoScheduled(Landroid/app/job/JobInfo;Lcom/evernote/android/job/JobRequest;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result p1

    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected setTransientBundle(Lcom/evernote/android/job/JobRequest;Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo$Builder;
    .locals 0

    .line 48
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getTransientExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/io/path/PathRelativizer$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/job/JobInfo$Builder;Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    return-object p1
.end method
