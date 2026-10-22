.class Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$3;
.super Ljava/lang/Object;
.source "VillageDisplayActivity.java"

# interfaces
.implements Landroidx/core/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

.field final synthetic val$searchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;Landroidx/appcompat/widget/SearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$3;->val$searchView:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .line 170
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$200(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$200(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$3;->val$searchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$300(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Landroid/widget/SlidingDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->close()V

    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .line 180
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$200(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$200(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$3;->val$searchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$300(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Landroid/widget/SlidingDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->close()V

    const/4 p1, 0x1

    return p1
.end method
