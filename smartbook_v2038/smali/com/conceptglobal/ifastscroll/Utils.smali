.class public Lcom/conceptglobal/ifastscroll/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValueInRange(FFF)F
    .locals 0

    .line 25
    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 26
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static getViewRawX(Landroid/view/View;)F
    .locals 2

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 19
    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 21
    aget p0, v0, v1

    int-to-float p0, p0

    return p0
.end method

.method public static getViewRawY(Landroid/view/View;)F
    .locals 2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p0, 0x1

    .line 13
    aget p0, v0, p0

    int-to-float p0, p0

    return p0
.end method
