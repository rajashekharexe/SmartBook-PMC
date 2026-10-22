.class Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$5;
.super Ljava/lang/Object;
.source "AudianceFarmersSearchFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$5;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$5;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$5;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$5;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$5;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
