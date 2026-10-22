.class public Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private mAnimDuration:I

.field private mAnimEnable:Z

.field private mAnimProgress:F

.field private mInEditMode:Z

.field private mInInterpolator:Landroid/view/animation/Interpolator;

.field private mOutInterpolator:Landroid/view/animation/Interpolator;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mRunning:Z

.field private mStartTime:J

.field private final mUpdater:Ljava/lang/Runnable;

.field private mVisible:Z

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mRunning:Z

    const/16 v1, 0x3e8

    .line 24
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mAnimDuration:I

    .line 25
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mInInterpolator:Landroid/view/animation/Interpolator;

    .line 26
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mOutInterpolator:Landroid/view/animation/Interpolator;

    .line 35
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mInEditMode:Z

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mAnimEnable:Z

    .line 147
    new-instance v1, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable$1;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;)V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 40
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->update()V

    return-void
.end method

.method private resetAnimation()V
    .locals 2

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mStartTime:J

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mAnimProgress:F

    return-void
.end method

.method private update()V
    .locals 5

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 158
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mAnimDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mAnimProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mRunning:Z

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 93
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mRunning:Z

    if-nez v0, :cond_0

    .line 94
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mVisible:Z

    if-eqz v0, :cond_2

    .line 95
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mX:F

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mY:F

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mRadius:F

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mInInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mAnimProgress:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mRadius:F

    mul-float v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mOutInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mAnimProgress:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mRadius:F

    mul-float v0, v0, v1

    .line 98
    :goto_0
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mX:F

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mY:F

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mX:F

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mY:F

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mRadius:F

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    const v0, 0x10100a0

    .line 72
    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->hasState([II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const v0, 0x10100a7

    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->hasState([II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 74
    :goto_1
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mVisible:Z

    if-eq v0, p1, :cond_3

    .line 75
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mVisible:Z

    .line 76
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mInEditMode:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mAnimEnable:Z

    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->start()V

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mRunning:Z

    .line 144
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAnimDuration(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mAnimDuration:I

    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mAnimEnable:Z

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setInEditMode(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mInEditMode:Z

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mInInterpolator:Landroid/view/animation/Interpolator;

    .line 62
    iput-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mOutInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public start()V
    .locals 5

    .line 124
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->resetAnimation()V

    .line 125
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 126
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mRunning:Z

    .line 132
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 133
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->invalidateSelf()V

    return-void
.end method
