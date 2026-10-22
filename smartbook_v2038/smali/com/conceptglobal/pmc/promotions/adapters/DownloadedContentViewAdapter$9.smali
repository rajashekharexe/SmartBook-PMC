.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$9;
.super Ljava/lang/Object;
.source "DownloadedContentViewAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$9;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$9;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$4600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$9;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$4600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f08016c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 865
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method
