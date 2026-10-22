.class Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SnackBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundDrawable"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundRadius:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V
    .locals 1

    .line 927
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 928
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 929
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 930
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 932
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 957
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mBackgroundRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 936
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mBackgroundColor:I

    if-eq v0, p1, :cond_0

    .line 937
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mBackgroundColor:I

    .line 938
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 939
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .line 944
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mBackgroundRadius:I

    if-eq v0, p1, :cond_0

    .line 945
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->mBackgroundRadius:I

    .line 946
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
