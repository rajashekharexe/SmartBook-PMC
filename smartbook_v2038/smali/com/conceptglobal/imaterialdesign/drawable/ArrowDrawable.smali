.class public Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ArrowDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static MODE_DOWN:I = 0x0

.field public static MODE_UP:I = 0x1


# instance fields
.field private mAnimDuration:I

.field private mAnimProgress:F

.field private mClockwise:Z

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mCurColor:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRunning:Z

.field private mSize:I

.field private mStartTime:J

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILandroid/content/res/ColorStateList;ILandroid/view/animation/Interpolator;Z)V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mRunning:Z

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mClockwise:Z

    .line 204
    new-instance v1, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable$1;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;)V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 40
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mSize:I

    .line 41
    iput p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mAnimDuration:I

    .line 42
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mMode:I

    .line 43
    iput-object p5, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez p5, :cond_0

    .line 45
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 46
    :cond_0
    iput-boolean p6, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mClockwise:Z

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 54
    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->update()V

    return-void
.end method

.method private resetAnimation()V
    .locals 2

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mStartTime:J

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mAnimProgress:F

    return-void
.end method

.method private update()V
    .locals 5

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 215
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mAnimDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mAnimProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mRunning:Z

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->isRunning()Z

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    if-nez v2, :cond_0

    .line 113
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mMode:I

    sget v4, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->MODE_UP:I

    if-ne v2, v4, :cond_4

    .line 114
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p1, v3, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_3

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mAnimProgress:F

    invoke-interface {v2, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 120
    iget-boolean v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mClockwise:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_2

    .line 121
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mMode:I

    sget v6, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->MODE_UP:I

    if-ne v4, v6, :cond_1

    goto :goto_0

    :cond_1
    add-float/2addr v2, v5

    :goto_0
    mul-float v2, v2, v3

    goto :goto_2

    .line 127
    :cond_2
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mMode:I

    sget v4, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->MODE_UP:I

    const/high16 v6, -0x3ccc0000    # -180.0f

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    add-float/2addr v2, v5

    :goto_1
    mul-float v2, v2, v6

    .line 133
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 136
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mCurColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 139
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getMode()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mMode:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    .line 100
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 101
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, p1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mSize:I

    int-to-float v4, v2

    sub-float v4, v0, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v2, p1, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mSize:I

    int-to-float v4, v2

    add-float/2addr v0, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 104
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mCurColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 166
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mCurColor:I

    if-eq v0, p1, :cond_0

    .line 167
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mCurColor:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mRunning:Z

    .line 201
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mAnimDuration:I

    return-void
.end method

.method public setArrowSize(I)V
    .locals 1

    .line 75
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mSize:I

    if-eq v0, p1, :cond_0

    .line 76
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mSize:I

    .line 77
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setClockwise(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mClockwise:Z

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 59
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->onStateChange([I)Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setMode(IZ)V
    .locals 1

    .line 82
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mMode:I

    if-eq v0, p1, :cond_1

    .line 83
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mMode:I

    if-eqz p2, :cond_0

    .line 84
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mAnimDuration:I

    if-lez p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->start()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 5

    .line 181
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->resetAnimation()V

    .line 182
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 183
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mRunning:Z

    .line 189
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 190
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ArrowDrawable;->invalidateSelf()V

    return-void
.end method
