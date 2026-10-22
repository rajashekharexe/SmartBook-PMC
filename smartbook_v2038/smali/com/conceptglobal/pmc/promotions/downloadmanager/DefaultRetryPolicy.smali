.class public Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;
.super Ljava/lang/Object;
.source "DefaultRetryPolicy.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;


# static fields
.field public static final DEFAULT_BACKOFF_MULT:F = 1.0f

.field public static final DEFAULT_MAX_RETRIES:I = 0x1

.field public static final DEFAULT_TIMEOUT_MS:I = 0x1388


# instance fields
.field private final mBackoffMultiplier:F

.field private mCurrentRetryCount:I

.field private mCurrentTimeoutMs:I

.field private final mMaxNumRetries:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x1388

    .line 34
    invoke-direct {p0, v2, v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    .line 45
    iput p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->mMaxNumRetries:I

    .line 46
    iput p3, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->mBackoffMultiplier:F

    return-void
.end method


# virtual methods
.method public getBackOffMultiplier()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->mBackoffMultiplier:F

    return v0
.end method

.method public getCurrentRetryCount()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->mCurrentRetryCount:I

    return v0
.end method

.method public getCurrentTimeout()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    return v0
.end method

.method protected hasAttemptRemaining()Z
    .locals 2

    .line 78
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->mCurrentRetryCount:I

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->mMaxNumRetries:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public retry()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryError;
        }
    .end annotation

    .line 67
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->mCurrentRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->mCurrentRetryCount:I

    .line 68
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->mBackoffMultiplier:F

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    .line 69
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;->hasAttemptRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryError;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryError;-><init>()V

    throw v0
.end method
