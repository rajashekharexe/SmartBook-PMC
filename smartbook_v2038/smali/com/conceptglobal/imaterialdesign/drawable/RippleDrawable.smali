.class public Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RippleDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;,
        Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;
    }
.end annotation


# static fields
.field public static final DELAY_CLICK_AFTER_RELEASE:I = 0x2

.field public static final DELAY_CLICK_NONE:I = 0x0

.field public static final DELAY_CLICK_UNTIL_RELEASE:I = 0x1

.field private static final GRADIENT_RADIUS:F = 16.0f

.field private static final GRADIENT_STOPS:[F

.field private static final STATE_HOVER:I = 0x2

.field private static final STATE_OUT:I = 0x0

.field private static final STATE_PRESS:I = 0x1

.field private static final STATE_RELEASE:I = 0x4

.field private static final STATE_RELEASE_ON_HOLD:I = 0x3

.field private static final TYPE_TOUCH:I = 0x0

.field private static final TYPE_TOUCH_MATCH_VIEW:I = -0x1

.field private static final TYPE_WAVE:I = 0x1


# instance fields
.field private mAlpha:I

.field private mBackground:Landroid/graphics/Path;

.field private mBackgroundAlphaPercent:F

.field private mBackgroundAnimDuration:I

.field private mBackgroundBounds:Landroid/graphics/RectF;

.field private mBackgroundColor:I

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mDelayClickType:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private mInInterpolator:Landroid/view/animation/Interpolator;

.field private mInShader:Landroid/graphics/RadialGradient;

.field private mMask:Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxRippleRadius:I

.field private mOutInterpolator:Landroid/view/animation/Interpolator;

.field private mOutShader:Landroid/graphics/RadialGradient;

.field private mRippleAlphaPercent:F

.field private mRippleAnimDuration:I

.field private mRippleColor:I

.field private mRipplePoint:Landroid/graphics/PointF;

.field private mRippleRadius:F

.field private mRippleType:I

.field private mRunning:Z

.field private mShaderPaint:Landroid/graphics/Paint;

.field private mStartTime:J

.field private mState:I

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 85
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->GRADIENT_STOPS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f7d70a4    # 0.99f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;IIIIIIIII)V
    .locals 10

    move-object v0, p0

    move/from16 v1, p6

    .line 88
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v2, 0x0

    .line 38
    iput-boolean v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRunning:Z

    const/16 v3, 0xff

    .line 46
    iput v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mAlpha:I

    .line 69
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    .line 378
    new-instance v3, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$1;

    invoke-direct {v3, p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$1;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;)V

    iput-object v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 89
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v3, p2

    .line 90
    iput v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundAnimDuration:I

    move v3, p3

    .line 91
    iput v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundColor:I

    move v3, p4

    .line 93
    iput v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleType:I

    move v3, p5

    .line 94
    invoke-virtual {p0, p5}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setDelayClickType(I)V

    .line 95
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMaxRippleRadius:I

    move/from16 v3, p7

    .line 96
    iput v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleAnimDuration:I

    move/from16 v3, p8

    .line 97
    iput v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleColor:I

    .line 99
    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleType:I

    if-nez v3, :cond_0

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    .line 100
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleType:I

    :cond_0
    move-object/from16 v1, p9

    .line 102
    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v1, p10

    .line 103
    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mOutInterpolator:Landroid/view/animation/Interpolator;

    move-object p1, p0

    move/from16 p2, p11

    move/from16 p3, p12

    move/from16 p4, p13

    move/from16 p5, p14

    move/from16 p6, p15

    move/from16 p7, p16

    move/from16 p8, p17

    move/from16 p9, p18

    move/from16 p10, p19

    .line 105
    invoke-virtual/range {p1 .. p10}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setMask(IIIIIIIII)V

    .line 107
    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 108
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    .line 111
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackground:Landroid/graphics/Path;

    .line 114
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    .line 116
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    .line 118
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 120
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleColor:I

    filled-new-array {v4, v4, v2}, [I

    move-result-object v4

    sget-object v5, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->GRADIENT_STOPS:[F

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x41800000    # 16.0f

    move-object p1, v1

    move p2, v7

    move p3, v8

    move p4, v9

    move-object p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mInShader:Landroid/graphics/RadialGradient;

    .line 121
    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleType:I

    if-ne v1, v3, :cond_1

    .line 122
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleColor:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getColor(IF)I

    move-result v3

    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleColor:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41800000    # 16.0f

    move-object p1, v1

    move p2, v4

    move p3, v6

    move p4, v7

    move-object p5, v2

    move-object/from16 p6, v5

    move-object/from16 p7, v3

    invoke-direct/range {p1 .. p7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mOutShader:Landroid/graphics/RadialGradient;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;IIIIIIIIILcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$1;)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p19}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;IIIIIIIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleType:I

    return p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->updateTouch()V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->updateWave()V

    return-void
.end method

.method private drawTouch(Landroid/graphics/Canvas;)V
    .locals 4

    .line 263
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    if-eqz v0, :cond_1

    .line 264
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundAlphaPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mAlpha:I

    int-to-float v2, v2

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundAlphaPercent:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 267
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackground:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 270
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleAlphaPercent:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mAlpha:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 272
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mInShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 273
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackground:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawWave(Landroid/graphics/Canvas;)V
    .locals 3

    .line 279
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 281
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleRadius:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackground:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mOutShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 287
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackground:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 290
    :cond_1
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mInShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 292
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackground:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getMaxRippleRadius(FF)I
    .locals 6

    .line 298
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 299
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    :goto_1
    sub-float/2addr v0, p1

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 301
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float/2addr v1, p2

    float-to-double p1, v1

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method private resetAnimation()V
    .locals 2

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mStartTime:J

    return-void
.end method

.method private setRippleEffect(FFF)Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleRadius:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 201
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 202
    iput p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleRadius:F

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p3, v0

    .line 204
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 206
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3, p3, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 207
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mInShader:Landroid/graphics/RadialGradient;

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 208
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mOutShader:Landroid/graphics/RadialGradient;

    if-eqz p1, :cond_2

    .line 209
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private setRippleState(I)V
    .locals 1

    .line 183
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    if-eq v0, p1, :cond_3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 190
    :cond_0
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->start()V

    goto :goto_1

    .line 193
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->stop()V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateTouch()V
    .locals 8

    .line 396
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundAnimDuration:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 398
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    div-float/2addr v4, v1

    iput v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundAlphaPercent:F

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleAnimDuration:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 401
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iput v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleAlphaPercent:F

    .line 403
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMaxRippleRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float v6, v6, v7

    invoke-direct {p0, v4, v5, v6}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleEffect(FFF)Z

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    cmpl-float v0, v1, v2

    if-nez v0, :cond_2

    .line 406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mStartTime:J

    .line 407
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x2

    :cond_0
    invoke-direct {p0, v3}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleState(I)V

    goto :goto_0

    .line 411
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mStartTime:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundAnimDuration:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 412
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v2, v3

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    div-float/2addr v3, v1

    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundAlphaPercent:F

    .line 414
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mStartTime:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleAnimDuration:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 415
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v2, v3

    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleAlphaPercent:F

    .line 417
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMaxRippleRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v6, v6, v7

    add-float/2addr v6, v2

    mul-float v5, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleEffect(FFF)Z

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    cmpl-float v0, v1, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 420
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleState(I)V

    .line 423
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 426
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateWave()V
    .locals 7

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleAnimDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 432
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 433
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMaxRippleRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float v5, v5, v6

    invoke-direct {p0, v2, v4, v5}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleEffect(FFF)Z

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 436
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mStartTime:J

    .line 437
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 438
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleState(I)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleEffect(FFF)Z

    .line 441
    invoke-direct {p0, v3}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleState(I)V

    goto :goto_0

    .line 446
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMaxRippleRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleEffect(FFF)Z

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 449
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleState(I)V

    .line 452
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 455
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleState(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 251
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->drawWave(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 254
    :cond_2
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->drawTouch(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getClickDelayTime()J
    .locals 6

    .line 164
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mDelayClickType:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    if-ne v0, v2, :cond_1

    .line 173
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundAnimDuration:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleAnimDuration:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mStartTime:J

    :goto_0
    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 175
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundAnimDuration:I

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleAnimDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mStartTime:J

    goto :goto_0

    .line 168
    :cond_2
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    if-ne v0, v2, :cond_3

    .line 169
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundAnimDuration:I

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleAnimDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mStartTime:J

    goto :goto_0

    :cond_3
    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDelayClickType()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mDelayClickType:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 369
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMask:Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;

    iget v2, v2, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;->left:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMask:Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;

    iget v3, v3, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;->top:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMask:Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;

    iget v4, v4, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMask:Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;

    iget v4, v4, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;->bottom:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 223
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackground:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 225
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMask:Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;

    iget p1, p1, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;->type:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackground:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackground:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMask:Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;

    iget-object v1, v1, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;->cornerRadius:[F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 308
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p1, v3, :cond_0

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_0

    goto :goto_1

    .line 325
    :cond_0
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    if-eqz p1, :cond_9

    if-ne p1, v5, :cond_3

    .line 327
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleType:I

    if-eq p1, v3, :cond_1

    if-ne p1, v1, :cond_2

    .line 328
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, p2, v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleEffect(FFF)Z

    .line 330
    :cond_2
    invoke-direct {p0, v2}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleState(I)V

    goto :goto_1

    .line 333
    :cond_3
    invoke-direct {p0, v4}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleState(I)V

    goto :goto_1

    .line 311
    :cond_4
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mState:I

    if-eqz p1, :cond_6

    if-ne p1, v2, :cond_5

    goto :goto_0

    .line 318
    :cond_5
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleType:I

    if-nez p1, :cond_9

    .line 319
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleRadius:F

    invoke-direct {p0, p1, p2, v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleEffect(FFF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 320
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->invalidateSelf()V

    goto :goto_1

    .line 312
    :cond_6
    :goto_0
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRippleType:I

    if-eq p1, v3, :cond_7

    if-ne p1, v1, :cond_8

    .line 313
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->getMaxRippleRadius(FF)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMaxRippleRadius:I

    .line 315
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p1, p2, v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleEffect(FFF)Z

    .line 316
    invoke-direct {p0, v3}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setRippleState(I)V

    :cond_9
    :goto_1
    return v3
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRunning:Z

    .line 375
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mAlpha:I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 126
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 155
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDelayClickType(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mDelayClickType:I

    return-void
.end method

.method public setMask(IIIIIIIII)V
    .locals 11

    .line 144
    new-instance v10, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;

    move-object v0, v10

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;-><init>(IIIIIIIII)V

    move-object v0, p0

    iput-object v10, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mMask:Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;

    return-void
.end method

.method public start()V
    .locals 5

    .line 352
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->resetAnimation()V

    .line 356
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 357
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mRunning:Z

    .line 363
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 364
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->invalidateSelf()V

    return-void
.end method
