.class public Lcom/conceptglobal/pmc/utils/BitmapTransform;
.super Ljava/lang/Object;
.source "BitmapTransform.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# instance fields
.field maxHeight:I

.field maxWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/conceptglobal/pmc/utils/BitmapTransform;->maxWidth:I

    .line 33
    iput p2, p0, Lcom/conceptglobal/pmc/utils/BitmapTransform;->maxHeight:I

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/utils/BitmapTransform;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/conceptglobal/pmc/utils/BitmapTransform;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 42
    iget v0, p0, Lcom/conceptglobal/pmc/utils/BitmapTransform;->maxWidth:I

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    int-to-double v3, v0

    mul-double v3, v3, v1

    double-to-int v1, v3

    goto :goto_0

    .line 46
    :cond_0
    iget v1, p0, Lcom/conceptglobal/pmc/utils/BitmapTransform;->maxHeight:I

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    int-to-double v4, v1

    mul-double v4, v4, v2

    double-to-int v0, v4

    :goto_0
    const/4 v2, 0x0

    .line 51
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v0
.end method
