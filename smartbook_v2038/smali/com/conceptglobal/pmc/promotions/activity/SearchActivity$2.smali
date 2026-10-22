.class Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select CategoryId from CategoryMaster where CategoryName=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$302(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$402(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;I)I

    .line 148
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$500(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
