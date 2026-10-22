.class Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$3;
.super Ljava/lang/Object;
.source "FilterActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 193
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 194
    const-string v0, "categories"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v0, "contentType"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 197
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->finish()V

    const/4 p1, 0x0

    return p1
.end method
