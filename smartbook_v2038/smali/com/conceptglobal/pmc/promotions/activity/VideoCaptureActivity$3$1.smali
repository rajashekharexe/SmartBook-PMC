.class Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3$1;
.super Ljava/lang/Object;
.source "VideoCaptureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->checkinsertdata()V

    .line 269
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3$1$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3$1$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
