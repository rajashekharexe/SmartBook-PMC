.class public Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;
.super Ljava/lang/Object;
.source "TextDrawable.java"

# interfaces
.implements Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;
.implements Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;
.implements Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private borderThickness:I

.field private color:I

.field private font:Landroid/graphics/Typeface;

.field private fontSize:I

.field private height:I

.field private isBold:Z

.field public radius:F

.field private shape:Landroid/graphics/drawable/shapes/RectShape;

.field private text:Ljava/lang/String;

.field public textColor:I

.field private toUpperCase:Z

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->text:Ljava/lang/String;

    const v0, -0x777778

    .line 173
    iput v0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->color:I

    const/4 v0, -0x1

    .line 174
    iput v0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->textColor:I

    const/4 v1, 0x0

    .line 175
    iput v1, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->borderThickness:I

    .line 176
    iput v0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->width:I

    .line 177
    iput v0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->height:I

    .line 178
    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 179
    const-string v2, "sans-serif-light"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    .line 180
    iput v0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->fontSize:I

    .line 181
    iput-boolean v3, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->isBold:Z

    .line 182
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->toUpperCase:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/textdrawable/TextDrawable$1;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->height:I

    return p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->width:I

    return p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->toUpperCase:Z

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;)Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->color:I

    return p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->fontSize:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->isBold:Z

    return p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;)Landroid/graphics/Typeface;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->borderThickness:I

    return p0
.end method


# virtual methods
.method public beginConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    return-object p0
.end method

.method public bold()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->isBold:Z

    return-object p0
.end method

.method public build(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
    .locals 0

    .line 275
    iput p2, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->color:I

    .line 276
    iput-object p1, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->text:Ljava/lang/String;

    .line 277
    new-instance p1, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;-><init>(Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;Lcom/conceptglobal/pmc/textdrawable/TextDrawable$1;)V

    return-object p1
.end method

.method public buildRect(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
    .locals 0

    .line 257
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->rect()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    .line 258
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->build(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public buildRound(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
    .locals 0

    .line 269
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->round()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->build(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public buildRoundRect(Ljava/lang/String;II)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
    .locals 0

    .line 263
    invoke-virtual {p0, p3}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->roundRect(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->build(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public endConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;
    .locals 0

    return-object p0
.end method

.method public fontSize(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    .line 211
    iput p1, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->fontSize:I

    return-object p0
.end method

.method public height(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    .line 191
    iput p1, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->height:I

    return-object p0
.end method

.method public rect()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;
    .locals 1

    .line 237
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method

.method public round()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;
    .locals 1

    .line 243
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method

.method public roundRect(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;
    .locals 2

    int-to-float p1, p1

    .line 249
    iput p1, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->radius:F

    const/16 v0, 0x8

    .line 250
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    .line 251
    new-instance p1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method

.method public textColor(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    .line 196
    iput p1, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->textColor:I

    return-object p0
.end method

.method public toUpperCase()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->toUpperCase:Z

    return-object p0
.end method

.method public useFont(Landroid/graphics/Typeface;)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public width(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    .line 186
    iput p1, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->width:I

    return-object p0
.end method

.method public withBorder(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    .line 201
    iput p1, p0, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$Builder;->borderThickness:I

    return-object p0
.end method
