.class Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder$2;
.super Ljava/lang/Object;
.source "CropCategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;-><init>(Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder$2;->this$1:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;

    iput-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder$2;->val$this$0:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder$2;->this$1:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;

    iget-object p1, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->this$0:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->access$000(Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder$2;->this$1:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;

    .line 109
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->isExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->setExpanded(Z)V

    .line 110
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder$2;->this$1:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;

    iget-object p1, p1, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->this$0:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder$2;->this$1:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->notifyItemChanged(I)V

    return-void
.end method
