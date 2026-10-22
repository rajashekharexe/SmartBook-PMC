.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;
.super Ljava/lang/Object;
.source "FarmerFormActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 1402
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 5

    .line 1405
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    .line 1406
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1408
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;I)V

    return-void

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v0

    const/16 v3, 0x12

    if-eq v0, v3, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 1413
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1415
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    if-eq p1, v2, :cond_a

    if-ne p1, v0, :cond_a

    .line 1419
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1420
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->methodToGetData(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 1421
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1422
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_2

    .line 1423
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1424
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_2

    .line 1426
    :cond_4
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    if-eq p1, v1, :cond_6

    .line 1432
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1434
    :cond_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    if-eq p1, v2, :cond_a

    if-ne p1, v1, :cond_a

    .line 1438
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1439
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_2

    .line 1440
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1441
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_2

    .line 1442
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1443
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_2

    .line 1445
    :cond_9
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->methodToGetData(Landroid/content/Context;)V

    :cond_a
    :goto_2
    return-void
.end method
