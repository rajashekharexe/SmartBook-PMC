.class public Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NavDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/NavDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private lastMasterSyncTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/NavDrawerItem;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->data:Ljava/util/List;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->lastMasterSyncTime:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->context:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->data:Ljava/util/List;

    .line 33
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getLastMasterSyncTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->lastMasterSyncTime:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;I)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/NavDrawerItem;

    .line 54
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;->title:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/NavDrawerItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/NavDrawerItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/NavDrawerItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/NavDrawerItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Master Sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->lastMasterSyncTime:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->lastMasterSyncTime:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;->title:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/NavDrawerItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->lastMasterSyncTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_1
    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/NavDrawerItem;->getDrawable()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;
    .locals 2

    .line 46
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00fb

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;Landroid/view/View;)V

    return-object p2
.end method
