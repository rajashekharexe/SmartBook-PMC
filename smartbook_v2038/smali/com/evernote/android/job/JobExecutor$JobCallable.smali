.class final Lcom/evernote/android/job/JobExecutor$JobCallable;
.super Ljava/lang/Object;
.source "JobExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JobCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/evernote/android/job/Job$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mJob:Lcom/evernote/android/job/Job;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/evernote/android/job/JobExecutor;


# direct methods
.method private constructor <init>(Lcom/evernote/android/job/JobExecutor;Lcom/evernote/android/job/Job;)V
    .locals 2

    .line 154
    iput-object p1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->this$0:Lcom/evernote/android/job/JobExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    .line 157
    invoke-virtual {p2}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 158
    const-string p2, "JobExecutor"

    invoke-static {}, Lcom/evernote/android/job/JobExecutor;->access$100()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/evernote/android/job/WakeLockUtil;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/JobExecutor;Lcom/evernote/android/job/Job;Lcom/evernote/android/job/JobExecutor$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/JobExecutor$JobCallable;-><init>(Lcom/evernote/android/job/JobExecutor;Lcom/evernote/android/job/Job;)V

    return-void
.end method

.method private handleResult(Lcom/evernote/android/job/Job;Lcom/evernote/android/job/Job$Result;)V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-virtual {v0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/evernote/android/job/Job$Result;->RESCHEDULE:Lcom/evernote/android/job/Job$Result;

    invoke-virtual {v1, p2}, Lcom/evernote/android/job/Job$Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/evernote/android/job/Job;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    invoke-virtual {v0, v2, v2}, Lcom/evernote/android/job/JobRequest;->reschedule(ZZ)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    .line 201
    iget-object p2, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/evernote/android/job/Job;->onReschedule(I)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    sget-object v1, Lcom/evernote/android/job/Job$Result;->SUCCESS:Lcom/evernote/android/job/Job$Result;

    invoke-virtual {v1, p2}, Lcom/evernote/android/job/Job$Result;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 212
    :goto_2
    invoke-virtual {p1}, Lcom/evernote/android/job/Job;->isDeleted()Z

    move-result p1

    if-nez p1, :cond_4

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    .line 216
    :cond_3
    invoke-virtual {v0, v2, v3}, Lcom/evernote/android/job/JobRequest;->updateStats(ZZ)V

    :cond_4
    return-void
.end method

.method private runJob()Lcom/evernote/android/job/Job$Result;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-virtual {v2}, Lcom/evernote/android/job/Job;->runJob()Lcom/evernote/android/job/Job$Result;

    move-result-object v2

    .line 182
    invoke-static {}, Lcom/evernote/android/job/JobExecutor;->access$200()Lcom/evernote/android/job/util/JobCat;

    move-result-object v3

    const-string v4, "Finished %s"

    iget-object v5, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v0

    invoke-virtual {v3, v4, v6}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v3, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-direct {p0, v3, v2}, Lcom/evernote/android/job/JobExecutor$JobCallable;->handleResult(Lcom/evernote/android/job/Job;Lcom/evernote/android/job/Job$Result;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 187
    invoke-static {}, Lcom/evernote/android/job/JobExecutor;->access$200()Lcom/evernote/android/job/util/JobCat;

    move-result-object v3

    iget-object v4, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    const-string v0, "Crashed %s"

    invoke-virtual {v3, v2, v0, v1}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-virtual {v0}, Lcom/evernote/android/job/Job;->getResult()Lcom/evernote/android/job/Job$Result;

    move-result-object v2

    :goto_0
    return-object v2
.end method


# virtual methods
.method public call()Lcom/evernote/android/job/Job$Result;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    const-string v0, "Wake lock was not held after job %s was done. The job took too long to complete. This could have unintended side effects on your app."

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-virtual {v3}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/evernote/android/job/JobExecutor;->access$100()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/evernote/android/job/WakeLockUtil;->acquireWakeLock(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;J)Z

    .line 166
    invoke-direct {p0}, Lcom/evernote/android/job/JobExecutor$JobCallable;->runJob()Lcom/evernote/android/job/Job$Result;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v4, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->this$0:Lcom/evernote/android/job/JobExecutor;

    iget-object v5, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-virtual {v4, v5}, Lcom/evernote/android/job/JobExecutor;->markJobAsFinished(Lcom/evernote/android/job/Job;)V

    .line 171
    iget-object v4, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_1

    .line 172
    :cond_0
    invoke-static {}, Lcom/evernote/android/job/JobExecutor;->access$200()Lcom/evernote/android/job/util/JobCat;

    move-result-object v4

    iget-object v5, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v1

    invoke-virtual {v4, v0, v2}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/evernote/android/job/WakeLockUtil;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    return-object v3

    :catchall_0
    move-exception v3

    .line 169
    iget-object v4, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->this$0:Lcom/evernote/android/job/JobExecutor;

    iget-object v5, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-virtual {v4, v5}, Lcom/evernote/android/job/JobExecutor;->markJobAsFinished(Lcom/evernote/android/job/Job;)V

    .line 171
    iget-object v4, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_3

    .line 172
    :cond_2
    invoke-static {}, Lcom/evernote/android/job/JobExecutor;->access$200()Lcom/evernote/android/job/util/JobCat;

    move-result-object v4

    iget-object v5, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v1

    invoke-virtual {v4, v0, v2}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/evernote/android/job/WakeLockUtil;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    throw v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/evernote/android/job/JobExecutor$JobCallable;->call()Lcom/evernote/android/job/Job$Result;

    move-result-object v0

    return-object v0
.end method
