.class public Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoryFilterDialogAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryVH"
.end annotation


# instance fields
.field public cbSelectHeader:Landroid/widget/CheckBox;

.field public filterStatus:Landroid/widget/TextView;

.field public ivExpand:Landroid/widget/ImageView;

.field public llm:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

.field public tvCategoryNameHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;Landroid/view/View;)V
    .locals 4

    .line 264
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    .line 265
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0903d6

    .line 267
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->cbSelectHeader:Landroid/widget/CheckBox;

    const v0, 0x7f090506

    .line 268
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->tvCategoryNameHeader:Landroid/widget/TextView;

    const v0, 0x7f090535

    .line 269
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->filterStatus:Landroid/widget/TextView;

    const v0, 0x7f0901dc

    .line 270
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->ivExpand:Landroid/widget/ImageView;

    const v0, 0x7f0903a6

    .line 271
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    .line 273
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->access$100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 275
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->access$100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 276
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 277
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 278
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;->cbSelectHeader:Landroid/widget/CheckBox;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
