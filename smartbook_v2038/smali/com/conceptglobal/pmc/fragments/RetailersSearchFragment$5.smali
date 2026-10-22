.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$5;
.super Ljava/lang/Object;
.source "RetailersSearchFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


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


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
