.class Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$2;
.super Ljava/lang/Object;
.source "FeedBackListFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


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


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->access$000(Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;)Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->access$000(Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;)Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->access$000(Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;)Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->access$000(Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;)Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
