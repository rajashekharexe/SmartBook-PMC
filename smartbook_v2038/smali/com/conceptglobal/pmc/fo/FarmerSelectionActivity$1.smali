.class Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;
.super Ljava/lang/Object;
.source "FarmerSelectionActivity.java"

# interfaces
.implements Landroidx/core/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

.field final synthetic val$searchViewOptions:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Landroidx/appcompat/widget/SearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 486
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .line 489
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$000(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FeedBack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p1, :cond_0

    .line 490
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$100(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 491
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$100(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 492
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 495
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$200(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 496
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$200(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 497
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .line 506
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$000(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FeedBack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p1, :cond_0

    .line 507
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$100(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 508
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$100(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 509
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 512
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$200(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 513
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$200(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 514
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
