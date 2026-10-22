.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$3;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

.field final synthetic val$categories:Ljava/util/ArrayList;

.field final synthetic val$flowLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field final synthetic val$textView2:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 805
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$3;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$3;->val$flowLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$3;->val$categories:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$3;->val$textView2:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 808
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$3;->val$flowLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->removeAllViews()V

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$3;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$3;->val$categories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$3000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 811
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$3;->val$flowLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 813
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$3;->val$flowLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$3;->val$textView2:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    return-void
.end method
