.class public Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LineMorphingDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;,
        Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    }
.end annotation


# instance fields
.field private mAnimDuration:I

.field private mAnimProgress:F

.field private mClockwise:Z

.field private mCurState:I

.field private mDrawBound:Landroid/graphics/RectF;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsRtl:Z

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPrevState:I

.field private mRunning:Z

.field private mStartTime:J

.field private mStates:[Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

.field private mStrokeCap:Landroid/graphics/Paint$Cap;

.field private mStrokeColor:I

.field private mStrokeJoin:Landroid/graphics/Paint$Join;

.field private mStrokeSize:I

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>([Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;IIIIIILandroid/view/animation/Interpolator;IILandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;ZZ)V
    .locals 4

    move-object v0, p0

    .line 64
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mRunning:Z

    const/16 v2, 0xc

    .line 40
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaddingLeft:I

    .line 41
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaddingTop:I

    .line 42
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaddingRight:I

    .line 43
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaddingBottom:I

    .line 351
    new-instance v2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$1;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;)V

    iput-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mUpdater:Ljava/lang/Runnable;

    move-object v2, p1

    .line 65
    iput-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStates:[Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

    move v2, p3

    .line 66
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaddingLeft:I

    move v2, p4

    .line 67
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaddingTop:I

    move v2, p5

    .line 68
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaddingRight:I

    move v2, p6

    .line 69
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaddingBottom:I

    move v2, p7

    .line 71
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimDuration:I

    move-object v2, p8

    .line 72
    iput-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    move v2, p9

    .line 73
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStrokeSize:I

    move v2, p10

    .line 74
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStrokeColor:I

    move-object v2, p11

    .line 75
    iput-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStrokeCap:Landroid/graphics/Paint$Cap;

    move-object/from16 v2, p12

    .line 76
    iput-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStrokeJoin:Landroid/graphics/Paint$Join;

    move/from16 v2, p13

    .line 77
    iput-boolean v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mClockwise:Z

    move/from16 v2, p14

    .line 78
    iput-boolean v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mIsRtl:Z

    .line 80
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    .line 81
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStrokeCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 84
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStrokeJoin:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 85
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStrokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStrokeSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mDrawBound:Landroid/graphics/RectF;

    .line 90
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPath:Landroid/graphics/Path;

    move v2, p2

    .line 92
    invoke-virtual {p0, p2, v1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->switchLineState(IZ)V

    return-void
.end method

.method synthetic constructor <init>([Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;IIIIIILandroid/view/animation/Interpolator;IILandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;ZZLcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$1;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p14}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;-><init>([Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;IIIIIILandroid/view/animation/Interpolator;IILandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;ZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->update()V

    return-void
.end method

.method private getX(F)F
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mDrawBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mDrawBound:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getY(F)F
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mDrawBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mDrawBound:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private resetAnimation()V
    .locals 2

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStartTime:J

    const/4 v0, 0x0

    .line 319
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimProgress:F

    return-void
.end method

.method private update()V
    .locals 5

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 362
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 365
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mCurState:I

    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->setLineState(IF)Z

    const/4 v0, 0x0

    .line 366
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mRunning:Z

    goto :goto_0

    .line 369
    :cond_0
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mCurState:I

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->setLineState(IF)Z

    .line 371
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private updatePath()V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 184
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStates:[Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPrevState:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->links:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimProgress:F

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_1

    .line 189
    :cond_1
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStates:[Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mCurState:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->links:[I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimProgress:F

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStates:[Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPrevState:I

    aget-object v2, v1, v2

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mCurState:I

    aget-object v1, v1, v3

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimProgress:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->updatePathBetweenStates(Landroid/graphics/Path;Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;F)V

    goto :goto_2

    .line 190
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStates:[Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mCurState:I

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->updatePathWithState(Landroid/graphics/Path;Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;)V

    goto :goto_2

    .line 188
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStates:[Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPrevState:I

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->updatePathWithState(Landroid/graphics/Path;Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;)V

    .line 194
    :goto_2
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->invalidateSelf()V

    return-void
.end method

.method private updatePathBetweenStates(Landroid/graphics/Path;Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;F)V
    .locals 10

    .line 263
    iget-object p1, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    array-length p1, p1

    iget-object v0, p3, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    mul-int/lit8 v1, v0, 0x4

    .line 272
    iget-object v2, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    array-length v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    if-lt v1, v2, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_1

    .line 279
    :cond_0
    iget-object v2, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    aget v2, v2, v1

    .line 280
    iget-object v4, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    .line 281
    iget-object v5, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v6, v1, 0x2

    aget v5, v5, v6

    .line 282
    iget-object v6, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v7, v1, 0x3

    aget v6, v6, v7

    .line 289
    :goto_1
    iget-object v7, p3, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    array-length v7, v7

    if-lt v1, v7, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_2

    .line 296
    :cond_1
    iget-object v3, p3, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    aget v3, v3, v1

    .line 297
    iget-object v7, p3, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v8, v1, 0x1

    aget v7, v7, v8

    .line 298
    iget-object v8, p3, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v9, v1, 0x2

    aget v8, v8, v9

    .line 299
    iget-object v9, p3, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v1, v1, 0x3

    aget v1, v9, v1

    .line 302
    :goto_2
    iget-object v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPath:Landroid/graphics/Path;

    sub-float/2addr v3, v2

    mul-float v3, v3, p4

    add-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getX(F)F

    move-result v2

    sub-float/2addr v7, v4

    mul-float v7, v7, p4

    add-float/2addr v4, v7

    invoke-direct {p0, v4}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getY(F)F

    move-result v3

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 303
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPath:Landroid/graphics/Path;

    sub-float/2addr v8, v5

    mul-float v8, v8, p4

    add-float/2addr v5, v8

    invoke-direct {p0, v5}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getX(F)F

    move-result v3

    sub-float/2addr v1, v6

    mul-float v1, v1, p4

    add-float/2addr v6, v1

    invoke-direct {p0, v6}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getY(F)F

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updatePathWithState(Landroid/graphics/Path;Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;)V
    .locals 11

    .line 198
    iget-object v0, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->links:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 199
    :goto_0
    iget-object v2, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->links:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 200
    iget-object v2, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->links:[I

    aget v2, v2, v0

    mul-int/lit8 v2, v2, 0x4

    .line 201
    iget-object v3, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->links:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    mul-int/lit8 v3, v3, 0x4

    .line 203
    iget-object v4, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    aget v4, v4, v2

    invoke-direct {p0, v4}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getX(F)F

    move-result v4

    .line 204
    iget-object v5, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    invoke-direct {p0, v5}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getY(F)F

    move-result v5

    .line 205
    iget-object v6, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v7, v2, 0x2

    aget v6, v6, v7

    invoke-direct {p0, v6}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getX(F)F

    move-result v6

    .line 206
    iget-object v7, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v2, v2, 0x3

    aget v2, v7, v2

    invoke-direct {p0, v2}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getY(F)F

    move-result v2

    .line 208
    iget-object v7, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    aget v7, v7, v3

    invoke-direct {p0, v7}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getX(F)F

    move-result v7

    .line 209
    iget-object v8, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v9, v3, 0x1

    aget v8, v8, v9

    invoke-direct {p0, v8}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getY(F)F

    move-result v8

    .line 210
    iget-object v9, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v10, v3, 0x2

    aget v9, v9, v10

    invoke-direct {p0, v9}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getX(F)F

    move-result v9

    .line 211
    iget-object v10, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v3, v3, 0x3

    aget v3, v10, v3

    invoke-direct {p0, v3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getY(F)F

    move-result v3

    cmpl-float v10, v4, v7

    if-nez v10, :cond_0

    cmpl-float v10, v5, v8

    if-nez v10, :cond_0

    .line 214
    invoke-virtual {p1, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 215
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 216
    invoke-virtual {p1, v9, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_0
    cmpl-float v10, v4, v9

    if-nez v10, :cond_1

    cmpl-float v10, v5, v3

    if-nez v10, :cond_1

    .line 219
    invoke-virtual {p1, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 220
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_1
    cmpl-float v10, v6, v7

    if-nez v10, :cond_2

    cmpl-float v10, v2, v8

    if-nez v10, :cond_2

    .line 224
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    invoke-virtual {p1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    invoke-virtual {p1, v9, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 229
    :cond_2
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 230
    invoke-virtual {p1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 231
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 235
    :cond_3
    iget-object v0, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_7

    const/4 v3, 0x0

    .line 237
    :goto_3
    iget-object v4, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->links:[I

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 238
    iget-object v4, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->links:[I

    aget v4, v4, v3

    if-ne v4, v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    mul-int/lit8 v3, v2, 0x4

    .line 248
    iget-object v4, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    aget v4, v4, v3

    invoke-direct {p0, v4}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getX(F)F

    move-result v4

    iget-object v5, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    invoke-direct {p0, v5}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getY(F)F

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 249
    iget-object v4, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v5, v3, 0x2

    aget v4, v4, v5

    invoke-direct {p0, v4}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getX(F)F

    move-result v4

    iget-object v5, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v3, v3, 0x3

    aget v3, v5, v3

    invoke-direct {p0, v3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getY(F)F

    move-result v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 253
    :cond_6
    iget-object v0, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    :goto_5
    if-ge v1, v0, :cond_7

    mul-int/lit8 v2, v1, 0x4

    .line 256
    iget-object v3, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    aget v3, v3, v2

    invoke-direct {p0, v3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getX(F)F

    move-result v3

    iget-object v4, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    invoke-direct {p0, v4}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getY(F)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 257
    iget-object v3, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v4, v2, 0x2

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getX(F)F

    move-result v3

    iget-object v4, p2, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    add-int/lit8 v2, v2, 0x3

    aget v2, v4, v2

    invoke-direct {p0, v2}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getY(F)F

    move-result v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 98
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mClockwise:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xb4

    goto :goto_0

    :cond_0
    const/16 v1, -0xb4

    :goto_0
    int-to-float v1, v1

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPrevState:I

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mCurState:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimProgress:F

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    .line 100
    iget-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mIsRtl:Z

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mDrawBound:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mDrawBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {p1, v5, v4, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mDrawBound:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mDrawBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 104
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getAnimProgress()F
    .locals 1

    .line 178
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimProgress:F

    return v0
.end method

.method public getLineState()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mCurState:I

    return v0
.end method

.method public getLineStateCount()I
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mStates:[Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .line 125
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 127
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mDrawBound:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaddingLeft:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 128
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mDrawBound:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaddingTop:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 129
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mDrawBound:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 130
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mDrawBound:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaddingBottom:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 132
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->updatePath()V

    return-void
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mRunning:Z

    .line 348
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setLineState(IF)Z
    .locals 2

    .line 153
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mCurState:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    .line 154
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPrevState:I

    .line 155
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mCurState:I

    .line 156
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimProgress:F

    .line 157
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->updatePath()V

    return v1

    .line 160
    :cond_0
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimProgress:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 161
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimProgress:F

    .line 162
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->updatePath()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public start()V
    .locals 5

    .line 324
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->resetAnimation()V

    .line 326
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 327
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 332
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 335
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mRunning:Z

    .line 336
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 337
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->invalidateSelf()V

    return-void
.end method

.method public switchLineState(IZ)V
    .locals 2

    .line 136
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mCurState:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq v0, p1, :cond_1

    .line 137
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mPrevState:I

    .line 138
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mCurState:I

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->start()V

    goto :goto_0

    .line 142
    :cond_0
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimProgress:F

    .line 143
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->updatePath()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 147
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->mAnimProgress:F

    .line 148
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->updatePath()V

    :cond_2
    :goto_0
    return-void
.end method
