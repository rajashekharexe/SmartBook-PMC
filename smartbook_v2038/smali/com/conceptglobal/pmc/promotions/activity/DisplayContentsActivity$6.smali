.class Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$6;
.super Ljava/lang/Object;
.source "DisplayContentsActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->onAudioActionPerformed(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$6;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 549
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
