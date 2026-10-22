.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH$1;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH$1;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 322
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "ContentList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 324
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v0

    const-string v1, "Position"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    .line 325
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 326
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
