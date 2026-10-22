.class Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$3;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView$PlayPauseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$102(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;Z)Z

    .line 164
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Pause!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$102(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;Z)Z

    .line 158
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Play!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
