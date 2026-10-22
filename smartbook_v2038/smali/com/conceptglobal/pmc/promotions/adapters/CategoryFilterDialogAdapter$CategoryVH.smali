.class public Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoryFilterDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryVH"
.end annotation


# instance fields
.field public cbSelectHeader:Landroid/widget/CheckBox;

.field public ivExpand:Landroid/widget/ImageView;

.field public llm:Landroidx/recyclerview/widget/LinearLayoutManager;

.field rlItem:Landroid/widget/RelativeLayout;

.field public rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

.field public tvCategoryNameHeader:Lcom/google/android/material/textfield/TextInputEditText;

.field tvSelectedIds:Landroid/widget/TextView;

.field public tvinputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;Landroid/view/View;)V
    .locals 2

    .line 294
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    .line 295
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0903d6

    .line 297
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->cbSelectHeader:Landroid/widget/CheckBox;

    const v0, 0x7f090506

    .line 298
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->tvCategoryNameHeader:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f09057b

    .line 299
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->tvSelectedIds:Landroid/widget/TextView;

    const v0, 0x7f090283

    .line 300
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->tvinputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0901dc

    .line 301
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->ivExpand:Landroid/widget/ImageView;

    const v0, 0x7f0903a6

    .line 302
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090392

    .line 303
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->rlItem:Landroid/widget/RelativeLayout;

    .line 304
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->access$100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    .line 305
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 306
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 307
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 308
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->rvSubCategory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 309
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->cbSelectHeader:Landroid/widget/CheckBox;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
