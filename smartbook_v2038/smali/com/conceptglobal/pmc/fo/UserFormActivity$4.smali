.class Lcom/conceptglobal/pmc/fo/UserFormActivity$4;
.super Ljava/lang/Object;
.source "UserFormActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/UserFormActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 8

    .line 487
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$200(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 492
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$300(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result p1

    const-string v1, "farmerType"

    const-string v2, "fromTransaction"

    const-string v3, "farmerid"

    const-string v4, "SegmentId"

    const/4 v5, 0x2

    if-ne p1, v0, :cond_1

    .line 493
    new-instance p1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    const-class v7, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 494
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$300(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result v6

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$400(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    const-string v0, "Farmer"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 499
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$300(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result p1

    if-ne p1, v5, :cond_2

    .line 500
    new-instance p1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    const-class v7, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$300(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result v6

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$400(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    const-string v0, "Retailer"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->startActivity(Landroid/content/Intent;)V

    .line 507
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$200(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :goto_1
    return-void
.end method
