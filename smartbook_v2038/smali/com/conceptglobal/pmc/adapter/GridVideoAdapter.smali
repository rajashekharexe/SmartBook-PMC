.class public Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridVideoAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfalter:Landroid/view/LayoutInflater;

.field videolist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ImageDetails;",
            ">;"
        }
    .end annotation
.end field

.field videolist_ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ImageDetails;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;->mInfalter:Landroid/view/LayoutInflater;

    .line 34
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;->videolist:Ljava/util/List;

    .line 35
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;->videolist_ids:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;->videolist:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;->videolist_ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 63
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;->mInfalter:Landroid/view/LayoutInflater;

    const v0, 0x7f0c015e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09023f

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;->videolist:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;->videolist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;->videolist_ids:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;->videolist_ids:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 82
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const v0, 0x3dcccccd    # 0.1f

    .line 84
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 85
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 86
    const-string p1, "video"

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 88
    :catch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/GridVideoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x108000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-object p2
.end method
