.class Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;
.super Ljava/lang/Object;
.source "FarmerSelectionActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


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


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$000(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeedBack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$100(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$100(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$200(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$200(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$000(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeedBack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$100(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$100(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$200(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$200(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
