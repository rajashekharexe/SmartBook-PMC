.class public Lcom/conceptglobal/imaterialdesign/util/ColorUtil;
.super Ljava/lang/Object;
.source "ColorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(IF)I
    .locals 1

    .line 29
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static getMiddleColor(IIF)I
    .locals 4

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    return p0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    return p1

    .line 20
    :cond_2
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getMiddleValue(IIF)I

    move-result v0

    .line 21
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getMiddleValue(IIF)I

    move-result v1

    .line 22
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v2, v3, p2}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getMiddleValue(IIF)I

    move-result v2

    .line 23
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getMiddleValue(IIF)I

    move-result p0

    .line 25
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static getMiddleValue(IIF)I
    .locals 1

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float p0, p0, p2

    add-float/2addr v0, p0

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
