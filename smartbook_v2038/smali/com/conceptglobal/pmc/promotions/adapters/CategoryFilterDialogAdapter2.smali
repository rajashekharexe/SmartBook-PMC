.class public Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CategoryFilterDialogAdapter2.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnCategoryFilterCheck;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/conceptglobal/pmc/promotions/interfaces/OnCategoryFilterCheck;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_HEADER:I = 0x1

.field private static final VIEW_TYPE_ITEM:I = 0x2


# instance fields
.field private animation:Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;

.field private categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

.field private context:Landroid/content/Context;

.field private contextId:I

.field final listOfCategoriesFiltered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final masters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;",
            ">;"
        }
    .end annotation
.end field

.field private onCategoryFilterCheck:Lcom/conceptglobal/pmc/promotions/interfaces/OnCategoryFilterCheck;

.field private selectedItemsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private vType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnCategoryFilterCheck;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/conceptglobal/pmc/promotions/interfaces/OnCategoryFilterCheck;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->vType:I

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->contextId:I

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    .line 60
    new-instance p2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 61
    iput-object p4, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->onCategoryFilterCheck:Lcom/conceptglobal/pmc/promotions/interfaces/OnCategoryFilterCheck;

    .line 62
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    .line 63
    const-string p1, "List of IDs"

    invoke-virtual {p3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/HashMap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->vType:I

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->contextId:I

    .line 48
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    .line 50
    new-instance p2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 51
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    .line 52
    new-instance p1, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->animation:Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;

    .line 53
    iput-object p4, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->selectedItemsMap:Ljava/util/HashMap;

    .line 54
    iput p5, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->contextId:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)Ljava/util/HashMap;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->selectedItemsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->contextId:I

    return p0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->selectedItemsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 156
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 164
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->vType:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 166
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->vType:I

    .line 168
    :goto_0
    iget p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->vType:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 85
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 86
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    .line 87
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    .line 89
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getParentCategoryID()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 90
    iget-object v3, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->cbSelectHeader:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v3, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->cbSelectHeader:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 95
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    iget-object v2, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->cbSelectHeader:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 98
    :cond_1
    iget-object v1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->cbSelectHeader:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    :goto_1
    iget-object v1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->tvCategoryNameHeader:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->ivExpand:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 130
    :cond_2
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    if-eqz v0, :cond_4

    .line 131
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    .line 132
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    .line 134
    iget-object v3, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->cbSelect:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 140
    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->cbSelect:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 142
    :cond_3
    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->cbSelect:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCategoryFilterCheck()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCategoryselectedItems()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 70
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c006c

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 71
    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 74
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c006b

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
