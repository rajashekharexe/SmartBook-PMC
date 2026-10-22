.class Lcom/conceptglobal/pmc/promotions/activity/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->onAudioActionPerformed(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 327
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
