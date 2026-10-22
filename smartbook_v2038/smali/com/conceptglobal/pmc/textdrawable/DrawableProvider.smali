.class public Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;
.super Ljava/lang/Object;
.source "DrawableProvider.java"


# static fields
.field public static final SAMPLE_ANIMATION:I = 0xa

.field public static final SAMPLE_FONT:I = 0x8

.field public static final SAMPLE_MISC:I = 0xb

.field public static final SAMPLE_MULTIPLE_LETTERS:I = 0x7

.field public static final SAMPLE_RECT:I = 0x1

.field public static final SAMPLE_RECT_BORDER:I = 0x4

.field public static final SAMPLE_ROUND:I = 0x3

.field public static final SAMPLE_ROUND_BORDER:I = 0x6

.field public static final SAMPLE_ROUND_RECT:I = 0x2

.field public static final SAMPLE_ROUND_RECT_BORDER:I = 0x5

.field public static final SAMPLE_SIZE:I = 0x9


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->DEFAULT:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getRect(Ljava/lang/String;)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
    .locals 2

    .line 39
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 40
    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getColor(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->buildRect(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public getRectWithAnimation()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 124
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->rect()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    move-result-object v0

    .line 127
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/16 v2, 0xa

    :goto_0
    if-lez v2, :cond_0

    .line 129
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getRandomColor()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;->build(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object v3

    const/16 v4, 0x4b0

    .line 130
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 133
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-object v1
.end method

.method public getRectWithBorder(Ljava/lang/String;)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
    .locals 2

    .line 54
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    const/4 v1, 0x2

    .line 56
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->toPx(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->withBorder(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 58
    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getColor(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->buildRect(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public getRectWithCustomSize()Landroid/graphics/drawable/Drawable;
    .locals 12

    .line 103
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    const/16 v1, 0x1d

    .line 105
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->toPx(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->width(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    const/4 v1, 0x2

    .line 106
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->toPx(I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->withBorder(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->rect()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 111
    const-string v3, "I"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getColor(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v3, v2}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;->build(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object v5

    .line 113
    iget-object v2, p0, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 114
    const-string v3, "J"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getColor(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v3, v2}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;->build(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object v0

    .line 116
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/16 v3, 0x1f

    .line 117
    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->toPx(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    .line 118
    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->toPx(I)I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    move-object v7, v0

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    const/4 v0, 0x1

    aput-object v2, v1, v0

    .line 120
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getRectWithMultiLetter()Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
    .locals 3

    .line 79
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    const/16 v1, 0x14

    .line 81
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->toPx(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->fontSize(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->toUpperCase()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 84
    const-string v2, "AK"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getColor(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->buildRect(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getRound(Ljava/lang/String;)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
    .locals 2

    .line 44
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 45
    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getColor(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public getRoundRect(Ljava/lang/String;)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
    .locals 3

    .line 49
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 50
    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getColor(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->toPx(I)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->buildRoundRect(Ljava/lang/String;II)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public getRoundRectWithBorder(Ljava/lang/String;)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
    .locals 3

    .line 70
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    const/4 v1, 0x2

    .line 72
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->toPx(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->withBorder(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 74
    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getColor(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->toPx(I)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->buildRoundRect(Ljava/lang/String;II)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public getRoundWithBorder(Ljava/lang/String;)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
    .locals 2

    .line 62
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    const/4 v1, 0x2

    .line 64
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->toPx(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->withBorder(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->mGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 66
    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->getColor(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public getRoundWithCustomFont()Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
    .locals 3

    .line 89
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 91
    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->useFont(Landroid/graphics/Typeface;)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 92
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->toPx(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->fontSize(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    const v1, -0xa7aa7

    .line 93
    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->textColor(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->bold()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    const v1, -0xbbbbbc

    .line 96
    const-string v2, "Bold"

    invoke-interface {v0, v2, v1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->buildRect(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object v0

    return-object v0
.end method

.method public toPx(I)I
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/conceptglobal/pmc/textdrawable/DrawableProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 140
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
