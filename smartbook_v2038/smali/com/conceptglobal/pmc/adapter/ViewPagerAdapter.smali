.class public Lcom/conceptglobal/pmc/adapter/ViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ViewPagerAdapter.java"


# static fields
.field private static final MAX_HEIGHT:I = 0x300

.field private static final MAX_WIDTH:I = 0x400


# instance fields
.field context:Landroid/content/Context;

.field imgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ViewPagerAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/ViewPagerAdapter;->imgList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ViewPagerAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ViewPagerAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/ViewPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0167

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-wide/high16 v1, 0x4128000000000000L    # 786432.0

    .line 59
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const v2, 0x7f090207

    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 66
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/conceptglobal/pmc/adapter/ViewPagerAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    new-instance v3, Lcom/conceptglobal/pmc/utils/BitmapTransform;

    const/16 v4, 0x400

    const/16 v5, 0x300

    invoke-direct {v3, v4, v5}, Lcom/conceptglobal/pmc/utils/BitmapTransform;-><init>(II)V

    invoke-virtual {p2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2, v1, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    const v1, 0x7f080193

    invoke-virtual {p2, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 67
    invoke-virtual {p2, v1}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 71
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 43
    check-cast p2, Landroid/widget/RelativeLayout;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
