.class Lcom/conceptglobal/pmc/fragments/AddRetailer$1;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .line 417
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 418
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 419
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 426
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    :goto_0
    return-void
.end method
