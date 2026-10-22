.class public Lorg/android10/gintonic/internal/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# instance fields
.field private elapsedTime:J

.field private endTime:J

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lorg/android10/gintonic/internal/StopWatch;->startTime:J

    .line 24
    iput-wide v0, p0, Lorg/android10/gintonic/internal/StopWatch;->endTime:J

    .line 25
    iput-wide v0, p0, Lorg/android10/gintonic/internal/StopWatch;->elapsedTime:J

    return-void
.end method


# virtual methods
.method public getTotalTimeMillis()J
    .locals 5

    .line 43
    iget-wide v0, p0, Lorg/android10/gintonic/internal/StopWatch;->elapsedTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/android10/gintonic/internal/StopWatch;->endTime:J

    iget-wide v3, p0, Lorg/android10/gintonic/internal/StopWatch;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_0
    return-wide v2
.end method

.method public start()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lorg/android10/gintonic/internal/StopWatch;->reset()V

    .line 30
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android10/gintonic/internal/StopWatch;->startTime:J

    return-void
.end method

.method public stop()V
    .locals 5

    .line 34
    iget-wide v0, p0, Lorg/android10/gintonic/internal/StopWatch;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android10/gintonic/internal/StopWatch;->endTime:J

    .line 36
    iget-wide v2, p0, Lorg/android10/gintonic/internal/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/android10/gintonic/internal/StopWatch;->elapsedTime:J

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0}, Lorg/android10/gintonic/internal/StopWatch;->reset()V

    :goto_0
    return-void
.end method
