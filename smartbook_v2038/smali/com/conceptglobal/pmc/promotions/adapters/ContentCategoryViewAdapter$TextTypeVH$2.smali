.class Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$2;
.super Ljava/lang/Object;
.source "ContentCategoryViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 692
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$2;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 695
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 696
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    iget-object v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->access$3900(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
