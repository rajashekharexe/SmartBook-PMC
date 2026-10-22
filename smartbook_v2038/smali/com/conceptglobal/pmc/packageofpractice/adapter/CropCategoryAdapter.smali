.class public Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CropCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private categoryModalArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;",
            ">;"
        }
    .end annotation
.end field

.field private cropEventListener:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;

.field individualCropAdapter:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->categoryModalArrayList:Ljava/util/ArrayList;

    .line 34
    iput-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->cropEventListener:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->categoryModalArrayList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->categoryModalArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;I)V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->categoryModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;

    .line 55
    iget-object v0, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->categoryTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->getCropCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->getThumbnailURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->categoryImage:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 59
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->getIndividualCropItemModalArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->cropEventListener:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;

    invoke-direct {v1, v0, v2, v3}, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->individualCropAdapter:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;

    .line 62
    iget-object v0, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->individualCropList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 63
    iget-object v0, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->individualCropList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    iget-object v0, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->individualCropList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->individualCropAdapter:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->isExpanded()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 69
    iget-object v0, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->btnExpand:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f08018b

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->btnExpand:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f080139

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :goto_0
    iget-object p1, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->individualCropList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;
    .locals 1

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c00cb

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;-><init>(Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public updateAdapter(Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->individualCropAdapter:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->updateIndividualAdapter(Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;I)V

    .line 119
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateProgress(I)V
    .locals 0

    return-void
.end method
