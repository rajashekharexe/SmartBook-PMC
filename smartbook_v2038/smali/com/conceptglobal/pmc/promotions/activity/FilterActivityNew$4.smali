.class Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$4;
.super Ljava/lang/Object;
.source "FilterActivityNew.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 236
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 237
    const-string v0, "categories"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v0, "contentType"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->setResult(ILandroid/content/Intent;)V

    .line 240
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->finish()V

    const/4 p1, 0x0

    return p1
.end method
