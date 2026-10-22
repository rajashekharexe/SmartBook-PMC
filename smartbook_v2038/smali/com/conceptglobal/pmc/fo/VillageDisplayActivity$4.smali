.class Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$4;
.super Ljava/lang/Object;
.source "VillageDisplayActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


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


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$200(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$200(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$300(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Landroid/widget/SlidingDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->close()V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$200(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$200(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$300(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Landroid/widget/SlidingDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->close()V

    const/4 p1, 0x1

    return p1
.end method
