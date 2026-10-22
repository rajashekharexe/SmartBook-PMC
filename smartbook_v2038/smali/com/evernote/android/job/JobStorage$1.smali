.class Lcom/evernote/android/job/JobStorage$1;
.super Ljava/lang/Thread;
.source "JobStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/android/job/JobStorage;->tryToCleanupFinishedJobs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/android/job/JobStorage;


# direct methods
.method constructor <init>(Lcom/evernote/android/job/JobStorage;Ljava/lang/String;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/evernote/android/job/JobStorage$1;->this$0:Lcom/evernote/android/job/JobStorage;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 385
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage$1;->this$0:Lcom/evernote/android/job/JobStorage;

    invoke-static {v0}, Lcom/evernote/android/job/JobStorage;->access$100(Lcom/evernote/android/job/JobStorage;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 386
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/evernote/android/job/JobStorage$1;->this$0:Lcom/evernote/android/job/JobStorage;

    invoke-static {v2}, Lcom/evernote/android/job/JobStorage;->access$100(Lcom/evernote/android/job/JobStorage;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 387
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 389
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 390
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 393
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 394
    iget-object v4, p0, Lcom/evernote/android/job/JobStorage$1;->this$0:Lcom/evernote/android/job/JobStorage;

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/evernote/android/job/JobStorage;->access$200(Lcom/evernote/android/job/JobStorage;Lcom/evernote/android/job/JobRequest;I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 395
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 396
    invoke-static {}, Lcom/evernote/android/job/JobStorage;->access$300()Lcom/evernote/android/job/util/JobCat;

    move-result-object v4

    const-string v6, "Deleted job %d which failed to delete earlier"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-virtual {v4, v6, v5}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {}, Lcom/evernote/android/job/JobStorage;->access$300()Lcom/evernote/android/job/util/JobCat;

    move-result-object v4

    const-string v6, "Couldn\'t delete job %d which failed to delete earlier"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-virtual {v4, v6, v5}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage$1;->this$0:Lcom/evernote/android/job/JobStorage;

    invoke-static {v0}, Lcom/evernote/android/job/JobStorage;->access$100(Lcom/evernote/android/job/JobStorage;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 407
    :try_start_2
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage$1;->this$0:Lcom/evernote/android/job/JobStorage;

    invoke-static {v0}, Lcom/evernote/android/job/JobStorage;->access$100(Lcom/evernote/android/job/JobStorage;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 410
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v4, 0x32

    if-le v0, v4, :cond_3

    .line 412
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    if-le v3, v4, :cond_2

    goto :goto_2

    .line 416
    :cond_2
    iget-object v3, p0, Lcom/evernote/android/job/JobStorage$1;->this$0:Lcom/evernote/android/job/JobStorage;

    invoke-static {v3}, Lcom/evernote/android/job/JobStorage;->access$100(Lcom/evernote/android/job/JobStorage;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_1

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage$1;->this$0:Lcom/evernote/android/job/JobStorage;

    invoke-static {v0}, Lcom/evernote/android/job/JobStorage;->access$100(Lcom/evernote/android/job/JobStorage;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 421
    :cond_4
    :goto_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 387
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
