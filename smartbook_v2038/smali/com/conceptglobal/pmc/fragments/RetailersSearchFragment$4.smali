.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$4;
.super Ljava/lang/Object;
.source "RetailersSearchFragment.java"

# interfaces
.implements Landroidx/core/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

.field final synthetic val$searchViewOptions:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Landroidx/appcompat/widget/SearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 580
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$4;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .line 584
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 585
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 586
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$4;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_EMPTY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .line 593
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 594
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 595
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$4;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_EMPTY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
