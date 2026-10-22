.class public Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;
    }
.end annotation


# static fields
.field private static final PROGRESS_STATE_HIDE:I = -0x1

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
.field private mInAnimationDuration:I

.field private mInColors:[I

.field private mInStepPercent:F

.field private mInitialAngle:F

.field private mKeepDuration:I

.field private mLastProgressStateTime:J

.field private mLastRunStateTime:J

.field private mLastUpdateTime:J

.field private mMaxSweepAngle:F

.field private mMinSweepAngle:F

.field private mOutAnimationDuration:I

.field private mPadding:I

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressMode:I

.field private mProgressPercent:F

.field private mProgressState:I

.field private mRect:Landroid/graphics/RectF;

.field private mReverse:Z

.field private mRotateDuration:I

.field private mRunState:I

.field private mSecondaryProgressPercent:F

.field private mStartAngle:F

.field private mStrokeColorIndex:I

.field private mStrokeColors:[I

.field private mStrokeSecondaryColor:I

.field private mStrokeSize:I

.field private mSweepAngle:F

.field private mTransformDuration:I

.field private mTransformInterpolator:Landroid/view/animation/Interpolator;

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(IFFFFFI[IIZIIILandroid/view/animation/Interpolator;IIF[II)V
    .locals 3

    move-object v0, p0

    .line 73
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v1, 0x0

    .line 39
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

    .line 461
    new-instance v1, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$1;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;)V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    move v1, p1

    .line 74
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPadding:I

    move v1, p2

    .line 75
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInitialAngle:F

    move v1, p3

    .line 76
    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->setProgress(F)V

    move v1, p4

    .line 77
    invoke-virtual {p0, p4}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->setSecondaryProgress(F)V

    move v1, p5

    .line 78
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMaxSweepAngle:F

    move v1, p6

    .line 79
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMinSweepAngle:F

    move v1, p7

    .line 80
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    move-object v1, p8

    .line 81
    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColors:[I

    move v1, p9

    .line 82
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSecondaryColor:I

    move v1, p10

    .line 83
    iput-boolean v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mReverse:Z

    move v1, p11

    .line 84
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRotateDuration:I

    move v1, p12

    .line 85
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mTransformDuration:I

    move/from16 v1, p13

    .line 86
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mKeepDuration:I

    move-object/from16 v1, p14

    .line 87
    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v1, p15

    .line 88
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressMode:I

    move/from16 v1, p16

    .line 89
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInAnimationDuration:I

    move/from16 v1, p17

    .line 90
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInStepPercent:F

    move-object/from16 v1, p18

    .line 91
    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInColors:[I

    move/from16 v1, p19

    .line 92
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mOutAnimationDuration:I

    .line 94
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 95
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 97
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 99
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRect:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(IFFFFFI[IIZIIILandroid/view/animation/Interpolator;IIF[IILcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$1;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p19}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;-><init>(IFFFFFI[IIZIIILandroid/view/animation/Interpolator;IIF[II)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->update()V

    return-void
.end method

.method private drawDeterminate(Landroid/graphics/Canvas;)V
    .locals 12

    .line 192
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 196
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    .line 197
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInAnimationDuration:I

    int-to-long v6, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-float v2, v6

    mul-float v1, v1, v2

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInAnimationDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v2, v1, v4

    if-lez v2, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    :goto_0
    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    add-float/2addr v2, v1

    :goto_1
    div-float/2addr v2, v3

    goto :goto_3

    :cond_0
    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 202
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mOutAnimationDuration:I

    int-to-long v6, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastRunStateTime:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-float v2, v6

    mul-float v1, v1, v2

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mOutAnimationDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v2, v1, v4

    if-lez v2, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 207
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    int-to-float v1, v1

    .line 208
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    cmpl-float v5, v2, v4

    if-lez v5, :cond_8

    .line 212
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 213
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    int-to-float v0, v6

    div-float/2addr v0, v3

    .line 215
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 216
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressPercent:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_4

    .line 219
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColors:[I

    aget v3, v3, v6

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_4
    cmpl-float v3, v1, v4

    if-nez v3, :cond_5

    .line 223
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSecondaryColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 227
    :cond_5
    iget-boolean v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mReverse:Z

    const/16 v4, -0x168

    const/16 v7, 0x168

    if-eqz v3, :cond_6

    const/16 v3, -0x168

    goto :goto_4

    :cond_6
    const/16 v3, 0x168

    :goto_4
    int-to-float v3, v3

    mul-float v8, v3, v1

    .line 229
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRect:Landroid/graphics/RectF;

    sub-float v3, v5, v2

    sub-float v9, v0, v2

    add-float/2addr v5, v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v3, v9, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 230
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSecondaryColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    add-float v2, v0, v8

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mReverse:Z

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const/16 v4, 0x168

    :goto_5
    int-to-float v0, v4

    sub-float v3, v0, v8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 233
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColors:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_8
    :goto_6
    return-void
.end method

.method private drawIndeterminate(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 250
    iget v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_5

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 252
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 253
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 254
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v7, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v2, v7

    int-to-float v2, v2

    div-float/2addr v2, v5

    .line 256
    iget v7, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInStepPercent:F

    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInColors:[I

    array-length v8, v8

    add-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    mul-float v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    div-float v7, v8, v7

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v9, v11

    long-to-float v9, v9

    iget v10, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInAnimationDuration:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    div-float v7, v9, v7

    float-to-double v10, v7

    .line 263
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    const/4 v11, 0x0

    :goto_0
    if-ltz v10, :cond_2

    int-to-float v12, v10

    sub-float v12, v7, v12

    .line 265
    iget v13, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInStepPercent:F

    mul-float v12, v12, v13

    invoke-static {v8, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    mul-float v12, v12, v2

    .line 267
    iget-object v13, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInColors:[I

    array-length v14, v13

    if-lt v10, v14, :cond_0

    goto :goto_1

    :cond_0
    cmpl-float v14, v11, v4

    if-nez v14, :cond_1

    .line 271
    iget-object v11, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    aget v13, v13, v10

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v11, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    iget-object v11, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v12, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    cmpl-float v13, v12, v11

    if-lez v13, :cond_2

    add-float v13, v11, v12

    div-float/2addr v13, v5

    .line 277
    iget-object v14, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRect:Landroid/graphics/RectF;

    sub-float v15, v3, v13

    sub-float v4, v6, v13

    add-float v5, v3, v13

    add-float v8, v6, v13

    invoke-virtual {v14, v15, v4, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 279
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sub-float v5, v12, v11

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 280
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 281
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInColors:[I

    aget v5, v5, v10

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v13, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v10, v10, -0x1

    move v11, v12

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    .line 289
    :cond_2
    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 290
    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInStepPercent:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v8, v2, v1

    cmpl-float v1, v7, v8

    if-gez v1, :cond_3

    cmpl-float v1, v9, v2

    if-ltz v1, :cond_7

    .line 291
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->resetAnimation()V

    const/4 v1, 0x0

    .line 292
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressState:I

    goto/16 :goto_2

    .line 296
    :cond_4
    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    .line 298
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRect:Landroid/graphics/RectF;

    sub-float v5, v3, v2

    sub-float v7, v6, v2

    add-float/2addr v3, v2

    add-float/2addr v6, v2

    invoke-virtual {v4, v5, v7, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 299
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 300
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->getIndeterminateStrokeColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSweepAngle:F

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_5
    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 307
    iget v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    int-to-float v2, v2

    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mOutAnimationDuration:I

    int-to-long v3, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-wide v5, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastRunStateTime:J

    add-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    mul-float v2, v2, v3

    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mOutAnimationDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_7

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 311
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 312
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 313
    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v3

    int-to-float v3, v7

    div-float/2addr v3, v5

    .line 315
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRect:Landroid/graphics/RectF;

    sub-float v7, v6, v4

    sub-float v8, v3, v4

    add-float/2addr v6, v4

    add-float/2addr v3, v4

    invoke-virtual {v5, v7, v8, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 316
    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 317
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 318
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->getIndeterminateStrokeColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSweepAngle:F

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 325
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 326
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    .line 327
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    int-to-float v2, v6

    div-float/2addr v2, v4

    .line 329
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRect:Landroid/graphics/RectF;

    sub-float v6, v5, v3

    sub-float v7, v2, v3

    add-float/2addr v5, v3

    add-float/2addr v2, v3

    invoke-virtual {v4, v6, v7, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 330
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 331
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 332
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->getIndeterminateStrokeColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSweepAngle:F

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private getIndeterminateStrokeColor()I
    .locals 6

    .line 240
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColors:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastProgressStateTime:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mKeepDuration:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 244
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColorIndex:I

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColors:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, -0x1

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColors:[I

    aget v3, v1, v3

    aget v1, v1, v2

    invoke-static {v3, v1, v0}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getMiddleColor(IIF)I

    move-result v0

    return v0

    .line 241
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColors:[I

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method private resetAnimation()V
    .locals 2

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastUpdateTime:J

    .line 398
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastProgressStateTime:J

    .line 399
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInitialAngle:F

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    const/4 v0, 0x0

    .line 400
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColorIndex:I

    .line 401
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mReverse:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMinSweepAngle:F

    neg-float v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMinSweepAngle:F

    :goto_0
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSweepAngle:F

    return-void
.end method

.method private start(Z)V
    .locals 4

    .line 415
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->resetAnimation()V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 421
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

    .line 422
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastRunStateTime:J

    const/4 p1, -0x1

    .line 423
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressState:I

    .line 426
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 427
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private stop(Z)V
    .locals 4

    .line 431
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastRunStateTime:J

    .line 436
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 437
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 438
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->invalidateSelf()V

    :cond_1
    const/4 p1, 0x4

    .line 440
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 443
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

    .line 444
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 445
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->invalidateSelf()V

    :goto_0
    return-void
.end method

.method private update()V
    .locals 2

    .line 471
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressMode:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->updateIndeterminate()V

    goto :goto_0

    .line 473
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->updateDeterminate()V

    :goto_0
    return-void
.end method

.method private updateDeterminate()V
    .locals 5

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 483
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastUpdateTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v2, v2, v3

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRotateDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 484
    iget-boolean v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mReverse:Z

    if-eqz v3, :cond_0

    neg-float v2, v2

    .line 486
    :cond_0
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastUpdateTime:J

    .line 488
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    .line 490
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 491
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInAnimationDuration:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x3

    .line 492
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 496
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mOutAnimationDuration:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x0

    .line 497
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->stop(Z)V

    return-void

    .line 502
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 505
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateIndeterminate()V
    .locals 12

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 511
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastUpdateTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v2, v2, v3

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRotateDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 512
    iget-boolean v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mReverse:Z

    if-eqz v3, :cond_0

    neg-float v2, v2

    .line 514
    :cond_0
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastUpdateTime:J

    .line 516
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressState:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v4, :cond_8

    const/4 v9, 0x2

    if-eq v4, v8, :cond_7

    if-eq v4, v9, :cond_2

    if-eq v4, v7, :cond_1

    goto/16 :goto_4

    .line 573
    :cond_1
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    .line 575
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastProgressStateTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mKeepDuration:I

    int-to-long v4, v4

    cmp-long v9, v2, v4

    if-lez v9, :cond_d

    .line 576
    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressState:I

    .line 577
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastProgressStateTime:J

    goto/16 :goto_4

    .line 548
    :cond_2
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mTransformDuration:I

    if-gtz v4, :cond_4

    if-eqz v3, :cond_3

    .line 549
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMinSweepAngle:F

    neg-float v3, v3

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMinSweepAngle:F

    :goto_0
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSweepAngle:F

    .line 550
    iput v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressState:I

    .line 551
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    .line 552
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastProgressStateTime:J

    .line 553
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColorIndex:I

    add-int/2addr v2, v8

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColors:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColorIndex:I

    goto/16 :goto_4

    .line 556
    :cond_4
    iget-wide v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastProgressStateTime:J

    sub-long v9, v0, v9

    long-to-float v9, v9

    int-to-float v4, v4

    div-float/2addr v9, v4

    .line 557
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMaxSweepAngle:F

    if-eqz v3, :cond_5

    neg-float v4, v4

    :cond_5
    if-eqz v3, :cond_6

    .line 558
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMinSweepAngle:F

    neg-float v3, v3

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMinSweepAngle:F

    .line 560
    :goto_1
    iget-object v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    sub-float v10, v5, v10

    sub-float/2addr v4, v3

    mul-float v10, v10, v4

    add-float/2addr v10, v3

    .line 561
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    iget v11, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSweepAngle:F

    add-float/2addr v2, v11

    sub-float/2addr v2, v10

    add-float/2addr v4, v2

    iput v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    .line 562
    iput v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSweepAngle:F

    cmpl-float v2, v9, v5

    if-lez v2, :cond_d

    .line 565
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSweepAngle:F

    .line 566
    iput v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressState:I

    .line 567
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastProgressStateTime:J

    .line 568
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColorIndex:I

    add-int/2addr v2, v8

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColors:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColorIndex:I

    goto :goto_4

    .line 540
    :cond_7
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    .line 542
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastProgressStateTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mKeepDuration:I

    int-to-long v4, v4

    cmp-long v10, v2, v4

    if-lez v10, :cond_d

    .line 543
    iput v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressState:I

    .line 544
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastProgressStateTime:J

    goto :goto_4

    .line 518
    :cond_8
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mTransformDuration:I

    if-gtz v4, :cond_a

    if-eqz v3, :cond_9

    .line 519
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMinSweepAngle:F

    neg-float v3, v3

    goto :goto_2

    :cond_9
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMinSweepAngle:F

    :goto_2
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSweepAngle:F

    .line 520
    iput v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressState:I

    .line 521
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    .line 522
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastProgressStateTime:J

    goto :goto_4

    .line 525
    :cond_a
    iget-wide v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastProgressStateTime:J

    sub-long v9, v0, v9

    long-to-float v9, v9

    int-to-float v4, v4

    div-float/2addr v9, v4

    .line 526
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMaxSweepAngle:F

    if-eqz v3, :cond_b

    neg-float v4, v4

    :cond_b
    if-eqz v3, :cond_c

    .line 527
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMinSweepAngle:F

    neg-float v3, v3

    goto :goto_3

    :cond_c
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMinSweepAngle:F

    .line 529
    :goto_3
    iget v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    add-float/2addr v10, v2

    iput v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStartAngle:F

    .line 530
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v10, v4, v3

    mul-float v2, v2, v10

    add-float/2addr v2, v3

    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSweepAngle:F

    cmpl-float v2, v9, v5

    if-lez v2, :cond_d

    .line 533
    iput v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSweepAngle:F

    .line 534
    iput v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressState:I

    .line 535
    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastProgressStateTime:J

    .line 582
    :cond_d
    :goto_4
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

    if-ne v2, v8, :cond_e

    .line 583
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInAnimationDuration:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    .line 584
    iput v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

    .line 585
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 586
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->resetAnimation()V

    .line 587
    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressState:I

    goto :goto_5

    :cond_e
    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    .line 592
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mLastRunStateTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mOutAnimationDuration:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    .line 593
    invoke-direct {p0, v6}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->stop(Z)V

    return-void

    .line 598
    :cond_f
    :goto_5
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 599
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 601
    :cond_10
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public applyStyle(Landroid/content/Context;I)V
    .locals 10

    .line 103
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 109
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_16

    .line 110
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 112
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_padding:I

    if-ne v6, v7, :cond_0

    .line 113
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPadding:I

    goto/16 :goto_3

    .line 114
    :cond_0
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_initialAngle:I

    if-ne v6, v7, :cond_1

    .line 115
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInitialAngle:F

    goto/16 :goto_3

    .line 116
    :cond_1
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_pv_progress:I

    const/4 v8, 0x0

    if-ne v6, v7, :cond_2

    .line 117
    invoke-virtual {p2, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->setProgress(F)V

    goto/16 :goto_3

    .line 118
    :cond_2
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_pv_secondaryProgress:I

    if-ne v6, v7, :cond_3

    .line 119
    invoke-virtual {p2, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->setSecondaryProgress(F)V

    goto/16 :goto_3

    .line 120
    :cond_3
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_maxSweepAngle:I

    if-ne v6, v7, :cond_4

    .line 121
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMaxSweepAngle:F

    goto/16 :goto_3

    .line 122
    :cond_4
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_minSweepAngle:I

    if-ne v6, v7, :cond_5

    .line 123
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mMinSweepAngle:F

    goto/16 :goto_3

    .line 124
    :cond_5
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_strokeSize:I

    if-ne v6, v7, :cond_6

    .line 125
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSize:I

    goto/16 :goto_3

    .line 126
    :cond_6
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_strokeColor:I

    if-ne v6, v7, :cond_7

    .line 127
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const/4 v4, 0x1

    goto/16 :goto_3

    .line 130
    :cond_7
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_strokeColors:I

    if-ne v6, v7, :cond_9

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    new-array v6, v6, [I

    const/4 v7, 0x0

    .line 133
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 134
    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 135
    :cond_8
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move-object v2, v6

    goto/16 :goto_3

    .line 137
    :cond_9
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_strokeSecondaryColor:I

    if-ne v6, v7, :cond_a

    .line 138
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeSecondaryColor:I

    goto/16 :goto_3

    .line 139
    :cond_a
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_reverse:I

    if-ne v6, v7, :cond_b

    .line 140
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mReverse:Z

    goto/16 :goto_3

    .line 141
    :cond_b
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_rotateDuration:I

    if-ne v6, v7, :cond_c

    .line 142
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRotateDuration:I

    goto/16 :goto_3

    .line 143
    :cond_c
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_transformDuration:I

    if-ne v6, v7, :cond_d

    .line 144
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mTransformDuration:I

    goto/16 :goto_3

    .line 145
    :cond_d
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_keepDuration:I

    if-ne v6, v7, :cond_e

    .line 146
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mKeepDuration:I

    goto :goto_3

    .line 147
    :cond_e
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_transformInterpolator:I

    if-ne v6, v7, :cond_f

    .line 148
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    iput-object v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mTransformInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_3

    .line 149
    :cond_f
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_pv_progressMode:I

    if-ne v6, v7, :cond_10

    .line 150
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressMode:I

    goto :goto_3

    .line 151
    :cond_10
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_inAnimDuration:I

    if-ne v6, v7, :cond_11

    .line 152
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInAnimationDuration:I

    goto :goto_3

    .line 153
    :cond_11
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_inStepColors:I

    if-ne v6, v7, :cond_13

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 155
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInColors:[I

    const/4 v7, 0x0

    .line 156
    :goto_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_12

    .line 157
    iget-object v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInColors:[I

    invoke-virtual {v6, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 158
    :cond_12
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 160
    :cond_13
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_inStepPercent:I

    if-ne v6, v7, :cond_14

    .line 161
    invoke-virtual {p2, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInStepPercent:F

    goto :goto_3

    .line 162
    :cond_14
    sget v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->CircularProgressDrawable_cpd_outAnimDuration:I

    if-ne v6, v7, :cond_15

    .line 163
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mOutAnimationDuration:I

    :cond_15
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 166
    :cond_16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_17

    .line 169
    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColors:[I

    goto :goto_4

    :cond_17
    if-eqz v4, :cond_18

    .line 171
    filled-new-array {v5}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColors:[I

    .line 173
    :cond_18
    :goto_4
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColorIndex:I

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColors:[I

    array-length p2, p2

    if-lt p1, p2, :cond_19

    .line 174
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mStrokeColorIndex:I

    .line 176
    :cond_19
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 181
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressMode:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->drawIndeterminate(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->drawDeterminate(Landroid/graphics/Canvas;)V

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

    .line 365
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressPercent:F

    return v0
.end method

.method public getProgressMode()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressMode:I

    return v0
.end method

.method public getSecondaryProgress()F
    .locals 1

    .line 369
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSecondaryProgressPercent:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 451
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

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

    .line 456
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

    if-nez v0, :cond_1

    .line 457
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInAnimationDuration:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mRunState:I

    .line 458
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    const/4 v0, 0x0

    .line 373
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 374
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressPercent:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 375
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressPercent:F

    .line 376
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->invalidateSelf()V

    goto :goto_0

    .line 378
    :cond_0
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressPercent:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setProgressMode(I)V
    .locals 1

    .line 358
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressMode:I

    if-eq v0, p1, :cond_0

    .line 359
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mProgressMode:I

    .line 360
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setSecondaryProgress(F)V
    .locals 2

    const/4 v0, 0x0

    .line 384
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 385
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSecondaryProgressPercent:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 386
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSecondaryProgressPercent:F

    .line 387
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->invalidateSelf()V

    goto :goto_0

    .line 389
    :cond_0
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mSecondaryProgressPercent:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 406
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mInAnimationDuration:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->start(Z)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 411
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->mOutAnimationDuration:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->stop(Z)V

    return-void
.end method
