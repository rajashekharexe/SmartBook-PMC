.class Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 176
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 13

    .line 179
    new-instance p1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "WatchStatus"

    invoke-virtual {p1, v2, v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->updateWatchStatus(Ljava/lang/String;II)V

    .line 185
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    iget-object v0, p1, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I

    move-result v1

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$500(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I

    move-result v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I

    move-result v3

    new-instance p1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getUserId()I

    move-result v4

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTimeForLogs()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$700(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Z

    move-result v6

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Z

    move-result v7

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$900(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I

    move-result v8

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I

    move-result v10

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I

    move-result v11

    const-string v12, "ContentID"

    const-string v9, "DURATION"

    invoke-virtual/range {v0 .. v12}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->insertContentLog(IIIILjava/lang/String;ZZILjava/lang/String;IILjava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$1100(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$1100(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->finish()V

    return-void
.end method
