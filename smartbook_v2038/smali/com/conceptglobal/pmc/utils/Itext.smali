.class public Lcom/conceptglobal/pmc/utils/Itext;
.super Landroid/widget/TextView;
.source "Itext.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/Itext;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/Itext;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/Itext;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/Itext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Gotham-Book.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/Itext;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
