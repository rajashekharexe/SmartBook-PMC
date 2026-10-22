.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH$1;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 710
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH$1;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    check-cast p1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AttachementTypeVH;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2500(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V

    return-void
.end method
