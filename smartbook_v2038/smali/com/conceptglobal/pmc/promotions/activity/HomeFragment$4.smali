.class Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$4;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->onAudioActionPerformed(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 453
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
