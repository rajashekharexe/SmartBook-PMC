.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;
.super Ljava/lang/Object;
.source "SAAttributeActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V
    .locals 0

    .line 1315
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 7

    .line 1319
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1321
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)V

    return-void

    .line 1324
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I

    move-result p1

    const/4 v0, 0x3

    const/16 v1, 0x12

    const/16 v2, 0xa

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq p1, v3, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I

    move-result p1

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 1325
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 1326
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1327
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 1331
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getActivityDisplayType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1333
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :goto_0
    if-eqz p1, :cond_2

    .line 1335
    const-string v5, "2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1336
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 1338
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 1344
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    if-ne p1, v4, :cond_5

    .line 1345
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1346
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 1348
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->methodToGetData(Landroid/content/Context;)V

    .line 1356
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I

    move-result p1

    const/4 v5, 0x0

    if-eq p1, v3, :cond_7

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I

    move-result p1

    if-eq p1, v2, :cond_7

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I

    move-result p1

    if-eq p1, v1, :cond_7

    .line 1357
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 1358
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1360
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1363
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    if-ne p1, v4, :cond_8

    .line 1364
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1366
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    return-void
.end method
