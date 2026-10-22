.class public Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "BannersPagerApapter.java"


# instance fields
.field private categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

.field private context:Landroid/content/Context;

.field private images:[Ljava/lang/Integer;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const v0, 0x7f08006e

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->images:[Ljava/lang/Integer;

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const v0, 0x7f08006e

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->images:[Ljava/lang/Integer;

    .line 42
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->list:Ljava/util/ArrayList;

    .line 44
    new-instance p2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 120
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 121
    check-cast p3, Landroid/view/View;

    .line 122
    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0067

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090253

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 64
    new-instance v2, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter$1;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    .line 77
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f0800e7

    const v4, 0x7f0801d8

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 80
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 81
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 82
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/signature/ObjectKey;

    .line 84
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 87
    invoke-virtual {p2, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 88
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 93
    :cond_0
    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 94
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 95
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 96
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/signature/ObjectKey;

    .line 98
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 101
    invoke-virtual {p2, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 102
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 109
    :goto_0
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    const/4 p2, 0x0

    .line 110
    invoke-virtual {p1, v0, p2}, Landroidx/viewpager/widget/ViewPager;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
