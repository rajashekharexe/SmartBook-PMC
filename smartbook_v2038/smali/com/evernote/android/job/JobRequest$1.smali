.class final Lcom/evernote/android/job/JobRequest$1;
.super Ljava/lang/Object;
.source "JobRequest.java"

# interfaces
.implements Lcom/evernote/android/job/JobRequest$JobScheduledCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJobScheduled(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 72
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$000()Lcom/evernote/android/job/util/JobCat;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "The job with tag %s couldn\'t be scheduled"

    invoke-virtual {p1, p3, p2, v0}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
