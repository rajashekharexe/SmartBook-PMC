.class Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment$1;
.super Ljava/lang/Object;
.source "VillageSelectionFragment.java"

# interfaces
.implements Landroidx/core/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;

.field final synthetic val$searchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;Landroidx/appcompat/widget/SearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment$1;->val$searchView:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .line 167
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->access$000(Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;)Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->access$000(Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;)Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment$1;->val$searchView:Landroidx/appcompat/widget/SearchView;

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

    .line 176
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->access$000(Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;)Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;->access$000(Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment;)Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/VillageSelectionFragment$1;->val$searchView:Landroidx/appcompat/widget/SearchView;

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
