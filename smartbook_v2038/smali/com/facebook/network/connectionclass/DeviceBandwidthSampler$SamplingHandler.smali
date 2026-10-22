.class Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;
.super Landroid/os/Handler;
.source "DeviceBandwidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamplingHandler"
.end annotation


# static fields
.field static final MSG_START:I = 0x1

.field static final MSG_STOP:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;


# direct methods
.method public constructor <init>(Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;Landroid/os/Looper;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->this$0:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    .line 93
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private addSample()V
    .locals 7

    .line 117
    invoke-static {}, Lcom/facebook/network/connectionclass/QTagParser;->getInstance()Lcom/facebook/network/connectionclass/QTagParser;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/network/connectionclass/QTagParser;->parseDataUsageForUidAndTag(I)J

    move-result-wide v0

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 121
    iget-object v4, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->this$0:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    invoke-static {v4}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->access$200(Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;)Lcom/facebook/network/connectionclass/ConnectionClassManager;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->this$0:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    invoke-static {v5}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->access$100(Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;)J

    move-result-wide v5

    sub-long v5, v2, v5

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->addBandwidth(JJ)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->this$0:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    invoke-static {v0, v2, v3}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->access$102(Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;J)J

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->addSample()V

    .line 105
    invoke-virtual {p0, v1}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->removeMessages(I)V

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->addSample()V

    const-wide/16 v2, 0x3e8

    .line 101
    invoke-virtual {p0, v1, v2, v3}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
