.class Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;
.super Ljava/lang/Object;
.source "ShowcaseAreaCalculator.java"


# instance fields
.field private final mShowcaseRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public calculateShowcaseRect(FFLcom/github/amlcurran/showcaseview/ShowcaseDrawer;)Z
    .locals 4

    float-to-int p1, p1

    float-to-int p2, p2

    .line 38
    invoke-interface {p3}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->getShowcaseWidth()I

    move-result v0

    .line 39
    invoke-interface {p3}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->getShowcaseHeight()I

    move-result p3

    .line 41
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v0, v0, 0x2

    sub-int v2, p1, v0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, p3, 0x2

    sub-int v3, p2, v3

    if-ne v1, v3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_0
    const-string v1, "ShowcaseView"

    const-string v3, "Recalculated"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 48
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    div-int/lit8 p3, p3, 0x2

    sub-int v2, p2, p3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 49
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    add-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 50
    iget-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    const/4 p1, 0x1

    return p1
.end method

.method public getShowcaseRect()Landroid/graphics/Rect;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    return-object v0
.end method
