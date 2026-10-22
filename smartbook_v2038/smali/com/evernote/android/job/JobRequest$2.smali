.class Lcom/evernote/android/job/JobRequest$2;
.super Ljava/lang/Object;
.source "JobRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/android/job/JobRequest;->scheduleAsync(Lcom/evernote/android/job/JobRequest$JobScheduledCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/android/job/JobRequest;

.field final synthetic val$callback:Lcom/evernote/android/job/JobRequest$JobScheduledCallback;


# direct methods
.method constructor <init>(Lcom/evernote/android/job/JobRequest;Lcom/evernote/android/job/JobRequest$JobScheduledCallback;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$2;->this$0:Lcom/evernote/android/job/JobRequest;

    iput-object p2, p0, Lcom/evernote/android/job/JobRequest$2;->val$callback:Lcom/evernote/android/job/JobRequest$JobScheduledCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$2;->this$0:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->schedule()I

    move-result v0

    .line 456
    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$2;->val$callback:Lcom/evernote/android/job/JobRequest$JobScheduledCallback;

    iget-object v2, p0, Lcom/evernote/android/job/JobRequest$2;->this$0:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v2}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/evernote/android/job/JobRequest$JobScheduledCallback;->onJobScheduled(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 458
    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$2;->val$callback:Lcom/evernote/android/job/JobRequest$JobScheduledCallback;

    iget-object v2, p0, Lcom/evernote/android/job/JobRequest$2;->this$0:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v2}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v1, v3, v2, v0}, Lcom/evernote/android/job/JobRequest$JobScheduledCallback;->onJobScheduled(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
