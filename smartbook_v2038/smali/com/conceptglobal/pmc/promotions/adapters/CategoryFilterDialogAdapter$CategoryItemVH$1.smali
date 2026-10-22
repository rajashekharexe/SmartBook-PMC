.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;
.super Ljava/lang/Object;
.source "CategoryFilterDialogAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 268
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->getAdapterPosition()I

    move-result p1

    if-eqz p2, :cond_0

    .line 270
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

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

    if-nez p2, :cond_1

    .line 271
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

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

    if-eqz p2, :cond_1

    .line 275
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object p2, p2, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->listOfCategoriesFiltered:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

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

    :cond_1
    :goto_0
    return-void
.end method
