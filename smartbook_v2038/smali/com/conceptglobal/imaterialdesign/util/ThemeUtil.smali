.class public Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;
.super Ljava/lang/Object;
.source "ThemeUtil.java"


# static fields
.field private static value:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorAccent(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1010435

    .line 73
    invoke-static {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static colorButtonNormal(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x101042b

    .line 105
    invoke-static {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static colorControlActivated(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x101042a

    .line 89
    invoke-static {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static colorControlHighlight(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x101042c

    .line 97
    invoke-static {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static colorControlNormal(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1010429

    .line 81
    invoke-static {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static colorPrimary(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1010433

    .line 57
    invoke-static {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static colorPrimaryDark(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1010434

    .line 65
    invoke-static {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static colorSwitchThumbNormal(Landroid/content/Context;I)I
    .locals 1

    .line 112
    sget v0, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private static getColor(Landroid/content/Context;II)I
    .locals 3

    .line 25
    sget-object v0, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->value:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->value:Landroid/util/TypedValue;

    .line 29
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30
    sget-object v1, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->value:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 31
    sget-object p1, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->value:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    sget-object p1, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->value:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    .line 32
    sget-object p0, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->value:Landroid/util/TypedValue;

    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0

    .line 33
    :cond_1
    sget-object p1, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->value:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object p1, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->value:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    return p2
.end method

.method public static getString(Landroid/content/res/TypedArray;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public static getType(Landroid/content/res/TypedArray;I)I
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result p0

    return p0
.end method

.method public static spToPx(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static textColorPrimary(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1010036

    .line 47
    invoke-static {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static textColorSecondary(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1010038

    .line 51
    invoke-static {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static windowBackground(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1010054

    .line 43
    invoke-static {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method
