.class public Lcom/facebook/network/connectionclass/ConnectionClassManager;
.super Ljava/lang/Object;
.source "ConnectionClassManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;,
        Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassManagerHolder;
    }
.end annotation


# static fields
.field static final BANDWIDTH_LOWER_BOUND:J = 0xaL

.field private static final BYTES_TO_BITS:I = 0x8

.field private static final DEFAULT_DECAY_CONSTANT:D = 0.05

.field private static final DEFAULT_GOOD_BANDWIDTH:I = 0x7d0

.field private static final DEFAULT_MODERATE_BANDWIDTH:I = 0x226

.field private static final DEFAULT_POOR_BANDWIDTH:I = 0x96

.field static final DEFAULT_SAMPLES_TO_QUALITY_CHANGE:D = 5.0


# instance fields
.field private mCurrentBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/network/connectionclass/ConnectionQuality;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

.field private volatile mInitiateStateChange:Z

.field private mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/network/connectionclass/ConnectionQuality;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleCounter:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    const-wide v1, 0x3fa999999999999aL    # 0.05

    invoke-direct {v0, v1, v2}, Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mInitiateStateChange:Z

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/network/connectionclass/ConnectionQuality;->UNKNOWN:Lcom/facebook/network/connectionclass/ConnectionQuality;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mCurrentBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mListenerList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/network/connectionclass/ConnectionClassManager$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/facebook/network/connectionclass/ConnectionClassManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/facebook/network/connectionclass/ConnectionClassManager;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 77
    sget-object v0, Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassManagerHolder;->instance:Lcom/facebook/network/connectionclass/ConnectionClassManager;

    return-object v0
.end method

.method private mapBandwidthQuality(D)Lcom/facebook/network/connectionclass/ConnectionQuality;
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    .line 143
    sget-object p1, Lcom/facebook/network/connectionclass/ConnectionQuality;->UNKNOWN:Lcom/facebook/network/connectionclass/ConnectionQuality;

    return-object p1

    :cond_0
    const-wide v0, 0x4062c00000000000L    # 150.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    .line 146
    sget-object p1, Lcom/facebook/network/connectionclass/ConnectionQuality;->POOR:Lcom/facebook/network/connectionclass/ConnectionQuality;

    return-object p1

    :cond_1
    const-wide v0, 0x4081300000000000L    # 550.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_2

    .line 149
    sget-object p1, Lcom/facebook/network/connectionclass/ConnectionQuality;->MODERATE:Lcom/facebook/network/connectionclass/ConnectionQuality;

    return-object p1

    :cond_2
    const-wide v0, 0x409f400000000000L    # 2000.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_3

    .line 152
    sget-object p1, Lcom/facebook/network/connectionclass/ConnectionQuality;->GOOD:Lcom/facebook/network/connectionclass/ConnectionQuality;

    return-object p1

    .line 154
    :cond_3
    sget-object p1, Lcom/facebook/network/connectionclass/ConnectionQuality;->EXCELLENT:Lcom/facebook/network/connectionclass/ConnectionQuality;

    return-object p1
.end method

.method private notifyListeners()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 205
    iget-object v2, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;

    iget-object v3, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mCurrentBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/network/connectionclass/ConnectionQuality;

    invoke-interface {v2, v3}, Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;->onBandwidthStateChange(Lcom/facebook/network/connectionclass/ConnectionQuality;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addBandwidth(JJ)V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-eqz v2, :cond_5

    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double p1, p1, v0

    long-to-double p3, p3

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x4020000000000000L    # 8.0

    mul-double p1, p1, p3

    const-wide/high16 p3, 0x4024000000000000L    # 10.0

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    invoke-virtual {p3, p1, p2}, Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;->addMeasurement(D)V

    .line 98
    iget-boolean p1, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mInitiateStateChange:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 99
    iget p1, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mSampleCounter:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mSampleCounter:I

    .line 100
    invoke-virtual {p0}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getCurrentBandwidthQuality()Lcom/facebook/network/connectionclass/ConnectionQuality;

    move-result-object p1

    iget-object p3, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mNextBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x0

    if-eq p1, p3, :cond_1

    .line 101
    iput-boolean p4, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mInitiateStateChange:Z

    .line 102
    iput p2, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mSampleCounter:I

    .line 104
    :cond_1
    iget p1, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mSampleCounter:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_2

    .line 105
    iput-boolean p4, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mInitiateStateChange:Z

    .line 106
    iput p2, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mSampleCounter:I

    .line 107
    iget-object p1, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mCurrentBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p2, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mNextBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->notifyListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_2
    monitor-exit p0

    return-void

    .line 113
    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mCurrentBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getCurrentBandwidthQuality()Lcom/facebook/network/connectionclass/ConnectionQuality;

    move-result-object p3

    if-eq p1, p3, :cond_4

    .line 114
    iput-boolean p2, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mInitiateStateChange:Z

    .line 115
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getCurrentBandwidthQuality()Lcom/facebook/network/connectionclass/ConnectionQuality;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mNextBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 92
    :cond_5
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getCurrentBandwidthQuality()Lcom/facebook/network/connectionclass/ConnectionQuality;
    .locals 2

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    if-nez v0, :cond_0

    .line 136
    sget-object v0, Lcom/facebook/network/connectionclass/ConnectionQuality;->UNKNOWN:Lcom/facebook/network/connectionclass/ConnectionQuality;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 138
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;->getAverage()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mapBandwidthQuality(D)Lcom/facebook/network/connectionclass/ConnectionQuality;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadKBitsPerSecond()D
    .locals 2

    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;->getAverage()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public register(Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;)Lcom/facebook/network/connectionclass/ConnectionQuality;
    .locals 1

    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mCurrentBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/network/connectionclass/ConnectionQuality;

    return-object p1
.end method

.method public remove(Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mDownloadBandwidth:Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/ExponentialGeometricAverage;->reset()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/facebook/network/connectionclass/ConnectionClassManager;->mCurrentBandwidthConnectionQuality:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/network/connectionclass/ConnectionQuality;->UNKNOWN:Lcom/facebook/network/connectionclass/ConnectionQuality;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
