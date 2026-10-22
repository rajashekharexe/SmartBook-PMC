.class public Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RevealDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;
    }
.end annotation


# static fields
.field private static final GRADIENT_RADIUS:F = 16.0f

.field private static final GRADIENT_STOPS:[F


# instance fields
.field private mAnimProgress:F

.field private mCurColor:I

.field private mCurColorTransparent:Z

.field private mCurTask:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxRadius:F

.field private mNextColorTransparent:Z

.field private mRect:Landroid/graphics/RectF;

.field private mRunning:Z

.field private mShader:Landroid/graphics/RadialGradient;

.field private mShaderPaint:Landroid/graphics/Paint;

.field private mStartTime:J

.field private mTasks:[Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 42
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->GRADIENT_STOPS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f7d70a4    # 0.99f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mRunning:Z

    .line 243
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$1;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mShaderPaint:Landroid/graphics/Paint;

    .line 47
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 50
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    .line 54
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mRect:Landroid/graphics/RectF;

    .line 56
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->update()V

    return-void
.end method

.method private fillCanvas(Landroid/graphics/Canvas;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private fillCanvasWithHole(Landroid/graphics/Canvas;Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;FZ)V
    .locals 2

    if-eqz p4, :cond_0

    return-void

    :cond_0
    const/high16 p4, 0x41800000    # 16.0f

    div-float/2addr p3, p4

    .line 107
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    .line 108
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget v0, p2, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->x:F

    iget v1, p2, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->y:F

    invoke-virtual {p4, p3, p3, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 109
    invoke-direct {p0, p2}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->getShader(Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;)Landroid/graphics/RadialGradient;

    move-result-object p2

    .line 110
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p3}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 111
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 112
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private fillCircle(Landroid/graphics/Canvas;FFFIZ)V
    .locals 1

    if-eqz p6, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object p6, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object p5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mRect:Landroid/graphics/RectF;

    sub-float p6, p2, p4

    sub-float v0, p3, p4

    add-float/2addr p2, p4

    add-float/2addr p3, p4

    invoke-virtual {p5, p6, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 121
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getMaxRadius(FFLandroid/graphics/Rect;)F
    .locals 4

    .line 72
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->left:I

    :goto_0
    int-to-float v0, v0

    .line 73
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    iget p3, p3, Landroid/graphics/Rect;->top:I

    :goto_1
    int-to-float p3, p3

    sub-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 75
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p3, p2

    float-to-double p1, p3

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private getShader(Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;)Landroid/graphics/RadialGradient;
    .locals 10

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mShader:Landroid/graphics/RadialGradient;

    if-nez v0, :cond_1

    .line 80
    iget-boolean v0, p1, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->isOut:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    invoke-static {v0, v2}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getColor(IF)I

    move-result v0

    .line 82
    new-instance v9, Landroid/graphics/RadialGradient;

    iget v3, p1, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->x:F

    iget v4, p1, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->y:F

    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    filled-new-array {v1, v0, p1}, [I

    move-result-object v6

    sget-object v7, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->GRADIENT_STOPS:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v5, 0x41800000    # 16.0f

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mShader:Landroid/graphics/RadialGradient;

    goto :goto_0

    .line 85
    :cond_0
    iget v0, p1, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->color:I

    invoke-static {v0, v2}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getColor(IF)I

    move-result v0

    .line 86
    new-instance v9, Landroid/graphics/RadialGradient;

    iget v3, p1, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->x:F

    iget v4, p1, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->y:F

    iget p1, p1, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->color:I

    filled-new-array {v1, v0, p1}, [I

    move-result-object v6

    sget-object v7, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->GRADIENT_STOPS:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v5, 0x41800000    # 16.0f

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mShader:Landroid/graphics/RadialGradient;

    .line 90
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mShader:Landroid/graphics/RadialGradient;

    return-object p1
.end method

.method private resetAnimation()V
    .locals 4

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mStartTime:J

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mAnimProgress:F

    .line 204
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColorTransparent:Z

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mTasks:[Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    aget-object v0, v0, v3

    iget v0, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->color:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mNextColorTransparent:Z

    .line 206
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mTasks:[Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->x:F

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mTasks:[Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->y:F

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->getMaxRadius(FFLandroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mMaxRadius:F

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mShader:Landroid/graphics/RadialGradient;

    return-void
.end method

.method private update()V
    .locals 5

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 254
    const-class v2, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;

    monitor-enter v2

    .line 255
    :try_start_0
    iget-wide v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mStartTime:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mTasks:[Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    aget-object v1, v1, v3

    iget v1, v1, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->duration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mAnimProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mTasks:[Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->color:I

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->setCurColor(I)V

    .line 259
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    :goto_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mTasks:[Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 260
    aget-object v0, v1, v0

    iget v0, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->color:I

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    if-eq v0, v1, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->resetAnimation()V

    goto :goto_1

    .line 259
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    goto :goto_0

    .line 265
    :cond_1
    :goto_1
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mTasks:[Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->stop()V

    .line 268
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->invalidateSelf()V

    .line 272
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 268
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public changeColor(IILandroid/view/animation/Interpolator;FFZ)V
    .locals 9

    const/4 v0, 0x1

    .line 159
    new-array v0, v0, [Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    new-instance v8, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    move-object v1, v8

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;-><init>(IILandroid/view/animation/Interpolator;FFZ)V

    const/4 p1, 0x0

    aput-object v8, v0, p1

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->changeColor([Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;)V

    return-void
.end method

.method public varargs changeColor([Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;)V
    .locals 6

    .line 163
    const-class v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;

    monitor-enter v0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->isRunning()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 165
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_2

    .line 166
    aget-object v1, p1, v2

    iget v1, v1, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->color:I

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    if-eq v1, v3, :cond_0

    .line 167
    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    .line 168
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mTasks:[Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    .line 169
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->start()V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mTasks:[Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    array-length v3, v1

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    sub-int/2addr v3, v4

    .line 175
    array-length v5, p1

    add-int/2addr v5, v3

    new-array v5, v5, [Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    .line 176
    invoke-static {v1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    array-length v1, p1

    invoke-static {p1, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iput-object v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mTasks:[Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    .line 179
    iput v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    .line 181
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 126
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColorTransparent:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->fillCanvas(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mTasks:[Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurTask:I

    aget-object v0, v0, v1

    .line 131
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mAnimProgress:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    .line 132
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColorTransparent:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->fillCanvas(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 134
    iget v0, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->color:I

    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mNextColorTransparent:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->fillCanvas(Landroid/graphics/Canvas;IZ)V

    goto :goto_2

    .line 135
    :cond_2
    iget-boolean v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->isOut:Z

    const/16 v2, 0xff

    if-eqz v1, :cond_4

    .line 136
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mMaxRadius:F

    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->interpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mAnimProgress:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float v8, v1, v3

    .line 138
    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->color:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 139
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    iget-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColorTransparent:Z

    invoke-direct {p0, p1, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->fillCanvas(Landroid/graphics/Canvas;IZ)V

    goto :goto_0

    .line 141
    :cond_3
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColorTransparent:Z

    invoke-direct {p0, p1, v0, v8, v1}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->fillCanvasWithHole(Landroid/graphics/Canvas;Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;FZ)V

    .line 143
    :goto_0
    iget v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->x:F

    iget v7, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->y:F

    iget v9, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->color:I

    iget-boolean v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mNextColorTransparent:Z

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->fillCircle(Landroid/graphics/Canvas;FFFIZ)V

    goto :goto_2

    .line 146
    :cond_4
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mMaxRadius:F

    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->interpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mAnimProgress:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float v8, v1, v3

    .line 148
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 149
    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->color:I

    iget-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mNextColorTransparent:Z

    invoke-direct {p0, p1, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->fillCanvas(Landroid/graphics/Canvas;IZ)V

    goto :goto_1

    .line 151
    :cond_5
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mNextColorTransparent:Z

    invoke-direct {p0, p1, v0, v8, v1}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->fillCanvasWithHole(Landroid/graphics/Canvas;Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;FZ)V

    .line 153
    :goto_1
    iget v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->x:F

    iget v7, v0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->y:F

    iget v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    iget-boolean v10, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColorTransparent:Z

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->fillCircle(Landroid/graphics/Canvas;FFFIZ)V

    :goto_2
    return-void
.end method

.method public getCurColor()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mRunning:Z

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mRunning:Z

    .line 240
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 187
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 193
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setCurColor(I)V
    .locals 1

    .line 64
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    if-eq v0, p1, :cond_1

    .line 65
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColor:I

    .line 66
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mCurColorTransparent:Z

    .line 67
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 5

    .line 212
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->resetAnimation()V

    .line 217
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 218
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mTasks:[Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mRunning:Z

    .line 228
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 229
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;->invalidateSelf()V

    return-void
.end method
