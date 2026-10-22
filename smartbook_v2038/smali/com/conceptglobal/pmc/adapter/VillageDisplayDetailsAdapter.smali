.class public Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "VillageDisplayDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;

.field private list_village_details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->list_village_details:Ljava/util/List;

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private init(Landroid/view/View;I)V
    .locals 1

    .line 50
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;

    const v0, 0x7f090587

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 51
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;

    const v0, 0x7f090588

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;->access$202(Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->list_village_details:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 61
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

    if-nez p2, :cond_0

    .line 35
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c013a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 36
    new-instance p3, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$1;)V

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;

    .line 37
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->init(Landroid/view/View;I)V

    .line 38
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;

    .line 43
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->list_village_details:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "activityName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;->list_village_details:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "activityCount"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
