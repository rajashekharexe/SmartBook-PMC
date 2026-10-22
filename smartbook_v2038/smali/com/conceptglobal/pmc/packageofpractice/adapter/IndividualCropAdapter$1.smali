.class Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$1;
.super Ljava/lang/Object;
.source "IndividualCropAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;

.field final synthetic val$cropHolder:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;

.field final synthetic val$individualCropItemModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;

    iput-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$1;->val$individualCropItemModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    iput p3, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$1;->val$position:I

    iput-object p4, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$1;->val$cropHolder:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 68
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;->access$000(Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;)Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$1;->val$individualCropItemModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    iget v1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$1;->val$cropHolder:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;

    iget-object v2, v2, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;->individualCropClick(Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;Z)V

    return-void
.end method
