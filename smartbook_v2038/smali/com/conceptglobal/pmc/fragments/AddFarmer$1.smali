.class Lcom/conceptglobal/pmc/fragments/AddFarmer$1;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .line 419
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 420
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->clearFocus()V

    .line 421
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 422
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    :goto_0
    return-void
.end method
