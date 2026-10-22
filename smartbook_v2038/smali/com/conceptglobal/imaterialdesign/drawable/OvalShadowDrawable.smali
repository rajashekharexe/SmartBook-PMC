.class public Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OvalShadowDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final COLOR_SHADOW_END:I = 0x0

.field private static final COLOR_SHADOW_START:I = 0x4c000000


# instance fields
.field private mAnimDuration:I

.field private mAnimEnable:Z

.field private mAnimProgress:F

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mCurColor:I

.field private mEnable:Z

.field private mGlowPaint:Landroid/graphics/Paint;

.field private mGlowPath:Landroid/graphics/Path;

.field private mInEditMode:Z

.field private mNeedBuildShadow:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevColor:I

.field private mRadius:I

.field private mRunning:Z

.field private mShadowOffset:F

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowPath:Landroid/graphics/Path;

.field private mShadowSize:F

.field private mStartTime:J

.field private mTempRect:Landroid/graphics/RectF;

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILandroid/content/res/ColorStateList;FFI)V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRunning:Z

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mEnable:Z

    .line 30
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mInEditMode:Z

    .line 31
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mAnimEnable:Z

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mTempRect:Landroid/graphics/RectF;

    .line 50
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mNeedBuildShadow:Z

    .line 338
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable$1;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 56
    iput p5, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mAnimDuration:I

    .line 58
    new-instance p5, Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-direct {p5, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p5, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 59
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setRadius(I)Z

    .line 63
    invoke-virtual {p0, p3, p4}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->setShadow(FF)Z

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->update()V

    return-void
.end method

.method private buildShadow()V
    .locals 25

    move-object/from16 v0, p0

    .line 175
    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 179
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowPaint:Landroid/graphics/Paint;

    .line 180
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 183
    :cond_1
    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    int-to-float v5, v1

    int-to-float v1, v1

    iget v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    add-float/2addr v1, v6

    iget v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowOffset:F

    add-float/2addr v1, v6

    div-float/2addr v5, v1

    .line 184
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/RadialGradient;

    iget v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    int-to-float v6, v6

    iget v7, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    add-float v9, v6, v7

    const/high16 v14, 0x4c000000    # 3.3554432E7f

    const/4 v15, 0x0

    filled-new-array {v14, v14, v15}, [I

    move-result-object v10

    const/4 v12, 0x3

    new-array v11, v12, [F

    aput v2, v11, v15

    aput v5, v11, v4

    const/4 v5, 0x2

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v11, v5

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v13

    const/4 v5, 0x3

    move-object/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 189
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowPath:Landroid/graphics/Path;

    if-nez v1, :cond_2

    .line 190
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowPath:Landroid/graphics/Path;

    .line 191
    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 195
    :goto_0
    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    int-to-float v1, v1

    iget v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    add-float/2addr v1, v6

    .line 196
    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mTempRect:Landroid/graphics/RectF;

    neg-float v7, v1

    invoke-virtual {v6, v7, v7, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 197
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowPath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mTempRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 198
    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 199
    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mTempRect:Landroid/graphics/RectF;

    neg-float v7, v1

    iget v8, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowOffset:F

    sub-float v9, v7, v8

    sub-float v8, v1, v8

    invoke-virtual {v6, v7, v9, v1, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 200
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowPath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mTempRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 202
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mGlowPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_3

    .line 203
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mGlowPaint:Landroid/graphics/Paint;

    .line 204
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mGlowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 207
    :cond_3
    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    int-to-float v3, v1

    iget v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    sub-float/2addr v3, v8

    int-to-float v1, v1

    div-float/2addr v6, v7

    add-float/2addr v1, v6

    div-float/2addr v3, v1

    .line 208
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mGlowPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/RadialGradient;

    iget v8, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    int-to-float v8, v8

    iget v9, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    div-float/2addr v9, v7

    add-float v21, v8, v9

    filled-new-array {v14, v14, v15}, [I

    move-result-object v22

    new-array v5, v5, [F

    aput v2, v5, v15

    aput v3, v5, v4

    const/4 v2, 0x2

    aput v16, v5, v2

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v6

    move-object/from16 v23, v5

    invoke-direct/range {v18 .. v24}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 213
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mGlowPath:Landroid/graphics/Path;

    if-nez v1, :cond_4

    .line 214
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mGlowPath:Landroid/graphics/Path;

    .line 215
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_1

    .line 218
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 220
    :goto_1
    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    int-to-float v1, v1

    iget v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    .line 221
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mTempRect:Landroid/graphics/RectF;

    neg-float v3, v1

    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 222
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mGlowPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mTempRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 223
    iget v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 224
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mTempRect:Landroid/graphics/RectF;

    neg-float v3, v1

    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 225
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mGlowPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mTempRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method private resetAnimation()V
    .locals 2

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mStartTime:J

    const/4 v0, 0x0

    .line 310
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mAnimProgress:F

    return-void
.end method

.method private update()V
    .locals 5

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 349
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mAnimDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mAnimProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRunning:Z

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 230
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mNeedBuildShadow:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->buildShadow()V

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mNeedBuildShadow:Z

    .line 236
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 238
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    int-to-float v4, v3

    add-float/2addr v4, v2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowOffset:F

    add-float/2addr v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 240
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 243
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 244
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    int-to-float v4, v3

    add-float/2addr v4, v2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mGlowPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mGlowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mTempRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    neg-int v3, v2

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    int-to-float v5, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 248
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 249
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mCurColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mPrevColor:I

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mCurColor:I

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mAnimProgress:F

    invoke-static {v2, v3, v4}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getMiddleColor(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mTempRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 253
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getCenterX()F
    .locals 2

    .line 151
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 2

    .line 155
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 171
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowOffset:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 166
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPaddingBottom()F
    .locals 2

    .line 147
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getPaddingLeft()F
    .locals 1

    .line 135
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    return v0
.end method

.method public getPaddingRight()F
    .locals 1

    .line 143
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    return v0
.end method

.method public getPaddingTop()F
    .locals 1

    .line 139
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    return v0
.end method

.method public getShadowOffset()F
    .locals 1

    .line 131
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowOffset:F

    return v0
.end method

.method public getShadowSize()F
    .locals 1

    .line 127
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    return v0
.end method

.method public isPointerOver(FF)Z
    .locals 4

    .line 159
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterX()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getCenterY()F

    move-result p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 161
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRunning()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 0

    .line 304
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 305
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->stop()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    const v0, 0x101009e

    .line 280
    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->hasState([II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mEnable:Z

    .line 281
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mCurColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 283
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mCurColor:I

    if-eq v0, p1, :cond_2

    .line 284
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mInEditMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mAnimEnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mEnable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mAnimDuration:I

    if-lez v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mPrevColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mCurColor:I

    :goto_0
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mPrevColor:I

    .line 286
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mCurColor:I

    .line 287
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->start()V

    goto :goto_1

    .line 290
    :cond_1
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mPrevColor:I

    .line 291
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mCurColor:I

    .line 292
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->invalidateSelf()V

    :goto_1
    const/4 p1, 0x1

    return p1

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 297
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mPrevColor:I

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRunning:Z

    .line 335
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 259
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mAnimEnable:Z

    return-void
.end method

.method public setAnimationDuration(I)Z
    .locals 1

    .line 92
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mAnimDuration:I

    if-eq v0, p1, :cond_0

    .line 93
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mAnimDuration:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setColor(I)V
    .locals 0

    .line 106
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 107
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->onStateChange([I)Z

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 102
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->onStateChange([I)Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 265
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setInEditMode(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mInEditMode:Z

    return-void
.end method

.method public setRadius(I)Z
    .locals 1

    .line 67
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    if-eq v0, p1, :cond_0

    .line 68
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRadius:I

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mNeedBuildShadow:Z

    .line 70
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->invalidateSelf()V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setShadow(FF)Z
    .locals 1

    .line 79
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 80
    :cond_1
    :goto_0
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowSize:F

    .line 81
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mShadowOffset:F

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mNeedBuildShadow:Z

    .line 83
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->invalidateSelf()V

    return p1
.end method

.method public start()V
    .locals 5

    .line 315
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->resetAnimation()V

    .line 316
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 317
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mRunning:Z

    .line 323
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 324
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/OvalShadowDrawable;->invalidateSelf()V

    return-void
.end method
