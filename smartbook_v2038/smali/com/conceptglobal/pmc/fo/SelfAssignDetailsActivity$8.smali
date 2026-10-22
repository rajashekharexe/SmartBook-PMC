.class Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$8;
.super Ljava/lang/Object;
.source "SelfAssignDetailsActivity.java"

# interfaces
.implements Landroidx/core/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

.field final synthetic val$searchViewOptions:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Landroidx/appcompat/widget/SearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1182
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$8;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1186
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1187
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1188
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$8;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

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

    .line 1195
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1196
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1197
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$8;->val$searchViewOptions:Landroidx/appcompat/widget/SearchView;

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
