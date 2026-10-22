.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$8;
.super Ljava/lang/Object;
.source "DownloadedContentViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->mUpdateTimeTask(Landroid/widget/SeekBar;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 834
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$8;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$8;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 836
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$8;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$8;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 839
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$8;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3600(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    .line 846
    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getProgressPercentage(JJ)I

    move-result v0

    .line 848
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$8;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 851
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$8;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$4800(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
