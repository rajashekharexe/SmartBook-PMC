.class Lcom/conceptglobal/pmc/fo/UserFormActivity$3;
.super Ljava/lang/Object;
.source "UserFormActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/UserFormActivity;->settingTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 7

    .line 292
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$200(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$200(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/TabHost;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 297
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$300(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result p1

    const-string v2, "farmerType"

    const-string v3, "fromTransaction"

    const-string v4, "farmerid"

    const-string v5, "SegmentId"

    if-ne p1, v0, :cond_1

    .line 298
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    const-class v6, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$300(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result v1

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$400(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v0, "Farmer"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$300(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 305
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    const-class v6, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$300(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result v1

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$400(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v0, "Retailer"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
