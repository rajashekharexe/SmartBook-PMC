.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$2;
.super Ljava/lang/Object;
.source "DownloadedContentViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 447
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$2;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    check-cast p1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3500(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V

    return-void
.end method
