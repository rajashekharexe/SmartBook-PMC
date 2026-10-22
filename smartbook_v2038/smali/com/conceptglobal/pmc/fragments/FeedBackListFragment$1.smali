.class Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$1;
.super Ljava/lang/Object;
.source "FeedBackListFragment.java"

# interfaces
.implements Landroidx/core/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;

.field final synthetic val$searchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;Landroidx/appcompat/widget/SearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 469
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$1;->val$searchView:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .line 472
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->access$000(Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;)Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 473
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->access$000(Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;)Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 474
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$1;->val$searchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .line 481
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->access$000(Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;)Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 482
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->access$000(Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;)Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 483
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$1;->val$searchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
