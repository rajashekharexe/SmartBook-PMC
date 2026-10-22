.class public Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;
.super Ljava/lang/Object;
.source "MaterialShowcaseDrawer.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;


# instance fields
.field private backgroundColor:I

.field private final basicPaint:Landroid/graphics/Paint;

.field private final eraserPaint:Landroid/graphics/Paint;

.field private final radius:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->showcase_radius_material:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->radius:F

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    const v0, 0xffffff

    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 22
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->basicPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public drawShowcase(Landroid/graphics/Bitmap;FFF)V
    .locals 1

    .line 34
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    iget p1, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->radius:F

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2, p3, p1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->basicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public erase(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 60
    iget v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-void
.end method

.method public getBlockedRadius()F
    .locals 1

    .line 50
    iget v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->radius:F

    return v0
.end method

.method public getShowcaseHeight()I
    .locals 2

    .line 45
    iget v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getShowcaseWidth()I
    .locals 2

    .line 40
    iget v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public setBackgroundColour(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->backgroundColor:I

    return-void
.end method

.method public setShowcaseColour(I)V
    .locals 0

    return-void
.end method
