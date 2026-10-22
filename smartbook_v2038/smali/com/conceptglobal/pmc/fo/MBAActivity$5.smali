.class Lcom/conceptglobal/pmc/fo/MBAActivity$5;
.super Ljava/lang/Object;
.source "MBAActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/MBAActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    .line 595
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$400(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 596
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$500(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 598
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$500(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 601
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$400(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 602
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$600(Lcom/conceptglobal/pmc/fo/MBAActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 603
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 605
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->methodToGetData(Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void
.end method
