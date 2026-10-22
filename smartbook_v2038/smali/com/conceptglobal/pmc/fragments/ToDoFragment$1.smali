.class Lcom/conceptglobal/pmc/fragments/ToDoFragment$1;
.super Ljava/lang/Object;
.source "ToDoFragment.java"

# interfaces
.implements Landroidx/core/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ToDoFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

.field final synthetic val$searchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Landroidx/appcompat/widget/SearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 660
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$1;->val$searchView:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .line 663
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->access$100(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 664
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->access$100(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 665
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$1;->val$searchView:Landroidx/appcompat/widget/SearchView;

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

    .line 672
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->access$100(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 673
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->access$100(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 674
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$1;->val$searchView:Landroidx/appcompat/widget/SearchView;

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
