.class Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;
.super Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;
.source "NewShowcaseDrawer.java"


# static fields
.field private static final ALPHA_60_PERCENT:I = 0x99


# instance fields
.field private final innerRadius:F

.field private final outerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 31
    sget p2, Lcom/github/amlcurran/showcaseview/R$dimen;->showcase_radius_outer:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->outerRadius:F

    .line 32
    sget p2, Lcom/github/amlcurran/showcaseview/R$dimen;->showcase_radius_inner:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->innerRadius:F

    return-void
.end method


# virtual methods
.method public drawShowcase(Landroid/graphics/Bitmap;FFF)V
    .locals 1

    .line 42
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    iget-object p1, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    const/16 v0, 0x99

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 44
    iget p1, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->outerRadius:F

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2, p3, p1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    iget-object p1, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    iget p1, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->innerRadius:F

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2, p3, p1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getBlockedRadius()F
    .locals 1

    .line 61
    iget v0, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->innerRadius:F

    return v0
.end method

.method public getShowcaseHeight()I
    .locals 2

    .line 56
    iget v0, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->outerRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getShowcaseWidth()I
    .locals 2

    .line 51
    iget v0, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->outerRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public setShowcaseColour(I)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
