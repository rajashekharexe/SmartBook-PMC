.class public Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;
.super Landroid/widget/BaseAdapter;
.source "VillageDisplayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;

.field private listVillageData:Ljava/util/List;
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

.field private mOriginalNames:Ljava/util/List;
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

.field private searchString:Ljava/lang/String;


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

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->searchString:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->listVillageData:Ljava/util/List;

    .line 40
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->listVillageData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->listVillageData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->mOriginalNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->mOriginalNames:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->searchString:Ljava/lang/String;

    return-object p1
.end method

.method private init(Landroid/view/View;I)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;

    const v1, 0x7f09055c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;

    const v1, 0x7f09045d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;->access$202(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;Landroid/widget/TableLayout;)Landroid/widget/TableLayout;

    .line 83
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;

    const v1, 0x7f0902c5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;->access$302(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 85
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->listVillageData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 122
    new-instance v0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 96
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
    .locals 10

    .line 53
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0143

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->init(Landroid/view/View;I)V

    .line 56
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->searchString:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->listVillageData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "VillageName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->listVillageData:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    const/4 v0, 0x2

    if-le p3, v0, :cond_1

    .line 58
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->listVillageData:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "villageId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/conceptglobal/pmc/utils/Itext;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/conceptglobal/pmc/utils/Itext;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v3, Lcom/conceptglobal/pmc/utils/Itext;

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/conceptglobal/pmc/utils/Itext;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const v6, 0x3e4ccccd    # 0.2f

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 66
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const v9, 0x3f4ccccd    # 0.8f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v7, 0x0

    .line 67
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    iget-object v7, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->searchString:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/utils/Itext;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/conceptglobal/pmc/utils/Itext;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {v4, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->holder:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;)Landroid/widget/TableLayout;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0902c5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGENAME()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->listVillageData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "VillageName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->listVillageData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "villageId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->context:Landroid/content/Context;

    const/high16 v1, 0x20000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
