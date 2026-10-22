.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;
.super Ljava/lang/Object;
.source "CategoryFilterDialogAdapter2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

.field final synthetic val$position:I

.field final synthetic val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    iput p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 105
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(Z)V

    .line 110
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->ivExpand:Landroid/widget/ImageView;

    const v0, 0x7f080173

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->access$000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getCategorySelection(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 112
    new-instance p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->access$100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v5, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->access$200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->access$300(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)I

    move-result v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/HashMap;I)V

    .line 114
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->filterStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->ivExpand:Landroid/widget/ImageView;

    const v2, 0x7f080113

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->access$200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->access$200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->filterStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$1;->val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->filterStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
