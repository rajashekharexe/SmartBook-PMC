.class Lcom/conceptglobal/pmc/fragments/DraftFragment$2;
.super Ljava/lang/Object;
.source "DraftFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/DraftFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/DraftFragment;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
