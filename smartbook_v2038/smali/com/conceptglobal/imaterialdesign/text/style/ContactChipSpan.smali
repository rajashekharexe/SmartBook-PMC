.class public Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;
.super Landroid/text/style/ReplacementSpan;
.source "ContactChipSpan.java"


# instance fields
.field private mBackgroundColor:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBoringLayout:Landroid/text/BoringLayout;

.field private mContactName:Ljava/lang/CharSequence;

.field private mHeight:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IIIILandroid/graphics/Typeface;III)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    .line 38
    invoke-direct/range {p0 .. p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 39
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaint:Landroid/graphics/Paint;

    .line 40
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaint:Landroid/graphics/Paint;

    move/from16 v6, p7

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 43
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaint:Landroid/graphics/Paint;

    move/from16 v6, p8

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 45
    new-instance v5, Landroid/text/TextPaint;

    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v5, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mTextPaint:Landroid/text/TextPaint;

    .line 48
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mRect:Landroid/graphics/RectF;

    .line 50
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mMatrix:Landroid/graphics/Matrix;

    .line 52
    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mContactName:Ljava/lang/CharSequence;

    .line 53
    iput v3, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaddingLeft:I

    .line 54
    iput v4, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaddingRight:I

    move/from16 v5, p9

    .line 55
    iput v5, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBackgroundColor:I

    .line 56
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mHeight:I

    move/from16 v5, p3

    int-to-float v5, v5

    .line 57
    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaint:Landroid/graphics/Paint;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    int-to-float v3, v3

    add-float/2addr v1, v3

    int-to-float v3, v4

    add-float/2addr v1, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mWidth:I

    .line 59
    iget v2, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mHeight:I

    sub-int/2addr v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 60
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 61
    new-instance v15, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v15}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .line 62
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mContactName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v3, v8, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v15, Landroid/text/BoringLayout$Metrics;->width:I

    .line 63
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v2, v15, Landroid/text/BoringLayout$Metrics;->ascent:I

    .line 64
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v2, v15, Landroid/text/BoringLayout$Metrics;->bottom:I

    .line 65
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v2, v15, Landroid/text/BoringLayout$Metrics;->descent:I

    .line 66
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v2, v15, Landroid/text/BoringLayout$Metrics;->top:I

    .line 67
    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput v1, v15, Landroid/text/BoringLayout$Metrics;->leading:I

    .line 68
    iget-object v9, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mContactName:Ljava/lang/CharSequence;

    iget-object v10, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mTextPaint:Landroid/text/TextPaint;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v16, 0x1

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    move/from16 v11, v18

    invoke-static/range {v9 .. v18}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBoringLayout:Landroid/text/BoringLayout;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p2, p6

    .line 103
    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mHeight:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    .line 106
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaint:Landroid/graphics/Paint;

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 107
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaint:Landroid/graphics/Paint;

    iget p5, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBackgroundColor:I

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mRect:Landroid/graphics/RectF;

    iget p5, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mHeight:I

    add-int/lit8 p6, p5, 0x1

    int-to-float p6, p6

    int-to-float p5, p5

    const/high16 p7, 0x3f800000    # 1.0f

    const/4 p8, 0x0

    invoke-virtual {p4, p7, p8, p6, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mRect:Landroid/graphics/RectF;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43340000    # 180.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 110
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mRect:Landroid/graphics/RectF;

    iget p5, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mWidth:I

    iget p6, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mHeight:I

    sub-int p7, p5, p6

    int-to-float p7, p7

    int-to-float p5, p5

    int-to-float p6, p6

    invoke-virtual {p4, p7, p8, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 111
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 112
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mRect:Landroid/graphics/RectF;

    iget p5, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mWidth:I

    int-to-float p5, p5

    sub-float/2addr p5, p2

    iget p6, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mHeight:I

    int-to-float p6, p6

    invoke-virtual {p4, p2, p8, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 113
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mRect:Landroid/graphics/RectF;

    iget-object p5, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 115
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p4, :cond_0

    .line 116
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaint:Landroid/graphics/Paint;

    iget-object p5, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 117
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p2, p2, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 120
    :cond_0
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mContactName:Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBoringLayout:Landroid/text/BoringLayout;

    if-eqz p2, :cond_1

    .line 121
    iget p4, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mHeight:I

    iget p5, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mPaddingLeft:I

    add-int/2addr p5, p4

    int-to-float p5, p5

    invoke-virtual {p2}, Landroid/text/BoringLayout;->getHeight()I

    move-result p2

    sub-int/2addr p4, p2

    int-to-float p2, p4

    div-float/2addr p2, p3

    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBoringLayout:Landroid/text/BoringLayout;

    invoke-virtual {p2, p1}, Landroid/text/BoringLayout;->draw(Landroid/graphics/Canvas;)V

    .line 125
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    if-eqz p5, :cond_0

    .line 89
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 90
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mHeight:I

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p1, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 91
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mHeight:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 92
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 93
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 96
    :cond_0
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mWidth:I

    return p1
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 73
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 75
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 76
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 77
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mHeight:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 78
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p1

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 81
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/text/style/ContactChipSpan;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method
