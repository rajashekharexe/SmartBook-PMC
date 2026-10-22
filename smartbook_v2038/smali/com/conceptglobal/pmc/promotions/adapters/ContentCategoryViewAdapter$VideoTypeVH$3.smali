.class Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$3;
.super Ljava/lang/Object;
.source "ContentCategoryViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 492
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$3;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 495
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 496
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3400(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "ContentList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 497
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const-string v1, "Position"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    .line 498
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
