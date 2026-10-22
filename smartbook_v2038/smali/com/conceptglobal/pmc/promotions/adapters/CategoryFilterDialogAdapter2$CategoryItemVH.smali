.class public Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoryFilterDialogAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryItemVH"
.end annotation


# instance fields
.field public cbSelect:Landroid/widget/RadioButton;

.field public flName:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;Landroid/view/View;)V
    .locals 1

    .line 187
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    .line 188
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0903d6

    .line 189
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;->cbSelect:Landroid/widget/RadioButton;

    .line 192
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2$CategoryItemVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;)V

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
