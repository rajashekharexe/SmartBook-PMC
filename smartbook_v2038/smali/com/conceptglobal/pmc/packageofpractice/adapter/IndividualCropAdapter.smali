.class public Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "IndividualCropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;,
        Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private cropEventListener:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;

.field private individualCropItemModalArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->individualCropItemModalArrayList:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->cropEventListener:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;)Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->cropEventListener:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->individualCropItemModalArrayList:Ljava/util/ArrayList;

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

    .line 24
    check-cast p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;I)V
    .locals 5

    const-string v0, "select DownloadID from DownLoadFileDetails where ContentID ="

    .line 47
    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->individualCropItemModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    .line 48
    iget-object v2, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->cardView:Landroidx/cardview/widget/CardView;

    iget-object v3, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f060041

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 49
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getLocalHTMLZIPURL()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getLocalHTMLZIPURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getVersionNo()I

    move-result v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getDeviceVersionNo()I

    move-result v3

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v2, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->ivDownload:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08013a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    iget-object v2, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->ivDownload:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080164

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getPopID()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->cropEventListener:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;

    iget-object v2, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;->individualCropClick(Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    :cond_2
    :goto_2
    iget-object v0, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->cropName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getCropName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getThumbnailURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->cropThumbnail:Lcom/conceptglobal/pmc/utils/CircleImageView;

    .line 64
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 65
    iget-object v0, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$1;

    invoke-direct {v2, p0, v1, p2, p1}, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$1;-><init>(Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c00cc

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;-><init>(Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setBookmarkEventListener(Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->cropEventListener:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;

    return-void
.end method

.method public updateIndividualAdapter(Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;I)V
    .locals 2

    const/4 p2, 0x0

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->individualCropItemModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->individualCropItemModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    .line 81
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getPopID()I

    move-result v0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getPopID()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->individualCropItemModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
