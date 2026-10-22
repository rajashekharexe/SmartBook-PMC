.class Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$7;
.super Ljava/lang/Object;
.source "ContentViewAdapterNew.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$7;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$7;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$3900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$7;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$3900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f08016c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1140
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 1141
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$7;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$4100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$7;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$4300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
