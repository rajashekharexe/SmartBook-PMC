.class public Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SuggesionsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/SuggesionsModel;",
            ">;"
        }
    .end annotation
.end field

.field private deviceHeight:I

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/SuggesionsModel;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter;->data:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/conceptglobal/pmc/model/SuggesionsModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SuggesionsModel;-><init>()V

    .line 51
    const-string v1, "ATTRIBUTE NAME"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/SuggesionsModel;->setAttributeName(Ljava/lang/String;)V

    .line 52
    const-string v1, "SUGGESTED VALUES"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/SuggesionsModel;->setAttributeValue(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 53
    invoke-interface {p2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 54
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 37
    check-cast p1, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;I)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/SuggesionsModel;

    if-nez p2, :cond_0

    .line 66
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;->tvAttrName:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;->tvAttrValue:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 68
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;->tvAttrName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;->tvAttrName:Landroid/widget/TextView;

    const v1, 0x7f0800e0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 70
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;->tvAttrValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;->tvAttrValue:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 73
    :cond_0
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;->tvAttrName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SuggesionsModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;->tvAttrValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SuggesionsModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0c012f

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance p2, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/SuggesionsListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
