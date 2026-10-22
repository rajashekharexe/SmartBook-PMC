.class Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$2;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 139
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$000(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$000(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$000(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->mediacontroller:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->mediacontroller:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$102(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;Z)Z

    .line 149
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)V

    return-void
.end method
