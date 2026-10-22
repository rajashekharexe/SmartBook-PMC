.class Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$4;
.super Ljava/lang/Object;
.source "VideoCapureActivityCopy2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 456
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$1100(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0801d0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 457
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$700(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$600(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->onBackPressed()V

    return-void
.end method
