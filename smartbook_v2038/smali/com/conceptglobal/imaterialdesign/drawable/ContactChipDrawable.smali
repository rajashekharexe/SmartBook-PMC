.class public Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ContactChipDrawable.java"


# instance fields
.field private mBackgroundColor:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBoringLayout:Landroid/text/BoringLayout;

.field private mContactName:Ljava/lang/CharSequence;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMetrics:Landroid/text/BoringLayout$Metrics;

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(IILandroid/graphics/Typeface;III)V
    .locals 2

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    .line 42
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 45
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float p4, p5

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 47
    new-instance p3, Landroid/text/TextPaint;

    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p3, p4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 48
    new-instance p3, Landroid/text/BoringLayout$Metrics;

    invoke-direct {p3}, Landroid/text/BoringLayout$Metrics;-><init>()V

    iput-object p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMetrics:Landroid/text/BoringLayout$Metrics;

    .line 49
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    .line 50
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMetrics:Landroid/text/BoringLayout$Metrics;

    iget p5, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p5, p4, Landroid/text/BoringLayout$Metrics;->ascent:I

    .line 51
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMetrics:Landroid/text/BoringLayout$Metrics;

    iget p5, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p5, p4, Landroid/text/BoringLayout$Metrics;->bottom:I

    .line 52
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMetrics:Landroid/text/BoringLayout$Metrics;

    iget p5, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p5, p4, Landroid/text/BoringLayout$Metrics;->descent:I

    .line 53
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMetrics:Landroid/text/BoringLayout$Metrics;

    iget p5, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p5, p4, Landroid/text/BoringLayout$Metrics;->top:I

    .line 54
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMetrics:Landroid/text/BoringLayout$Metrics;

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput p3, p4, Landroid/text/BoringLayout$Metrics;->leading:I

    .line 56
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mRect:Landroid/graphics/RectF;

    .line 58
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 60
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaddingLeft:I

    .line 61
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaddingRight:I

    .line 62
    iput p6, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBackgroundColor:I

    return-void
.end method

.method private updateLayout()V
    .locals 13

    .line 83
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mContactName:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaddingLeft:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaddingRight:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 91
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMetrics:Landroid/text/BoringLayout$Metrics;

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mContactName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Landroid/text/BoringLayout$Metrics;->width:I

    .line 93
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBoringLayout:Landroid/text/BoringLayout;

    if-nez v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mContactName:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move v4, v12

    move v11, v12

    invoke-static/range {v2 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBoringLayout:Landroid/text/BoringLayout;

    goto :goto_0

    .line 96
    :cond_2
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mContactName:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v10, 0x1

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move v5, v12

    invoke-virtual/range {v2 .. v12}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBoringLayout:Landroid/text/BoringLayout;

    :cond_3
    :goto_0
    return-void
.end method

.method private updateMatrix()V
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 109
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 110
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    sub-float/2addr v0, v5

    div-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 112
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 125
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 126
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v0, v8

    .line 127
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 128
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mRect:Landroid/graphics/RectF;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43340000    # 180.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 131
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 132
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43340000    # 180.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 133
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 134
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 136
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 138
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v9, v9, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mContactName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBoringLayout:Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaddingLeft:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBoringLayout:Landroid/text/BoringLayout;

    invoke-virtual {v2}, Landroid/text/BoringLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 143
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBoringLayout:Landroid/text/BoringLayout;

    invoke-virtual {v0, p1}, Landroid/text/BoringLayout;->draw(Landroid/graphics/Canvas;)V

    .line 146
    :cond_1
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->updateLayout()V

    .line 118
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->updateMatrix()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setContactName(Ljava/lang/CharSequence;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mContactName:Ljava/lang/CharSequence;

    .line 67
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->updateLayout()V

    .line 68
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->invalidateSelf()V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_1

    .line 73
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 75
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 76
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->updateMatrix()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/ContactChipDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method
