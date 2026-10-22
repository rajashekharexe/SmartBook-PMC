.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;
.super Ljava/lang/Object;
.source "DownloadedContentViewAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->onAudioActionPerformed(Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

.field final synthetic val$appCompatSeekBar:Landroid/widget/SeekBar;

.field final synthetic val$duration:Landroid/widget/TextView;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 778
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->val$duration:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->val$appCompatSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Duration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->val$view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 786
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->val$view:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$4602(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 787
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->val$duration:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 789
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$4800(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$5;->val$appCompatSeekBar:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$4700(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/widget/SeekBar;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
