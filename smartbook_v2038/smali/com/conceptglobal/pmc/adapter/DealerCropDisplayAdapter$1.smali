.class Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$1;
.super Ljava/lang/Object;
.source "DealerCropDisplayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;)Lcom/conceptglobal/pmc/interfaces/OnCropItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter;)Lcom/conceptglobal/pmc/interfaces/OnCropItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/pmc/adapter/DealerCropDisplayAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/conceptglobal/pmc/interfaces/OnCropItemClickListener;->onCropListItemClick(I)V

    :cond_0
    return-void
.end method
