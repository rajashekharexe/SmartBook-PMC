.class public Lcom/conceptglobal/pmc/adapter/GridImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridImageAdapter.java"


# instance fields
.field imagelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ImageDetails;",
            ">;"
        }
    .end annotation
.end field

.field imagelist_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ImageDetails;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->imagelist:Ljava/util/List;

    .line 31
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->imagelist_ids:Ljava/util/List;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->imagelist:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->imagelist_ids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 49
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

    .line 59
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00c7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09023f

    .line 60
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->imagelist:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->imagelist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->imagelist_ids:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->imagelist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    .line 74
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->imagelist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/GridImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V

    .line 85
    const-string p1, "image"

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
