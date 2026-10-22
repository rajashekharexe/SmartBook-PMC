.class public Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DosageSuggesionsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/BrandSuggesionsModel;",
            ">;"
        }
    .end annotation
.end field

.field private deviceHeight:I

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/BrandSuggesionsModel;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;->data:Ljava/util/List;

    .line 29
    new-instance p2, Lcom/conceptglobal/pmc/model/SuggesionsModel;

    invoke-direct {p2}, Lcom/conceptglobal/pmc/model/SuggesionsModel;-><init>()V

    .line 30
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;I)V
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/BrandSuggesionsModel;

    if-nez p2, :cond_0

    .line 42
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrName:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrValue:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060138

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrName:Landroid/widget/TextView;

    const v2, 0x7f0800e0

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 46
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrValue:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrValue:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 48
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrName2:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 49
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrValue2:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 50
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrName2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrName2:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 52
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrValue2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrValue2:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 55
    :cond_0
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandSuggesionsModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandSuggesionsModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p2, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrName2:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandSuggesionsModel;->getAttributeName2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrValue2:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandSuggesionsModel;->getAttributeValue2()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;
    .locals 2

    .line 34
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00a2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance p2, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
