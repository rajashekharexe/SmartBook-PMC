.class public Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoryFilterDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryItemVH"
.end annotation


# instance fields
.field public cbSelect:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

.field public tvCategoryListItem:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;Landroid/view/View;)V
    .locals 1

    .line 260
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    .line 261
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0903d6

    .line 262
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->cbSelect:Landroid/widget/CheckBox;

    const v0, 0x7f090507

    .line 263
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->tvCategoryListItem:Landroid/widget/TextView;

    .line 265
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;->cbSelect:Landroid/widget/CheckBox;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryItemVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
