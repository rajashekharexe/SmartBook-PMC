.class public Lorg/apache/http/concurrent/BasicFuture;
.super Ljava/lang/Object;
.source "BasicFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lorg/apache/http/concurrent/Cancellable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Lorg/apache/http/concurrent/Cancellable;"
    }
.end annotation


# instance fields
.field private final callback:Lorg/apache/http/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/concurrent/FutureCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile cancelled:Z

.field private volatile completed:Z

.field private volatile ex:Ljava/lang/Exception;

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    return-void
.end method

.method private getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/apache/http/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/apache/http/concurrent/BasicFuture;->result:Ljava/lang/Object;

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lorg/apache/http/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0, v0}, Lorg/apache/http/concurrent/BasicFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .locals 1

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-boolean p1, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-eqz p1, :cond_0

    .line 138
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    .line 141
    iput-boolean p1, p0, Lorg/apache/http/concurrent/BasicFuture;->cancelled:Z

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v0, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v0, :cond_1

    .line 145
    invoke-interface {v0}, Lorg/apache/http/concurrent/FutureCallback;->cancelled()V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    .line 143
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public completed(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-eqz v0, :cond_0

    .line 108
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    .line 111
    iput-object p1, p0, Lorg/apache/http/concurrent/BasicFuture;->result:Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v1, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v1, p1}, Lorg/apache/http/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_1
    return v0

    :catchall_0
    move-exception p1

    .line 113
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public failed(Ljava/lang/Exception;)Z
    .locals 2

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-eqz v0, :cond_0

    .line 123
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    .line 126
    iput-object p1, p0, Lorg/apache/http/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v1, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_1

    .line 130
    invoke-interface {v1, p1}, Lorg/apache/http/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_1
    return v0

    :catchall_0
    move-exception p1

    .line 128
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    monitor-enter p0

    .line 74
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0}, Lorg/apache/http/concurrent/BasicFuture;->getResult()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_0
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 86
    :goto_0
    iget-boolean v4, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-eqz v4, :cond_1

    .line 87
    invoke-direct {p0}, Lorg/apache/http/concurrent/BasicFuture;->getResult()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    if-lez p3, :cond_4

    move-wide v4, p1

    .line 92
    :goto_1
    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 93
    iget-boolean p3, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-eqz p3, :cond_2

    .line 94
    invoke-direct {p0}, Lorg/apache/http/concurrent/BasicFuture;->getResult()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 96
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long v4, p1, v4

    cmp-long p3, v4, v0

    if-lez p3, :cond_3

    goto :goto_1

    .line 98
    :cond_3
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 89
    :cond_4
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lorg/apache/http/concurrent/BasicFuture;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    return v0
.end method
