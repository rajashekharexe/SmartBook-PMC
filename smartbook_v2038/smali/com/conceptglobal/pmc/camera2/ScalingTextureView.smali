.class public Lcom/conceptglobal/pmc/camera2/ScalingTextureView;
.super Landroid/view/TextureView;
.source "ScalingTextureView.java"


# instance fields
.field mMartrix:Landroid/opengl/Matrix;

.field mRatioHeight:I

.field mRatioWidth:I

.field mScaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->mRatioWidth:I

    .line 14
    iput p1, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->mRatioHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->mRatioWidth:I

    .line 14
    iput p1, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->mRatioHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->mRatioWidth:I

    .line 14
    iput p1, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->mRatioHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->mRatioWidth:I

    .line 14
    iput p1, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->mRatioHeight:I

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 86
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/conceptglobal/pmc/camera2/ScalingTextureView$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/ScalingTextureView$1;-><init>(Lcom/conceptglobal/pmc/camera2/ScalingTextureView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 54
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 56
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 57
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 59
    iget v0, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->mRatioWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->mRatioHeight:I

    if-nez v0, :cond_1

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->setMeasuredDimension(II)V

    .line 62
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 42
    :try_start_0
    iput p1, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->mRatioWidth:I

    .line 43
    iput p2, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->mRatioHeight:I

    .line 44
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->requestLayout()V

    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
