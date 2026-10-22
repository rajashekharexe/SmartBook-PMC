.class public Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LinearProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;
    }
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x2

.field public static final ALIGN_CENTER:I = 0x1

.field public static final ALIGN_TOP:I = 0x0

.field private static final PROGRESS_STATE_KEEP_SHRINK:I = 0x3

.field private static final PROGRESS_STATE_KEEP_STRETCH:I = 0x1

.field private static final PROGRESS_STATE_SHRINK:I = 0x2

.field private static final PROGRESS_STATE_STRETCH:I = 0x0

.field private static final RUN_STATE_RUNNING:I = 0x3

.field private static final RUN_STATE_STARTED:I = 0x2

.field private static final RUN_STATE_STARTING:I = 0x1

.field private static final RUN_STATE_STOPPED:I = 0x0

.field private static final RUN_STATE_STOPPING:I = 0x4


# instance fields
.field private mAnimTime:F

.field private mInAnimationDuration:I

.field private mKeepDuration:I

.field private mLastProgressStateTime:J

.field private mLastRunStateTime:J

.field private mLastUpdateTime:J

.field private mLineWidth:F

.field private mMaxLineWidth:I

.field private mMaxLineWidthPercent:F

.field private mMinLineWidth:I

.field private mMinLineWidthPercent:F

.field private mOutAnimationDuration:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPathEffect:Landroid/graphics/DashPathEffect;

.field private mProgressMode:I

.field private mProgressPercent:F

.field private mProgressState:I

.field private mReverse:Z

.field private mRunState:I

.field private mSecondaryProgressPercent:F

.field private mStartLine:F

.field private mStrokeColorIndex:I

.field private mStrokeColors:[I

.field private mStrokeSecondaryColor:I

.field private mStrokeSize:I

.field private mTransformDuration:I

.field private mTransformInterpolator:Landroid/view/animation/Interpolator;

.field private mTravelDuration:I

.field private final mUpdater:Ljava/lang/Runnable;

.field private mVerticalAlign:I


# direct methods
.method private constructor <init>(FFIFIFII[IIZIIILandroid/view/animation/Interpolator;III)V
    .locals 3

    move-object v0, p0

    .line 81
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v1, 0x0

    .line 41
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    .line 636
    new-instance v1, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$1;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;)V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 82
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->setProgress(F)V

    move v1, p2

    .line 83
    invoke-virtual {p0, p2}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->setSecondaryProgress(F)V

    move v1, p3

    .line 84
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidth:I

    move v1, p4

    .line 85
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidthPercent:F

    move v1, p5

    .line 86
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidth:I

    move v1, p6

    .line 87
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidthPercent:F

    move v1, p7

    .line 88
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    move v1, p8

    .line 89
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mVerticalAlign:I

    move-object v1, p9

    .line 90
    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    move v1, p10

    .line 91
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSecondaryColor:I

    move v1, p11

    .line 92
    iput-boolean v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    move v1, p12

    .line 93
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTravelDuration:I

    move/from16 v1, p13

    .line 94
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformDuration:I

    move/from16 v1, p14

    .line 95
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mKeepDuration:I

    move-object/from16 v1, p15

    .line 96
    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v1, p16

    .line 97
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressMode:I

    move/from16 v1, p17

    .line 98
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    move/from16 v1, p18

    .line 99
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    .line 101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 102
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 104
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 106
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(FFIFIFII[IIZIIILandroid/view/animation/Interpolator;IIILcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$1;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p18}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;-><init>(FFIFIFII[IIZIIILandroid/view/animation/Interpolator;III)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->update()V

    return-void
.end method

.method private drawBuffer(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v7, p0

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 385
    iget v2, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    const/4 v8, 0x0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 386
    iget v2, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v2, v2

    iget v4, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    int-to-long v4, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v9, v11

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v2, v2, v4

    iget v4, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    :goto_0
    int-to-float v4, v4

    div-float/2addr v2, v4

    :goto_1
    move v9, v2

    goto :goto_2

    :cond_0
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 388
    iget v2, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v2, v2

    iget v4, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    int-to-long v4, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v4, v9

    iget-wide v9, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    add-long/2addr v4, v9

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v2, v2, v4

    iget v4, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 390
    iget v2, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v2, v2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_2
    cmpl-float v2, v9, v8

    if-lez v2, :cond_a

    int-to-float v10, v1

    .line 394
    iget v1, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressPercent:F

    mul-float v11, v10, v1

    .line 395
    iget v1, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mSecondaryProgressPercent:F

    mul-float v12, v10, v1

    .line 397
    iget v1, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mVerticalAlign:I

    const/4 v13, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v13, :cond_3

    const/4 v14, 0x0

    goto :goto_4

    .line 405
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v1, v9, v2

    sub-float/2addr v0, v1

    goto :goto_3

    .line 402
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_3

    :cond_5
    div-float v0, v9, v2

    :goto_3
    move v14, v0

    .line 409
    :goto_4
    iget-object v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 411
    iget v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressPercent:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 412
    iget-object v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 413
    iget-object v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSecondaryColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    iget-object v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 416
    iget-boolean v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v0, :cond_6

    sub-float v2, v10, v12

    sub-float v4, v10, v11

    .line 417
    iget-object v6, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v14

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 419
    :cond_6
    iget-object v6, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v14

    move v4, v11

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 421
    :goto_5
    iget-object v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 422
    iget-object v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 423
    iget v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    sub-float/2addr v0, v1

    .line 425
    iget-boolean v1, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v1, :cond_7

    neg-float v2, v0

    sub-float v4, v10, v12

    .line 426
    iget-object v6, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v14

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_7
    add-float v2, v10, v0

    .line 428
    iget-object v6, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v14

    move v4, v12

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 431
    :cond_8
    :goto_6
    iget v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressPercent:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_a

    .line 432
    iget-object v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 433
    iget-object v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    iget-object v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 436
    iget-boolean v0, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v0, :cond_9

    sub-float v2, v10, v11

    .line 437
    iget-object v6, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v14

    move v4, v10

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    .line 439
    iget-object v6, v7, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v14

    move v4, v11

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    :cond_a
    :goto_7
    return-void
.end method

.method private drawDeterminate(Landroid/graphics/Canvas;)V
    .locals 13

    .line 219
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 223
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 224
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v2, v2

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    int-to-long v5, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-float v5, v5

    mul-float v2, v2, v5

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    :goto_0
    int-to-float v5, v5

    div-float/2addr v2, v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    .line 226
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v2, v2

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    int-to-long v5, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    long-to-float v5, v5

    mul-float v2, v2, v5

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 228
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v2, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    cmpl-float v5, v2, v3

    if-lez v5, :cond_9

    int-to-float v1, v1

    .line 232
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressPercent:F

    mul-float v5, v5, v1

    .line 234
    iget v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mVerticalAlign:I

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v6, :cond_5

    if-eq v6, v4, :cond_4

    const/4 v4, 0x2

    if-eq v6, v4, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 242
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v2, v7

    sub-float/2addr v0, v4

    goto :goto_2

    .line 239
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    goto :goto_2

    :cond_5
    div-float v0, v2, v7

    .line 246
    :goto_2
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 247
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressPercent:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_7

    .line 250
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSecondaryColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    iget-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v2, :cond_6

    sub-float v9, v1, v5

    .line 253
    iget-object v11, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v6, p1

    move v8, v0

    move v10, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 255
    :cond_6
    iget-object v11, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v5

    move v8, v0

    move v9, v1

    move v10, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 258
    :cond_7
    :goto_3
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressPercent:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_9

    .line 259
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v2, :cond_8

    sub-float v8, v1, v5

    .line 261
    iget-object v12, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v6, p0

    move-object v7, p1

    move v9, v0

    move v10, v1

    move v11, v0

    invoke-direct/range {v6 .. v12}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    .line 263
    iget-object v12, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v6, p0

    move-object v7, p1

    move v9, v0

    move v10, v5

    move v11, v0

    invoke-direct/range {v6 .. v12}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private drawIndeterminate(Landroid/graphics/Canvas;)V
    .locals 11

    .line 279
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 283
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 284
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v2, v2

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    int-to-long v5, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-float v5, v5

    mul-float v2, v2, v5

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    :goto_0
    int-to-float v5, v5

    div-float/2addr v2, v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    .line 286
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v2, v2

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    int-to-long v5, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    long-to-float v5, v5

    mul-float v2, v2, v5

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 288
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v2, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    cmpl-float v5, v2, v3

    if-lez v5, :cond_11

    .line 293
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mVerticalAlign:I

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_5

    if-eq v5, v4, :cond_4

    const/4 v4, 0x2

    if-eq v5, v4, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 301
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v2, v6

    sub-float/2addr v0, v4

    goto :goto_2

    .line 298
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    goto :goto_2

    :cond_5
    div-float v0, v2, v6

    .line 305
    :goto_2
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 306
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 308
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    int-to-float v1, v1

    invoke-direct {p0, v2, v4, v1}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->offset(FFF)F

    move-result v2

    .line 310
    iget-boolean v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v4, :cond_b

    .line 311
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_8

    .line 312
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSecondaryColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6

    const/4 v5, 0x0

    .line 314
    iget-object v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v7, v2

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 315
    :cond_6
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    cmpg-float v3, v5, v1

    if-gez v3, :cond_7

    .line 316
    iget-object v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v7, v1

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 318
    :cond_7
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getIndeterminateStrokeColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    iget v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    iget-object v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v0

    move v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 322
    :cond_8
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSecondaryColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    iget-object v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v7, v2

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 325
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getIndeterminateStrokeColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 328
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_9

    .line 329
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 330
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_9
    cmpg-float v3, v2, v1

    if-gez v3, :cond_a

    .line 333
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 334
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 337
    :cond_a
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 341
    :cond_b
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_e

    .line 342
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSecondaryColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    iget v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    cmpl-float v3, v7, v3

    if-lez v3, :cond_c

    const/4 v5, 0x0

    .line 344
    iget-object v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_c
    cmpg-float v3, v2, v1

    if-gez v3, :cond_d

    .line 346
    iget-object v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v2

    move v6, v0

    move v7, v1

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 348
    :cond_d
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getIndeterminateStrokeColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    iget v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    iget-object v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    move v7, v0

    move v8, v2

    move v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 352
    :cond_e
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSecondaryColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    iget v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    iget-object v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v2

    move v6, v0

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 355
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getIndeterminateStrokeColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    cmpl-float v4, v2, v3

    if-lez v4, :cond_f

    .line 359
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 360
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 362
    :cond_f
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    cmpg-float v3, v2, v1

    if-gez v3, :cond_10

    .line 363
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 364
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 367
    :cond_10
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_11
    :goto_3
    return-void
.end method

.method private drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 213
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 214
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 215
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawQuery(Landroid/graphics/Canvas;)V
    .locals 11

    .line 449
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 453
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 454
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v2, v2

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    int-to-long v5, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-float v5, v5

    mul-float v2, v2, v5

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    :goto_0
    int-to-float v5, v5

    div-float/2addr v2, v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    .line 456
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v2, v2

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    int-to-long v5, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    long-to-float v5, v5

    mul-float v2, v2, v5

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 458
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v2, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    cmpl-float v5, v2, v3

    if-lez v5, :cond_8

    .line 463
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mVerticalAlign:I

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_5

    if-eq v5, v4, :cond_4

    const/4 v4, 0x2

    if-eq v5, v4, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 471
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v2, v6

    sub-float/2addr v0, v4

    goto :goto_2

    .line 468
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    goto :goto_2

    :cond_5
    div-float v0, v2, v6

    .line 475
    :goto_2
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 476
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 478
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressPercent:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_6

    .line 479
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSecondaryColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v1

    .line 480
    iget-object v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v4, p1

    move v6, v0

    move v7, v2

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 482
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mAnimTime:F

    cmpg-float v4, v4, v10

    if-gez v4, :cond_6

    .line 483
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    add-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 484
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getQueryStrokeColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    iget v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    iget-object v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    move v7, v0

    move v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 489
    :cond_6
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressPercent:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_8

    int-to-float v8, v1

    mul-float v1, v8, v2

    .line 491
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    iget-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v2, :cond_7

    sub-float v6, v8, v1

    .line 494
    iget-object v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    move v7, v0

    move v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 496
    iget-object v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    move v7, v0

    move v8, v1

    move v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawLinePath(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private getIndeterminateStrokeColor()I
    .locals 6

    .line 269
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 272
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mKeepDuration:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 273
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColorIndex:I

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, -0x1

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    aget v3, v1, v3

    aget v1, v1, v2

    invoke-static {v3, v1, v0}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getMiddleColor(IIF)I

    move-result v0

    return v0

    .line 270
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method private getPathEffect()Landroid/graphics/PathEffect;
    .locals 5

    .line 374
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPathEffect:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Landroid/graphics/DashPathEffect;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    new-array v2, v2, [F

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPathEffect:Landroid/graphics/DashPathEffect;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPathEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method private getQueryStrokeColor()I
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mAnimTime:F

    invoke-static {v0, v1}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getColor(IF)I

    move-result v0

    return v0
.end method

.method private offset(FFF)F
    .locals 0

    add-float/2addr p1, p2

    cmpl-float p2, p1, p3

    if-lez p2, :cond_0

    sub-float/2addr p1, p3

    return p1

    :cond_0
    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    add-float/2addr p3, p1

    return p3

    :cond_1
    return p1
.end method

.method private resetAnimation()V
    .locals 4

    .line 561
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastUpdateTime:J

    .line 562
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    .line 563
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 564
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    :cond_0
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    .line 565
    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColorIndex:I

    .line 566
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidth:I

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidth:I

    :goto_0
    int-to-float v0, v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    .line 567
    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 570
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 573
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    :cond_4
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    .line 574
    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColorIndex:I

    .line 575
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidth:I

    neg-int v0, v0

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidth:I

    :goto_1
    int-to-float v0, v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    :cond_6
    :goto_2
    return-void
.end method

.method private start(Z)V
    .locals 4

    .line 590
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 594
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    .line 595
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    .line 598
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->resetAnimation()V

    .line 600
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 601
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private stop(Z)V
    .locals 4

    .line 605
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    .line 611
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 612
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 613
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->invalidateSelf()V

    :cond_1
    const/4 p1, 0x4

    .line 615
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 618
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    .line 619
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 620
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->invalidateSelf()V

    :goto_0
    return-void
.end method

.method private update()V
    .locals 2

    .line 646
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressMode:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->updateQuery()V

    goto :goto_0

    .line 654
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->updateBuffer()V

    goto :goto_0

    .line 651
    :cond_2
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->updateIndeterminate()V

    goto :goto_0

    .line 648
    :cond_3
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->updateDeterminate()V

    :goto_0
    return-void
.end method

.method private updateBuffer()V
    .locals 12

    .line 796
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 797
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 798
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    iget-wide v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastUpdateTime:J

    sub-long v5, v0, v5

    long-to-float v5, v5

    mul-float v5, v5, v2

    iget v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTravelDuration:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    .line 799
    :goto_0
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    cmpl-float v5, v4, v2

    if-lez v5, :cond_0

    sub-float/2addr v4, v2

    .line 800
    iput v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    goto :goto_0

    .line 801
    :cond_0
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastUpdateTime:J

    .line 803
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v3, :cond_2

    if-eq v2, v6, :cond_1

    goto/16 :goto_1

    .line 843
    :cond_1
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    sub-long v2, v0, v2

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mKeepDuration:I

    int-to-long v8, v5

    cmp-long v5, v2, v8

    if-lez v5, :cond_7

    .line 844
    iput v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    .line 845
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    goto :goto_1

    .line 827
    :cond_2
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformDuration:I

    if-gtz v2, :cond_3

    .line 828
    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    .line 829
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    goto :goto_1

    .line 832
    :cond_3
    iget-wide v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    sub-long v8, v0, v8

    long-to-float v3, v8

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 833
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v5, v2

    iget v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v8, v8

    mul-float v2, v2, v8

    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    cmpl-float v2, v3, v5

    if-lez v2, :cond_7

    const/4 v2, 0x0

    .line 836
    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    .line 837
    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    .line 838
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    goto :goto_1

    .line 821
    :cond_4
    iget-wide v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    sub-long v8, v0, v8

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mKeepDuration:I

    int-to-long v10, v2

    cmp-long v2, v8, v10

    if-lez v2, :cond_7

    .line 822
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    .line 823
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    goto :goto_1

    .line 805
    :cond_5
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformDuration:I

    if-gtz v2, :cond_6

    .line 806
    iput v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    .line 807
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    goto :goto_1

    .line 810
    :cond_6
    iget-wide v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    sub-long v8, v0, v8

    long-to-float v3, v8

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 811
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    int-to-float v9, v8

    mul-float v2, v2, v9

    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    cmpl-float v2, v3, v5

    if-lez v2, :cond_7

    int-to-float v2, v8

    .line 814
    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    .line 815
    iput v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    .line 816
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    .line 850
    :cond_7
    :goto_1
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    if-ne v2, v7, :cond_8

    .line 851
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    .line 852
    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    goto :goto_2

    :cond_8
    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 855
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    int-to-long v2, v2

    cmp-long v5, v0, v2

    if-lez v5, :cond_9

    .line 856
    invoke-direct {p0, v4}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->stop(Z)V

    return-void

    .line 861
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 862
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 864
    :cond_a
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateDeterminate()V
    .locals 5

    .line 663
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 665
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 666
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v0, 0x2

    .line 667
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    return-void

    :cond_0
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 672
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v0, 0x0

    .line 673
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->stop(Z)V

    return-void

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 681
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateIndeterminate()V
    .locals 13

    .line 694
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 695
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 697
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 698
    iget-wide v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastUpdateTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    int-to-float v0, v0

    mul-float v3, v3, v0

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTravelDuration:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 699
    iget-boolean v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v4, :cond_0

    neg-float v3, v3

    .line 701
    :cond_0
    iput-wide v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastUpdateTime:J

    .line 703
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v5, :cond_b

    const/4 v10, 0x2

    if-eq v5, v9, :cond_a

    if-eq v5, v10, :cond_2

    if-eq v5, v8, :cond_1

    goto/16 :goto_6

    .line 769
    :cond_1
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    invoke-direct {p0, v4, v3, v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->offset(FFF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    .line 771
    iget-wide v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    sub-long v3, v1, v3

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mKeepDuration:I

    int-to-long v10, v0

    cmp-long v0, v3, v10

    if-lez v0, :cond_13

    .line 772
    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    .line 773
    iput-wide v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    goto/16 :goto_6

    .line 739
    :cond_2
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformDuration:I

    if-gtz v5, :cond_5

    .line 740
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidth:I

    if-nez v5, :cond_3

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidthPercent:F

    mul-float v5, v5, v0

    goto :goto_0

    :cond_3
    int-to-float v5, v5

    :goto_0
    iput v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    if-eqz v4, :cond_4

    neg-float v4, v5

    .line 742
    iput v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    .line 743
    :cond_4
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    invoke-direct {p0, v4, v3, v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->offset(FFF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    .line 744
    iput v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    .line 745
    iput-wide v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    .line 746
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColorIndex:I

    add-int/2addr v0, v9

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    array-length v3, v3

    rem-int/2addr v0, v3

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColorIndex:I

    goto/16 :goto_6

    .line 749
    :cond_5
    iget-wide v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    sub-long v10, v1, v10

    long-to-float v4, v10

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 750
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidth:I

    if-nez v5, :cond_6

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidthPercent:F

    mul-float v5, v5, v0

    goto :goto_1

    :cond_6
    int-to-float v5, v5

    .line 751
    :goto_1
    iget v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidth:I

    if-nez v10, :cond_7

    iget v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidthPercent:F

    mul-float v10, v10, v0

    goto :goto_2

    :cond_7
    int-to-float v10, v10

    .line 753
    :goto_2
    iget-object v11, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v11, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    sub-float v11, v7, v11

    sub-float/2addr v5, v10

    mul-float v11, v11, v5

    add-float/2addr v11, v10

    .line 754
    iget-boolean v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v5, :cond_8

    neg-float v11, v11

    .line 757
    :cond_8
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    iget v12, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    add-float/2addr v3, v12

    sub-float/2addr v3, v11

    invoke-direct {p0, v5, v3, v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->offset(FFF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    .line 758
    iput v11, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    cmpl-float v0, v4, v7

    if-lez v0, :cond_13

    .line 761
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v0, :cond_9

    neg-float v10, v10

    :cond_9
    iput v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    .line 762
    iput v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    .line 763
    iput-wide v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    .line 764
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColorIndex:I

    add-int/2addr v0, v9

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    array-length v3, v3

    rem-int/2addr v0, v3

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColorIndex:I

    goto/16 :goto_6

    .line 731
    :cond_a
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    invoke-direct {p0, v4, v3, v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->offset(FFF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    .line 733
    iget-wide v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    sub-long v3, v1, v3

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mKeepDuration:I

    int-to-long v11, v0

    cmp-long v0, v3, v11

    if-lez v0, :cond_13

    .line 734
    iput v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    .line 735
    iput-wide v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    goto :goto_6

    .line 705
    :cond_b
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformDuration:I

    if-gtz v5, :cond_e

    .line 706
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidth:I

    if-nez v5, :cond_c

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidthPercent:F

    mul-float v5, v5, v0

    goto :goto_3

    :cond_c
    int-to-float v5, v5

    :goto_3
    iput v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    if-eqz v4, :cond_d

    neg-float v4, v5

    .line 708
    iput v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    .line 709
    :cond_d
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    invoke-direct {p0, v4, v3, v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->offset(FFF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    .line 710
    iput v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    .line 711
    iput-wide v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    goto :goto_6

    .line 714
    :cond_e
    iget-wide v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    sub-long v10, v1, v10

    long-to-float v4, v10

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 715
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidth:I

    if-nez v5, :cond_f

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidthPercent:F

    mul-float v5, v5, v0

    goto :goto_4

    :cond_f
    int-to-float v5, v5

    .line 716
    :goto_4
    iget v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidth:I

    if-nez v10, :cond_10

    iget v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidthPercent:F

    mul-float v10, v10, v0

    goto :goto_5

    :cond_10
    int-to-float v10, v10

    .line 718
    :goto_5
    iget v11, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    invoke-direct {p0, v11, v3, v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->offset(FFF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    .line 719
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float v3, v5, v10

    mul-float v0, v0, v3

    add-float/2addr v0, v10

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    .line 720
    iget-boolean v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v3, :cond_11

    neg-float v0, v0

    .line 721
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    :cond_11
    cmpl-float v0, v4, v7

    if-lez v0, :cond_13

    if-eqz v3, :cond_12

    neg-float v5, v5

    .line 724
    :cond_12
    iput v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    .line 725
    iput v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressState:I

    .line 726
    iput-wide v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    .line 778
    :cond_13
    :goto_6
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    if-ne v0, v9, :cond_14

    .line 779
    iget-wide v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v1, v3

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-lez v0, :cond_15

    .line 780
    iput v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    goto :goto_7

    :cond_14
    const/4 v3, 0x4

    if-ne v0, v3, :cond_15

    .line 783
    iget-wide v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v1, v3

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-lez v0, :cond_15

    .line 784
    invoke-direct {p0, v6}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->stop(Z)V

    return-void

    .line 789
    :cond_15
    :goto_7
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 790
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 792
    :cond_16
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateQuery()V
    .locals 12

    .line 868
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 869
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTravelDuration:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mAnimTime:F

    .line 870
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x4

    if-eq v4, v8, :cond_1

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressPercent:F

    const/4 v9, 0x0

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_1

    cmpg-float v4, v2, v7

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    cmpl-float v9, v2, v7

    if-lez v9, :cond_2

    long-to-float v9, v0

    sub-float/2addr v2, v7

    int-to-float v3, v3

    mul-float v2, v2, v3

    sub-float/2addr v9, v2

    .line 873
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastProgressStateTime:J

    .line 874
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mAnimTime:F

    sub-float/2addr v2, v7

    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mAnimTime:F

    :cond_2
    if-eqz v4, :cond_7

    .line 877
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    if-eq v2, v8, :cond_7

    .line 878
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 879
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 881
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidth:I

    if-nez v3, :cond_3

    int-to-float v3, v2

    iget v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidthPercent:F

    mul-float v3, v3, v9

    goto :goto_2

    :cond_3
    int-to-float v3, v3

    .line 882
    :goto_2
    iget v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidth:I

    if-nez v9, :cond_4

    int-to-float v9, v2

    iget v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidthPercent:F

    mul-float v9, v9, v10

    goto :goto_3

    :cond_4
    int-to-float v9, v9

    .line 883
    :goto_3
    iget-object v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    iget v11, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mAnimTime:F

    invoke-interface {v10, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    sub-float v11, v9, v3

    mul-float v10, v10, v11

    add-float/2addr v10, v3

    iput v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    .line 884
    iget-boolean v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    if-eqz v3, :cond_5

    neg-float v10, v10

    .line 885
    iput v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLineWidth:F

    :cond_5
    if-eqz v3, :cond_6

    .line 887
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    iget v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mAnimTime:F

    invoke-interface {v3, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    int-to-float v2, v2

    add-float/2addr v2, v9

    mul-float v3, v3, v2

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    iget v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mAnimTime:F

    invoke-interface {v3, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v7, v3

    int-to-float v2, v2

    add-float/2addr v2, v9

    mul-float v7, v7, v2

    sub-float v3, v7, v9

    :goto_4
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStartLine:F

    .line 890
    :cond_7
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    const/4 v3, 0x3

    if-ne v2, v6, :cond_8

    .line 891
    iget-wide v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v0, v5

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    int-to-long v5, v2

    cmp-long v2, v0, v5

    if-lez v2, :cond_9

    .line 892
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    goto :goto_5

    :cond_8
    if-ne v2, v8, :cond_9

    .line 895
    iget-wide v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v0, v6

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    int-to-long v6, v2

    cmp-long v2, v0, v6

    if-lez v2, :cond_9

    .line 896
    invoke-direct {p0, v5}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->stop(Z)V

    return-void

    .line 901
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v4, :cond_a

    .line 903
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_6

    .line 904
    :cond_a
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    if-ne v0, v3, :cond_b

    const/4 v0, 0x2

    .line 905
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    .line 908
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public applyStyle(Landroid/content/Context;I)V
    .locals 11

    .line 110
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 116
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_14

    .line 117
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 119
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_pv_progress:I

    const/4 v8, 0x0

    if-ne v6, v7, :cond_0

    .line 120
    invoke-virtual {p2, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->setProgress(F)V

    goto/16 :goto_2

    .line 121
    :cond_0
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_pv_secondaryProgress:I

    if-ne v6, v7, :cond_1

    .line 122
    invoke-virtual {p2, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->setSecondaryProgress(F)V

    goto/16 :goto_2

    .line 123
    :cond_1
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_maxLineWidth:I

    const/4 v9, 0x6

    const/4 v10, 0x1

    if-ne v6, v7, :cond_3

    .line 124
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    .line 125
    iget v7, v7, Landroid/util/TypedValue;->type:I

    if-ne v7, v9, :cond_2

    const/high16 v7, 0x3f400000    # 0.75f

    .line 126
    invoke-virtual {p2, v6, v10, v10, v7}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidthPercent:F

    .line 127
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidth:I

    goto/16 :goto_2

    .line 130
    :cond_2
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidth:I

    .line 131
    iput v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMaxLineWidthPercent:F

    goto/16 :goto_2

    .line 134
    :cond_3
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_minLineWidth:I

    if-ne v6, v7, :cond_5

    .line 135
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    .line 136
    iget v7, v7, Landroid/util/TypedValue;->type:I

    if-ne v7, v9, :cond_4

    const/high16 v7, 0x3e800000    # 0.25f

    .line 137
    invoke-virtual {p2, v6, v10, v10, v7}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidthPercent:F

    .line 138
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidth:I

    goto/16 :goto_2

    .line 141
    :cond_4
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidth:I

    .line 142
    iput v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mMinLineWidthPercent:F

    goto/16 :goto_2

    .line 145
    :cond_5
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_strokeSize:I

    if-ne v6, v7, :cond_6

    .line 146
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSize:I

    goto/16 :goto_2

    .line 147
    :cond_6
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_verticalAlign:I

    if-ne v6, v7, :cond_7

    .line 148
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mVerticalAlign:I

    goto/16 :goto_2

    .line 149
    :cond_7
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_strokeColor:I

    if-ne v6, v7, :cond_8

    .line 150
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const/4 v4, 0x1

    goto/16 :goto_2

    .line 153
    :cond_8
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_strokeColors:I

    if-ne v6, v7, :cond_a

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    new-array v6, v6, [I

    const/4 v7, 0x0

    .line 156
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 157
    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 158
    :cond_9
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move-object v2, v6

    goto/16 :goto_2

    .line 160
    :cond_a
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_strokeSecondaryColor:I

    if-ne v6, v7, :cond_b

    .line 161
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeSecondaryColor:I

    goto :goto_2

    .line 162
    :cond_b
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_reverse:I

    if-ne v6, v7, :cond_c

    .line 163
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mReverse:Z

    goto :goto_2

    .line 164
    :cond_c
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_travelDuration:I

    if-ne v6, v7, :cond_d

    .line 165
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTravelDuration:I

    goto :goto_2

    .line 166
    :cond_d
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_transformDuration:I

    if-ne v6, v7, :cond_e

    .line 167
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformDuration:I

    goto :goto_2

    .line 168
    :cond_e
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_keepDuration:I

    if-ne v6, v7, :cond_f

    .line 169
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mKeepDuration:I

    goto :goto_2

    .line 170
    :cond_f
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_transformInterpolator:I

    if-ne v6, v7, :cond_10

    .line 171
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    iput-object v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_2

    .line 172
    :cond_10
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_pv_progressMode:I

    if-ne v6, v7, :cond_11

    .line 173
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressMode:I

    goto :goto_2

    .line 174
    :cond_11
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_inAnimDuration:I

    if-ne v6, v7, :cond_12

    .line 175
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    goto :goto_2

    .line 176
    :cond_12
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->LinearProgressDrawable_lpd_outAnimDuration:I

    if-ne v6, v7, :cond_13

    .line 177
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    :cond_13
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 180
    :cond_14
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_15

    .line 183
    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    goto :goto_3

    :cond_15
    if-eqz v4, :cond_16

    .line 185
    filled-new-array {v5}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    .line 187
    :cond_16
    :goto_3
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColorIndex:I

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColors:[I

    array-length p2, p2

    if-lt p1, p2, :cond_17

    .line 188
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mStrokeColorIndex:I

    .line 190
    :cond_17
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 195
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressMode:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawQuery(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 203
    :cond_1
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawBuffer(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 200
    :cond_2
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawIndeterminate(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 197
    :cond_3
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->drawDeterminate(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 529
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressPercent:F

    return v0
.end method

.method public getProgressMode()I
    .locals 1

    .line 518
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressMode:I

    return v0
.end method

.method public getSecondaryProgress()F
    .locals 1

    .line 533
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mSecondaryProgressPercent:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 626
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .line 631
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    if-nez v0, :cond_1

    .line 632
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mRunState:I

    .line 633
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    const/4 v0, 0x0

    .line 537
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 538
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressPercent:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 539
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressPercent:F

    .line 540
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->invalidateSelf()V

    goto :goto_0

    .line 542
    :cond_0
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressPercent:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setProgressMode(I)V
    .locals 1

    .line 522
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressMode:I

    if-eq v0, p1, :cond_0

    .line 523
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mProgressMode:I

    .line 524
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setSecondaryProgress(F)V
    .locals 2

    const/4 v0, 0x0

    .line 548
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 549
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mSecondaryProgressPercent:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 550
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mSecondaryProgressPercent:F

    .line 551
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->invalidateSelf()V

    goto :goto_0

    .line 553
    :cond_0
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mSecondaryProgressPercent:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 581
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mInAnimationDuration:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->start(Z)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 586
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->mOutAnimationDuration:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->stop(Z)V

    return-void
.end method
