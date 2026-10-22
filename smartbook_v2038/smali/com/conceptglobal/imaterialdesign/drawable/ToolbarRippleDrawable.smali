.class public Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ToolbarRippleDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;
    }
.end annotation


# static fields
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

.field private mDelayClickType:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private mInInterpolator:Landroid/view/animation/Interpolator;

.field private mInShader:Landroid/graphics/RadialGradient;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxRippleRadius:I

.field private mOutInterpolator:Landroid/view/animation/Interpolator;

.field private mOutShader:Landroid/graphics/RadialGradient;

.field private mPressed:Z

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

    .line 78
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->GRADIENT_STOPS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f7d70a4    # 0.99f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 10

    move-object v0, p0

    move v1, p3

    move v2, p5

    .line 81
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v3, 0x0

    .line 35
    iput-boolean v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRunning:Z

    const/16 v4, 0xff

    .line 42
    iput v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mAlpha:I

    .line 64
    iput-boolean v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mPressed:Z

    .line 66
    iput v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mState:I

    .line 339
    new-instance v4, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$1;

    invoke-direct {v4, p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$1;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;)V

    iput-object v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    move v4, p1

    .line 82
    iput v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundAnimDuration:I

    move v4, p2

    .line 83
    iput v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundColor:I

    .line 85
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleType:I

    .line 86
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mMaxRippleRadius:I

    move/from16 v4, p6

    .line 87
    iput v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleAnimDuration:I

    move/from16 v4, p7

    .line 88
    iput v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleColor:I

    move v4, p4

    .line 89
    iput v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mDelayClickType:I

    if-nez v1, :cond_0

    if-gtz v2, :cond_0

    const/4 v1, -0x1

    .line 92
    iput v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleType:I

    :cond_0
    move-object/from16 v1, p8

    .line 94
    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v1, p9

    .line 95
    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mOutInterpolator:Landroid/view/animation/Interpolator;

    .line 97
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 98
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    .line 101
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackground:Landroid/graphics/Path;

    .line 104
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    .line 106
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    .line 108
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 110
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleColor:I

    filled-new-array {v4, v4, v3}, [I

    move-result-object v4

    sget-object v5, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->GRADIENT_STOPS:[F

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

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mInShader:Landroid/graphics/RadialGradient;

    .line 111
    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleType:I

    if-ne v1, v2, :cond_1

    .line 112
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleColor:I

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getColor(IF)I

    move-result v2

    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleColor:I

    filled-new-array {v3, v2, v4}, [I

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

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mOutShader:Landroid/graphics/RadialGradient;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$1;)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p9}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;-><init>(IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleType:I

    return p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->updateTouch()V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->updateWave()V

    return-void
.end method

.method private drawTouch(Landroid/graphics/Canvas;)V
    .locals 4

    .line 256
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mState:I

    if-eqz v0, :cond_1

    .line 257
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundAlphaPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mAlpha:I

    int-to-float v2, v2

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundAlphaPercent:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 260
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackground:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 263
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleAlphaPercent:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mAlpha:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 265
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mInShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 266
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackground:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawWave(Landroid/graphics/Canvas;)V
    .locals 3

    .line 272
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 274
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleRadius:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackground:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mOutShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 280
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackground:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 283
    :cond_1
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mInShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 285
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackground:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getMaxRippleRadius(FF)I
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    :goto_1
    sub-float/2addr v0, p1

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 294
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

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mStartTime:J

    return-void
.end method

.method private setRippleEffect(FFF)Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleRadius:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 175
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 176
    iput p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleRadius:F

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p3, v0

    .line 178
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 179
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 180
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3, p3, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 181
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mInShader:Landroid/graphics/RadialGradient;

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 182
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mOutShader:Landroid/graphics/RadialGradient;

    if-eqz p1, :cond_2

    .line 183
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private setRippleState(I)V
    .locals 1

    .line 159
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mState:I

    if-eq v0, p1, :cond_2

    .line 160
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mState:I

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->start()V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->stop()V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->stop()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTouch()V
    .locals 8

    .line 358
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mState:I

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundAnimDuration:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 360
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    div-float/2addr v4, v1

    iput v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundAlphaPercent:F

    .line 362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleAnimDuration:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 363
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iput v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleAlphaPercent:F

    .line 365
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mMaxRippleRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float v6, v6, v7

    invoke-direct {p0, v4, v5, v6}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleEffect(FFF)Z

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    cmpl-float v0, v1, v2

    if-nez v0, :cond_2

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mStartTime:J

    .line 369
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x2

    :cond_0
    invoke-direct {p0, v3}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleState(I)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mStartTime:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundAnimDuration:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 375
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v2, v3

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    div-float/2addr v3, v1

    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundAlphaPercent:F

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mStartTime:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleAnimDuration:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 378
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v2, v3

    iput v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleAlphaPercent:F

    .line 380
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mMaxRippleRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v6, v6, v7

    add-float/2addr v6, v2

    mul-float v5, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleEffect(FFF)Z

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    cmpl-float v0, v1, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 383
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleState(I)V

    .line 386
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 389
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateWave()V
    .locals 7

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleAnimDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 395
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 396
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mMaxRippleRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float v5, v5, v6

    invoke-direct {p0, v2, v4, v5}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleEffect(FFF)Z

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mStartTime:J

    .line 400
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 401
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleState(I)V

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleEffect(FFF)Z

    .line 404
    invoke-direct {p0, v3}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleState(I)V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mMaxRippleRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleEffect(FFF)Z

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 412
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleState(I)V

    .line 415
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 418
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleState(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 244
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->drawWave(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->drawTouch(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getClickDelayTime()J
    .locals 6

    .line 140
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mDelayClickType:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mState:I

    if-ne v0, v2, :cond_1

    .line 149
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundAnimDuration:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleAnimDuration:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mStartTime:J

    :goto_0
    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 151
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundAnimDuration:I

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleAnimDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mStartTime:J

    goto :goto_0

    .line 144
    :cond_2
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mState:I

    if-ne v0, v2, :cond_3

    .line 145
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundAnimDuration:I

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleAnimDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mStartTime:J

    goto :goto_0

    :cond_3
    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDelayClickType()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mDelayClickType:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 194
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackground:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 195
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackground:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mBackgroundBounds:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5

    const v0, 0x10100a7

    .line 205
    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->hasState([II)Z

    move-result p1

    .line 207
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mPressed:Z

    if-eq v0, p1, :cond_9

    .line 208
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mPressed:Z

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 213
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mState:I

    if-eqz v4, :cond_1

    if-ne v4, v2, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleType:I

    if-nez v0, :cond_8

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleRadius:F

    invoke-direct {p0, v0, p1, v1}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleEffect(FFF)Z

    goto :goto_1

    .line 214
    :cond_1
    :goto_0
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleType:I

    if-eq v2, v3, :cond_2

    if-ne v2, v1, :cond_3

    .line 215
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->getMaxRippleRadius(FF)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mMaxRippleRadius:I

    .line 217
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    invoke-direct {p0, v1, p1, v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleEffect(FFF)Z

    .line 218
    invoke-direct {p0, v3}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleState(I)V

    goto :goto_1

    .line 224
    :cond_4
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mState:I

    if-eqz p1, :cond_8

    const/4 v4, 0x2

    if-ne p1, v4, :cond_7

    .line 226
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRippleType:I

    if-eq p1, v3, :cond_5

    if-ne p1, v1, :cond_6

    .line 227
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRipplePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v1, v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleEffect(FFF)Z

    .line 229
    :cond_6
    invoke-direct {p0, v2}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleState(I)V

    goto :goto_1

    :cond_7
    const/4 p1, 0x3

    .line 232
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setRippleState(I)V

    :cond_8
    :goto_1
    return v3

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRunning:Z

    .line 336
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mAlpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 131
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDelayClickType(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mDelayClickType:I

    return-void
.end method

.method public start()V
    .locals 5

    .line 309
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->resetAnimation()V

    .line 314
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 315
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mRunning:Z

    .line 324
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 325
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->invalidateSelf()V

    return-void
.end method
