.class public Lcom/conceptglobal/pmc/utils/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z = false

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final DEFAULT_FILL_COLOR:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mFillColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/conceptglobal/pmc/utils/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 33
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/conceptglobal/pmc/utils/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 42
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 44
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 49
    iput p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderColor:I

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderWidth:I

    .line 51
    iput p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillColor:I

    .line 70
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/conceptglobal/pmc/utils/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 49
    iput v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderColor:I

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderWidth:I

    .line 51
    iput v1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillColor:I

    .line 80
    sget-object v2, Lcom/conceptglobal/pmc/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 82
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderWidth:I

    .line 83
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderColor:I

    const/4 p2, 0x1

    .line 84
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderOverlay:Z

    const/4 p2, 0x3

    .line 85
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillColor:I

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->init()V

    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 248
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 249
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 255
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 256
    sget-object v1, Lcom/conceptglobal/pmc/utils/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/conceptglobal/pmc/utils/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 262
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 263
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 267
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 93
    sget-object v0, Lcom/conceptglobal/pmc/utils/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mReady:Z

    .line 96
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setup()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mSetupPending:Z

    :cond_0
    return-void
.end method

.method private setup()V
    .locals 5

    .line 273
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 274
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mSetupPending:Z

    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->invalidate()V

    return-void

    .line 287
    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 289
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 290
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 292
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 293
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 294
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 297
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 299
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapHeight:I

    .line 302
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapWidth:I

    .line 304
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 305
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderRadius:F

    .line 307
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 308
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderOverlay:Z

    if-nez v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderWidth:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRadius:F

    .line 313
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->updateShaderMatrix()V

    .line 314
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->invalidate()V

    return-void
.end method

.method private updateShaderMatrix()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 324
    iget v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 326
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v2

    move v3, v1

    const/4 v1, 0x0

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 329
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v4, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v2

    .line 332
    :goto_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 333
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 335
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderWidth:I

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillColor:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 104
    sget-object v0, Lcom/conceptglobal/pmc/utils/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderOverlay:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillColor:I

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRadius:F

    iget-object v4, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mDrawableRadius:F

    iget-object v4, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    iget v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderWidth:I

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderRadius:F

    iget-object v3, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 139
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setup()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjustViewBounds not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 147
    iget v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 151
    :cond_0
    iput p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderColor:I

    .line 152
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->invalidate()V

    return-void
.end method

.method public setBorderColorResource(I)V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setBorderColor(I)V

    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 200
    :cond_0
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderOverlay:Z

    .line 201
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setup()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 183
    iget v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 187
    :cond_0
    iput p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBorderWidth:I

    .line 188
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setup()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    return-void

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 239
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 240
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->invalidate()V

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .line 165
    iget v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 169
    :cond_0
    iput p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillColor:I

    .line 170
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->invalidate()V

    return-void
.end method

.method public setFillColorResource(I)V
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setFillColor(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 206
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 208
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setup()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 213
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 215
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setup()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 220
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 222
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setup()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 227
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/utils/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 229
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setup()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 109
    sget-object v0, Lcom/conceptglobal/pmc/utils/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ScaleType %s not supported."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
