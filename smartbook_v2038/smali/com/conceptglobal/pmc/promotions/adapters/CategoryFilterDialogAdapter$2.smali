.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$2;
.super Ljava/lang/Object;
.source "CategoryFilterDialogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

.field final synthetic val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$2;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$2;->val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$2;->val$viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->rlItem:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->performClick()Z

    return-void
.end method
