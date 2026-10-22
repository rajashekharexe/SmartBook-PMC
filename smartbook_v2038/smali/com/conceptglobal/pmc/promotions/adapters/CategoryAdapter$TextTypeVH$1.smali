.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH$1;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 501
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH$1;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 504
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 505
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$TextTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
