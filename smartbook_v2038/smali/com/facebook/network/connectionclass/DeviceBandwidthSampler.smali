.class public Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;
.super Ljava/lang/Object;
.source "DeviceBandwidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;,
        Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$DeviceBandwidthSamplerHolder;
    }
.end annotation


# static fields
.field static final SAMPLE_TIME:J = 0x3e8L


# instance fields
.field private final mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

.field private mHandler:Landroid/os/Handler;

.field private mLastTimeReading:J

.field private mSamplingCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Lcom/facebook/network/connectionclass/ConnectionClassManager;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

    .line 62
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mSamplingCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ParseThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mThread:Landroid/os/HandlerThread;

    .line 64
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance p1, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;

    iget-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;-><init>(Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/network/connectionclass/ConnectionClassManager;Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;-><init>(Lcom/facebook/network/connectionclass/ConnectionClassManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mLastTimeReading:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;J)J
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mLastTimeReading:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;)Lcom/facebook/network/connectionclass/ConnectionClassManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

    return-object p0
.end method

.method public static getInstance()Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 56
    sget-object v0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$DeviceBandwidthSamplerHolder;->instance:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    return-object v0
.end method


# virtual methods
.method public isSampling()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mSamplingCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startSampling()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mSamplingCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mLastTimeReading:J

    :cond_0
    return-void
.end method

.method public stopSampling()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mSamplingCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
