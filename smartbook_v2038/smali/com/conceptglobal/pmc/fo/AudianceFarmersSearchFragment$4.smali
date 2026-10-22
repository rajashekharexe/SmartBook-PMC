.class Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$4;
.super Ljava/lang/Object;
.source "AudianceFarmersSearchFragment.java"

# interfaces
.implements Landroidx/core/view/MenuItemCompat$OnActionExpandListener;


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

.field final synthetic val$searchViewOptions:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Landroidx/appcompat/widget/SearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 489
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$4;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$4;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .line 493
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$4;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 494
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$4;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 495
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$4;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_EMPTY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .line 502
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$4;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 503
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$4;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 504
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$4;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

    sget-object v0, Lcom/conceptglobal/pmc/common/Astat;->KEY_EMPTY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
