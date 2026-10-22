.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;
.super Ljava/lang/Object;
.source "FarmerFormActivity_Expenses.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V
    .locals 0

    .line 1378
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 5

    .line 1381
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$802(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;I)I

    .line 1382
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    .line 1383
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1385
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;I)V

    return-void

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v0

    const/16 v3, 0xb

    if-eq v0, v3, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1392
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    if-eq p1, v2, :cond_f

    if-ne p1, v1, :cond_f

    .line 1396
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1397
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->methodToGetData(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1398
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1399
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->methodToGetData(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1400
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1401
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->methodToGetData(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1403
    :cond_4
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->methodToGetData(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1406
    :cond_5
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v0

    const/16 v3, 0x61f

    if-ne v0, v3, :cond_a

    if-eq p1, v1, :cond_6

    .line 1408
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    if-ne p1, v2, :cond_f

    .line 1414
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1415
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 1416
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1417
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 1418
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1419
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 1421
    :cond_9
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    :cond_a
    if-eq p1, v1, :cond_b

    .line 1426
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    if-eq p1, v2, :cond_f

    if-ne p1, v1, :cond_f

    .line 1432
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1433
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 1434
    :cond_c
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1435
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 1436
    :cond_d
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1437
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 1439
    :cond_e
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->methodToGetData(Landroid/content/Context;)V

    :cond_f
    :goto_1
    return-void
.end method
