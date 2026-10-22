.class Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;
.super Ljava/lang/Object;
.source "ContentViewAdapterNew.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->onAudioActionPerformed(Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

.field final synthetic val$appCompatSeekBar:Landroid/widget/SeekBar;

.field final synthetic val$duration:Landroid/widget/TextView;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1071
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->val$duration:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->val$appCompatSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1074
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1077
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

    .line 1078
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->val$view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1079
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->val$view:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$3902(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1080
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->val$duration:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1082
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$4100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;->val$appCompatSeekBar:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$4000(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Landroid/widget/SeekBar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
