.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;
.super Ljava/lang/Object;
.source "CategoryFilterDialogAdapter2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 195
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->getAdapterPosition()I

    move-result p1

    .line 197
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->access$200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getParentCategoryID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->access$200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getParentCategoryID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    .line 201
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->access$200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getParentCategoryID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->cbSelect:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->cbSelect:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 206
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->cbSelect:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 207
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 211
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->cbSelect:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 214
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->cbSelect:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 215
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v3, v3, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v3, v3, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->masters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method
