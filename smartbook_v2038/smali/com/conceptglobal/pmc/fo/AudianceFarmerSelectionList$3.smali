.class Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$3;
.super Ljava/lang/Object;
.source "AudianceFarmerSelectionList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showWalkthrough()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$3;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 565
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$3;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$400(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 572
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 574
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 576
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$3;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$500(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Lcom/conceptglobal/pmc/views/CustomViewPager;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/views/CustomViewPager;->setCurrentItem(I)V

    .line 577
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$3;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$600(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V

    .line 578
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$3;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$700(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hide()V

    .line 579
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$3;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$800(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setEnabled(Z)V

    .line 581
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$3;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Testing"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
