.class Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;
.super Ljava/lang/Object;
.source "StandardShowcaseDrawer.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;


# instance fields
.field protected backgroundColour:I

.field private final basicPaint:Landroid/graphics/Paint;

.field protected final eraserPaint:Landroid/graphics/Paint;

.field protected final showcaseDrawable:Landroid/graphics/drawable/Drawable;

.field private final showcaseRadius:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    const v2, 0xffffff

    .line 39
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 41
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v0, 0x1

    .line 42
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->basicPaint:Landroid/graphics/Paint;

    .line 44
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->showcase_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseRadius:F

    .line 45
    sget v0, Lcom/github/amlcurran/showcaseview/R$drawable;->cling_bleached:I

    invoke-static {p1, v0, p2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public drawShowcase(Landroid/graphics/Bitmap;FFF)V
    .locals 2

    .line 55
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    iget p1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseRadius:F

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2, p3, p1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 57
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->getShowcaseWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 58
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->getShowcaseHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    int-to-float p2, v0

    sub-float/2addr p3, p2

    float-to-int p2, p3

    .line 61
    iget-object p3, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->getShowcaseWidth()I

    move-result v0

    add-int/2addr v0, p1

    .line 63
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->getShowcaseHeight()I

    move-result v1

    add-int/2addr v1, p2

    .line 61
    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    iget-object p1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    .line 94
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->basicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public erase(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 89
    iget v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->backgroundColour:I

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-void
.end method

.method public getBlockedRadius()F
    .locals 1

    .line 79
    iget v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseRadius:F

    return v0
.end method

.method public getShowcaseHeight()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getShowcaseWidth()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public setBackgroundColour(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->backgroundColour:I

    return-void
.end method

.method public setShowcaseColour(I)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
