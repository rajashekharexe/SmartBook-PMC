.class Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5$1;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$1002(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;I)I

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duration---"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Video watch duration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
