.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$2;
.super Ljava/lang/Object;
.source "DownloadedContentViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 512
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$2;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 515
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3400(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;I)V

    return-void
.end method
