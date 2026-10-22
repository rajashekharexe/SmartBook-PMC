.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;
.super Ljava/lang/Object;
.source "CategoryFilterDialogAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 312
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->getAdapterPosition()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 316
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->access$200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object p2

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getCategorySelection(I)Ljava/util/ArrayList;

    move-result-object p2

    .line 317
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->ivExpand:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 326
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1

    .line 331
    :cond_3
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->ivExpand:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->ivExpand:Landroid/widget/ImageView;

    const v0, 0x7f080113

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 334
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method
