.class public Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CategoryFilterDialogAdapter.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnCategoryFilterCheck;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V
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
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->vType:I

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->contextId:I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->selectedItemsMap:Ljava/util/HashMap;

    .line 60
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    .line 62
    new-instance p2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 63
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    .line 64
    new-instance p1, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->animation:Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;I)V
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
            ">;I)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->vType:I

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->contextId:I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->selectedItemsMap:Ljava/util/HashMap;

    .line 68
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->context:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    .line 70
    new-instance p2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 71
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    .line 72
    iput p4, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->contextId:I

    .line 73
    new-instance p1, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->animation:Lcom/conceptglobal/pmc/promotions/utils/ExpandCollapseAnimation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnCategoryFilterCheck;I)V
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
            "I)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->vType:I

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->contextId:I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->selectedItemsMap:Ljava/util/HashMap;

    .line 77
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->context:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    .line 79
    new-instance p2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 80
    iput-object p4, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->onCategoryFilterCheck:Lcom/conceptglobal/pmc/promotions/interfaces/OnCategoryFilterCheck;

    .line 81
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    .line 82
    iput p5, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->contextId:I

    .line 83
    const-string p1, "List of IDs"

    invoke-virtual {p3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->selectedItemsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 223
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->vType:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 225
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->vType:I

    .line 227
    :goto_0
    iget p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->vType:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 105
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 106
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    .line 107
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    .line 109
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getParentCategoryID()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 110
    iget-object v4, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->cbSelectHeader:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v4, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->cbSelectHeader:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 115
    :goto_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    iget-object v2, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->cbSelectHeader:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 118
    :cond_1
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->cbSelectHeader:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    :goto_1
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->tvinputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->tvSelectedIds:Landroid/widget/TextView;

    new-instance v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;

    invoke-direct {v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->tvCategoryNameHeader:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->rlItem:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object p1, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->ivExpand:Landroid/widget/ImageView;

    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$4;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$4;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 198
    :cond_2
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    if-eqz v0, :cond_4

    .line 199
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    .line 200
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    .line 202
    iget-object v3, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->tvCategoryListItem:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

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

    .line 204
    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 206
    :cond_3
    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCategoryFilterCheck()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->selectedItemsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 234
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->selectedItemsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 235
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 236
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 237
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

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

    .line 245
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->selectedItemsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 90
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c006c

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 91
    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 94
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c006d

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeFilres()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 250
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->selectedItemsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 251
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->notifyDataSetChanged()V

    return-void
.end method
