.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$3;
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

    .line 453
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$3;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 456
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 457
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Please stop the audio"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AudioTypeVH;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3400(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;I)V

    :goto_0
    return-void
.end method
