.class Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$4;
.super Ljava/lang/Object;
.source "VideoCaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 299
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$802(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;[B)[B

    .line 300
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$900(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0801d0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$500(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->onBackPressed()V

    return-void
.end method
