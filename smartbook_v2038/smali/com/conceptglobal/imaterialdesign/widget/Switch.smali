.class public Lcom/conceptglobal/imaterialdesign/widget/Switch;
.super Landroid/view/View;
.source "Switch.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/widget/Switch$OnCheckedChangeListener;,
        Lcom/conceptglobal/imaterialdesign/widget/Switch$SavedState;
    }
.end annotation


# static fields
.field private static final COLOR_SHADOW_END:I = 0x0

.field private static final COLOR_SHADOW_START:I = 0x4c000000


# instance fields
.field private mAnimDuration:I

.field private mChecked:Z

.field protected mCurrentStyle:I

.field private mDrawRect:Landroid/graphics/RectF;

.field private mFlingVelocity:F

.field private mGravity:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsRtl:Z

.field private mMaxAnimDuration:I

.field private mMemoX:F

.field private mOnCheckedChangeListener:Lcom/conceptglobal/imaterialdesign/widget/Switch$OnCheckedChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

.field private mRunning:Z

.field private mShadowOffset:I

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowPath:Landroid/graphics/Path;

.field private mShadowSize:I

.field private mStartPosition:F

.field private mStartTime:J

.field private mStartX:F

.field protected mStyleId:I

.field private mTempRect:Landroid/graphics/RectF;

.field private mTempStates:[I

.field private mThumbColors:Landroid/content/res/ColorStateList;

.field private mThumbPosition:F

.field private mThumbRadius:I

.field private mTrackCap:Landroid/graphics/Paint$Cap;

.field private mTrackColors:Landroid/content/res/ColorStateList;

.field private mTrackPath:Landroid/graphics/Path;

.field private mTrackSize:I

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 96
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    .line 40
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mRunning:Z

    const/4 v1, -0x1

    .line 49
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackSize:I

    .line 51
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackCap:Landroid/graphics/Paint$Cap;

    .line 52
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    .line 55
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mMaxAnimDuration:I

    const/16 v2, 0x10

    .line 57
    iput v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mGravity:I

    .line 59
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    const/4 v2, 0x2

    .line 69
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempStates:[I

    .line 71
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    .line 72
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowOffset:I

    .line 79
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mIsRtl:Z

    .line 599
    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/Switch$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/Switch;)V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mUpdater:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    .line 40
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mRunning:Z

    const/4 v1, -0x1

    .line 49
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackSize:I

    .line 51
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackCap:Landroid/graphics/Paint$Cap;

    .line 52
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    .line 55
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mMaxAnimDuration:I

    const/16 v2, 0x10

    .line 57
    iput v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mGravity:I

    .line 59
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    const/4 v2, 0x2

    .line 69
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempStates:[I

    .line 71
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    .line 72
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowOffset:I

    .line 79
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mIsRtl:Z

    .line 599
    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/Switch$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/Switch;)V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mUpdater:Ljava/lang/Runnable;

    .line 104
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    .line 40
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mRunning:Z

    const/4 v1, -0x1

    .line 49
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackSize:I

    .line 51
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackCap:Landroid/graphics/Paint$Cap;

    .line 52
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    .line 55
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mMaxAnimDuration:I

    const/16 v2, 0x10

    .line 57
    iput v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mGravity:I

    .line 59
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    const/4 v2, 0x2

    .line 69
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempStates:[I

    .line 71
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    .line 72
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowOffset:I

    .line 79
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mIsRtl:Z

    .line 599
    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/Switch$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/Switch;)V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mUpdater:Ljava/lang/Runnable;

    .line 110
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, -0x80000000

    .line 40
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mRunning:Z

    const/4 v1, -0x1

    .line 49
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackSize:I

    .line 51
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackCap:Landroid/graphics/Paint$Cap;

    .line 52
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    .line 55
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mMaxAnimDuration:I

    const/16 v2, 0x10

    .line 57
    iput v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mGravity:I

    .line 59
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    const/4 v2, 0x2

    .line 69
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempStates:[I

    .line 71
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    .line 72
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowOffset:I

    .line 79
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mIsRtl:Z

    .line 599
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/Switch$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/Switch;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mUpdater:Ljava/lang/Runnable;

    .line 117
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/widget/Switch;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->update()V

    return-void
.end method

.method private buildShadow()V
    .locals 11

    .line 468
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    if-gtz v0, :cond_0

    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 472
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowPaint:Landroid/graphics/Paint;

    .line 473
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 474
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 476
    :cond_1
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    int-to-float v2, v0

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowOffset:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 477
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/RadialGradient;

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    add-int/2addr v3, v4

    int-to-float v6, v3

    const/high16 v3, 0x4c000000    # 3.3554432E7f

    const/4 v4, 0x0

    filled-new-array {v3, v3, v4}, [I

    move-result-object v7

    const/4 v3, 0x3

    new-array v8, v3, [F

    const/4 v3, 0x0

    aput v3, v8, v4

    aput v2, v8, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    aput v2, v8, v3

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 482
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowPath:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 483
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowPath:Landroid/graphics/Path;

    .line 484
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    .line 487
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 488
    :goto_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 489
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    neg-float v3, v0

    invoke-virtual {v2, v3, v3, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 490
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 491
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 492
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    neg-float v2, v0

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowOffset:I

    int-to-float v4, v3

    sub-float v4, v2, v4

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 493
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method private getThumbColor(Z)I
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempStates:[I

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x101009e

    goto :goto_0

    :cond_0
    const v1, -0x101009e

    :goto_0
    const/4 v2, 0x0

    aput v1, v0, v2

    .line 462
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempStates:[I

    if-eqz p1, :cond_1

    const p1, 0x10100a0

    goto :goto_1

    :cond_1
    const p1, -0x10100a0

    :goto_1
    const/4 v1, 0x1

    aput p1, v0, v1

    .line 464
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private getTrackColor(Z)I
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempStates:[I

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x101009e

    goto :goto_0

    :cond_0
    const v1, -0x101009e

    :goto_0
    const/4 v2, 0x0

    aput v1, v0, v2

    .line 455
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempStates:[I

    if-eqz p1, :cond_1

    const p1, 0x10100a0

    goto :goto_1

    :cond_1
    const p1, -0x10100a0

    :goto_1
    const/4 v1, 0x1

    aput p1, v0, v1

    .line 457
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private getTrackPath(FFF)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 497
    iget v2, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 499
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 501
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackCap:Landroid/graphics/Paint$Cap;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const/high16 v6, 0x43340000    # 180.0f

    const-wide v7, 0x4066800000000000L    # 180.0

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    const/high16 v11, 0x3f800000    # 1.0f

    if-eq v4, v5, :cond_1

    .line 502
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    sub-float v5, p1, p3

    add-float v12, v5, v11

    sub-float v13, v1, p3

    add-float/2addr v13, v11

    add-float v14, p1, p3

    sub-float v15, v14, v11

    add-float v16, v1, p3

    sub-float v3, v16, v11

    invoke-virtual {v4, v12, v13, v15, v3}, Landroid/graphics/RectF;->set(FFFF)V

    sub-float v3, p3, v11

    div-float v3, v2, v3

    float-to-double v3, v3

    .line 503
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    div-double/2addr v3, v9

    mul-double v3, v3, v7

    double-to-float v3, v3

    .line 505
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_0

    .line 506
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v7, v1, v2

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 507
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    add-float/2addr v6, v3

    neg-float v7, v3

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 508
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float v6, v1, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 509
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 512
    :cond_0
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v14, v4

    if-gez v4, :cond_3

    .line 513
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float v6, v1, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 514
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    neg-float v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v3, v3, v7

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 515
    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 516
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    :cond_1
    sub-float v3, p3, v11

    div-float v3, v2, v3

    float-to-double v3, v3

    .line 520
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    div-double/2addr v3, v9

    mul-double v3, v3, v7

    double-to-float v3, v3

    sub-float v4, p1, p3

    .line 522
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    const/4 v12, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    .line 523
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v2

    sub-float v5, v5, p1

    add-float v5, v5, p3

    div-float/2addr v5, v2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    div-double/2addr v13, v9

    mul-double v13, v13, v7

    double-to-float v5, v13

    .line 525
    iget-object v13, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    iget-object v14, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    sub-float v15, v1, v2

    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget v8, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    add-float v8, v1, v2

    invoke-virtual {v13, v14, v15, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 526
    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    sub-float v13, v6, v5

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v5, v5, v14

    invoke-virtual {v7, v8, v13, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 528
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    add-float v7, v4, v11

    sub-float v8, v1, p3

    add-float/2addr v8, v11

    add-float v13, p1, p3

    sub-float/2addr v13, v11

    add-float v14, v1, p3

    sub-float/2addr v14, v11

    invoke-virtual {v5, v7, v8, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 529
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    add-float/2addr v6, v3

    neg-float v8, v3

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v8, v8, v13

    invoke-virtual {v5, v7, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 530
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    :cond_2
    add-float v5, p1, p3

    .line 533
    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_3

    .line 534
    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float v6, v5, v6

    add-float/2addr v6, v2

    div-float/2addr v6, v2

    invoke-static {v12, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 535
    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v2

    float-to-double v12, v8

    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    float-to-double v9, v2

    mul-double v17, v17, v9

    add-double v12, v12, v17

    double-to-float v6, v12

    float-to-double v12, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    add-double v12, v12, v17

    double-to-float v8, v12

    invoke-virtual {v7, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v14, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double v14, v14, v6

    double-to-float v6, v14

    .line 538
    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget v9, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackSize:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sub-float v9, v1, v2

    iget-object v10, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    invoke-virtual {v7, v8, v9, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 539
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    neg-float v8, v6

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v8, v8, v9

    invoke-virtual {v2, v7, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 541
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    add-float/2addr v4, v11

    sub-float v6, v1, p3

    add-float/2addr v6, v11

    sub-float/2addr v5, v11

    add-float v1, v1, p3

    sub-float/2addr v1, v11

    invoke-virtual {v2, v4, v6, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 542
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    neg-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v3, v3, v5

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 543
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_3
    :goto_0
    return-void
.end method

.method private resetAnimation()V
    .locals 3

    .line 575
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mStartTime:J

    .line 576
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mStartPosition:F

    .line 577
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mMaxAnimDuration:I

    int-to-float v1, v1

    iget-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    :cond_0
    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mAnimDuration:I

    return-void
.end method

.method private startAnimation()V
    .locals 6

    .line 581
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->resetAnimation()V

    const/4 v0, 0x1

    .line 583
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mRunning:Z

    .line 584
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 587
    :cond_0
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    .line 588
    :goto_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->invalidate()V

    return-void
.end method

.method private stopAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 592
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mRunning:Z

    .line 593
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    .line 594
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->invalidate()V

    return-void
.end method

.method private update()V
    .locals 6

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 610
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mAnimDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 611
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 613
    iget-boolean v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mStartPosition:F

    sub-float v4, v1, v2

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mStartPosition:F

    sub-float v2, v1, v2

    mul-float v3, v3, v2

    :goto_0
    iput v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 616
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->stopAnimation()V

    .line 618
    :cond_1
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mRunning:Z

    if-eqz v0, :cond_3

    .line 619
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 620
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 622
    :cond_2
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->stopAnimation()V

    .line 625
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->invalidate()V

    return-void
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 3

    .line 136
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/view/View;I)V

    .line 137
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 141
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->onCreate(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 143
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 145
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, p3, :cond_c

    .line 146
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 147
    sget v4, Lcom/conceptglobal/imaterialdesign/R$styleable;->Switch_sw_trackSize:I

    if-ne v3, v4, :cond_0

    .line 148
    invoke-virtual {p2, v3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackSize:I

    goto/16 :goto_1

    .line 149
    :cond_0
    sget v4, Lcom/conceptglobal/imaterialdesign/R$styleable;->Switch_sw_trackColor:I

    if-ne v3, v4, :cond_1

    .line 150
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackColors:Landroid/content/res/ColorStateList;

    goto/16 :goto_1

    .line 151
    :cond_1
    sget v4, Lcom/conceptglobal/imaterialdesign/R$styleable;->Switch_sw_trackCap:I

    if-ne v3, v4, :cond_4

    .line 152
    invoke-virtual {p2, v3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    if-nez v2, :cond_2

    .line 154
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackCap:Landroid/graphics/Paint$Cap;

    goto/16 :goto_1

    :cond_2
    if-ne v2, v1, :cond_3

    .line 156
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackCap:Landroid/graphics/Paint$Cap;

    goto :goto_1

    .line 158
    :cond_3
    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackCap:Landroid/graphics/Paint$Cap;

    goto :goto_1

    .line 160
    :cond_4
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->Switch_sw_thumbColor:I

    if-ne v3, v1, :cond_5

    .line 161
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbColors:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 162
    :cond_5
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->Switch_sw_thumbRadius:I

    if-ne v3, v1, :cond_6

    .line 163
    invoke-virtual {p2, v3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    goto :goto_1

    .line 164
    :cond_6
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->Switch_sw_thumbElevation:I

    if-ne v3, v1, :cond_7

    .line 165
    invoke-virtual {p2, v3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    .line 166
    div-int/2addr v1, v2

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowOffset:I

    goto :goto_1

    .line 168
    :cond_7
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->Switch_sw_animDuration:I

    if-ne v3, v1, :cond_8

    .line 169
    invoke-virtual {p2, v3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mMaxAnimDuration:I

    goto :goto_1

    .line 170
    :cond_8
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->Switch_android_gravity:I

    if-ne v3, v1, :cond_9

    .line 171
    invoke-virtual {p2, v3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mGravity:I

    goto :goto_1

    .line 172
    :cond_9
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->Switch_android_checked:I

    if-ne v3, v1, :cond_a

    .line 173
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->setCheckedImmediately(Z)V

    goto :goto_1

    .line 174
    :cond_a
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->Switch_sw_interpolator:I

    if-ne v3, v1, :cond_b

    .line 175
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->Switch_sw_interpolator:I

    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_b

    .line 177
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 181
    :cond_c
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackSize:I

    if-gez p2, :cond_d

    .line 184
    invoke-static {p1, v2}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackSize:I

    .line 186
    :cond_d
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    if-gez p2, :cond_e

    const/16 p2, 0x8

    .line 187
    invoke-static {p1, p2}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    .line 189
    :cond_e
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    if-gez p2, :cond_f

    .line 190
    invoke-static {p1, v2}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    .line 191
    div-int/2addr p2, v2

    iput p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowOffset:I

    .line 194
    :cond_f
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mMaxAnimDuration:I

    if-gez p2, :cond_10

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0001

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mMaxAnimDuration:I

    .line 197
    :cond_10
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez p2, :cond_11

    .line 198
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 200
    :cond_11
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackColors:Landroid/content/res/ColorStateList;

    const p3, 0x10100a0

    const v0, -0x10100a0

    const/high16 v3, -0x1000000

    if-nez p2, :cond_12

    .line 201
    new-array p2, v2, [[I

    filled-new-array {v0}, [I

    move-result-object v4

    aput-object v4, p2, p4

    filled-new-array {p3}, [I

    move-result-object v4

    aput-object v4, p2, v1

    .line 206
    invoke-static {p1, v3}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorControlNormal(Landroid/content/Context;I)I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v4, v5}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getColor(IF)I

    move-result v4

    .line 207
    invoke-static {p1, v3}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorControlActivated(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v6, v5}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getColor(IF)I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    .line 210
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, p2, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v5, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackColors:Landroid/content/res/ColorStateList;

    .line 213
    :cond_12
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbColors:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_13

    .line 214
    new-array p2, v2, [[I

    filled-new-array {v0}, [I

    move-result-object v0

    aput-object v0, p2, p4

    filled-new-array {p3}, [I

    move-result-object p3

    aput-object p3, p2, v1

    const p3, 0xfafafa

    .line 220
    invoke-static {p1, v3}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorControlActivated(Landroid/content/Context;I)I

    move-result p1

    filled-new-array {p3, p1}, [I

    move-result-object p1

    .line 223
    new-instance p3, Landroid/content/res/ColorStateList;

    invoke-direct {p3, p2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbColors:Landroid/content/res/ColorStateList;

    .line 226
    :cond_13
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 227
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->buildShadow()V

    .line 228
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->invalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 550
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 552
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 553
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mIsRtl:Z

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float v0, v1, v0

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 557
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getTrackPath(FFF)V

    .line 558
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getTrackColor(Z)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getTrackColor(Z)I

    move-result v6

    iget v7, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    invoke-static {v4, v6, v7}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getMiddleColor(IIF)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 559
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 560
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 562
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    if-lez v2, :cond_1

    .line 563
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 564
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowOffset:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 565
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 566
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 569
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getThumbColor(Z)I

    move-result v3

    invoke-direct {p0, v5}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getThumbColor(Z)I

    move-result v4

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    invoke-static {v3, v4, v5}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getMiddleColor(IIF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 570
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 571
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v0, :cond_1

    .line 268
    const-class v0, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v1, :cond_0

    .line 270
    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    invoke-direct {v1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    .line 271
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 274
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 3

    .line 426
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowOffset:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getPaddingTop()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowOffset:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getPaddingBottom()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 3

    .line 421
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getPaddingLeft()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mPaint:Landroid/graphics/Paint;

    .line 123
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    .line 124
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTempRect:Landroid/graphics/RectF;

    .line 125
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mTrackPath:Landroid/graphics/Path;

    .line 127
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mFlingVelocity:F

    .line 129
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 131
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getStyleId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mStyleId:I

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 242
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 243
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mStyleId:I

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->registerOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 251
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 252
    invoke-static {p0}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->cancelRipple(Landroid/view/View;)V

    .line 253
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mStyleId:I

    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->unregisterOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 392
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 393
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 395
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 396
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getSuggestedMinimumWidth()I

    move-result v0

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getSuggestedMinimumWidth()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-eq p2, v2, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 409
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getSuggestedMinimumHeight()I

    move-result v1

    goto :goto_1

    .line 412
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getSuggestedMinimumHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 416
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 640
    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/Switch$SavedState;

    .line 642
    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/Switch$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 643
    iget-boolean p1, p1, Lcom/conceptglobal/imaterialdesign/widget/Switch$SavedState;->checked:Z

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->setChecked(Z)V

    .line 644
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->requestLayout()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 338
    :goto_0
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mIsRtl:Z

    if-eq p1, v0, :cond_1

    .line 339
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mIsRtl:Z

    .line 340
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 630
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 632
    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/Switch$SavedState;

    invoke-direct {v1, v0}, Lcom/conceptglobal/imaterialdesign/widget/Switch$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 634
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/conceptglobal/imaterialdesign/widget/Switch$SavedState;->checked:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 431
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget p4, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getPaddingLeft()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    iput p4, p3, Landroid/graphics/RectF;->left:F

    .line 432
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget p4, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getPaddingRight()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    iput p1, p3, Landroid/graphics/RectF;->right:F

    .line 434
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    mul-int/lit8 p1, p1, 0x2

    .line 435
    iget p3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mGravity:I

    and-int/lit8 p3, p3, 0x70

    const/16 p4, 0x30

    if-eq p3, p4, :cond_1

    const/16 p4, 0x50

    if-eq p3, p4, :cond_0

    .line 447
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    sub-int/2addr p2, p1

    int-to-float p2, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    iput p2, p3, Landroid/graphics/RectF;->top:F

    .line 448
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->top:F

    int-to-float p1, p1

    add-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 443
    :cond_0
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget p4, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowOffset:I

    add-int/2addr p4, v0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getPaddingBottom()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    sub-int/2addr p2, p4

    int-to-float p2, p2

    iput p2, p3, Landroid/graphics/RectF;->bottom:F

    .line 444
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->bottom:F

    int-to-float p1, p1

    sub-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 439
    :cond_1
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowSize:I

    iget p4, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mShadowOffset:I

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getPaddingTop()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 440
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->top:F

    int-to-float p1, p1

    add-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-void
.end method

.method public onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V
    .locals 1

    .line 233
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mStyleId:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentStyle(I)I

    move-result p1

    .line 234
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mCurrentStyle:I

    if-eq v0, p1, :cond_0

    .line 235
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mCurrentStyle:I

    .line 236
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->applyStyle(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 346
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 347
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 350
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mIsRtl:Z

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float v0, v1, v0

    .line 353
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq p1, v1, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 381
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 383
    :cond_2
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-virtual {p0, v4}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 362
    :cond_4
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mMemoX:F

    sub-float p1, v0, p1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbRadius:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    div-float/2addr p1, v2

    .line 363
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    add-float/2addr v2, p1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    .line 364
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mMemoX:F

    .line 365
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->invalidate()V

    goto/16 :goto_0

    .line 368
    :cond_5
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 369
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 371
    :cond_6
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mStartX:F

    sub-float/2addr v0, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mStartTime:J

    sub-long/2addr v5, v7

    long-to-float p1, v5

    div-float/2addr v0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float v0, v0, p1

    .line 372
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mFlingVelocity:F

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_8

    cmpl-float p1, v0, v3

    if-lez p1, :cond_7

    const/4 v4, 0x1

    .line 373
    :cond_7
    invoke-virtual {p0, v4}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 374
    :cond_8
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    if-nez p1, :cond_9

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_a

    :cond_9
    if-eqz p1, :cond_b

    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    const v0, 0x3f666666    # 0.9f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    .line 375
    :cond_a
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->toggle()V

    goto :goto_0

    .line 377
    :cond_b
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_c

    const/4 v4, 0x1

    :cond_c
    invoke-virtual {p0, v4}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 355
    :cond_d
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 356
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 357
    :cond_e
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mMemoX:F

    .line 358
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mStartX:F

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mStartTime:J

    :goto_0
    return v1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 259
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 260
    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-nez v1, :cond_0

    .line 261
    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 299
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    .line 300
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mOnCheckedChangeListener:Lcom/conceptglobal/imaterialdesign/widget/Switch$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0, p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Switch$OnCheckedChangeListener;->onCheckedChanged(Lcom/conceptglobal/imaterialdesign/widget/Switch;Z)V

    .line 304
    :cond_0
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 306
    :goto_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_2

    .line 307
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->startAnimation()V

    :cond_2
    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 316
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    .line 317
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mOnCheckedChangeListener:Lcom/conceptglobal/imaterialdesign/widget/Switch$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0, p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Switch$OnCheckedChangeListener;->onCheckedChanged(Lcom/conceptglobal/imaterialdesign/widget/Switch;Z)V

    .line 320
    :cond_0
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mThumbPosition:F

    .line 321
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->invalidate()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/conceptglobal/imaterialdesign/widget/Switch$OnCheckedChangeListener;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mOnCheckedChangeListener:Lcom/conceptglobal/imaterialdesign/widget/Switch$OnCheckedChangeListener;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 281
    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Switch;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method
