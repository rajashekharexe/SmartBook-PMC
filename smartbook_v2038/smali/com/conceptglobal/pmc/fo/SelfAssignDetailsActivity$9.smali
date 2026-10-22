.class Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$9;
.super Ljava/lang/Object;
.source "SelfAssignDetailsActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


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


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V
    .locals 0

    .line 1202
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
