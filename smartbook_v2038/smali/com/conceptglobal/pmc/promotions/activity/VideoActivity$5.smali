.class Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;
.super Ljava/util/TimerTask;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->timerCounter()V
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

    .line 243
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
