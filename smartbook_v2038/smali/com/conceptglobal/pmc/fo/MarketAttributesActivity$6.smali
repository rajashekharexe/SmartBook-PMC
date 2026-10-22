.class Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;
.super Ljava/lang/Object;
.source "MarketAttributesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->showRemarkSelectionAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V
    .locals 0

    .line 1373
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1379
    const-string p1, "MarketAttributes"

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->d_remarks:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1382
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getActivityidInLookup(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2302(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;I)I

    .line 1383
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1384
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object p2, v5, p2

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/conceptglobal/pmc/common/Queries;->updateNotSelectedForActivities(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    goto :goto_0

    .line 1386
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object p2, v5, p2

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/conceptglobal/pmc/common/Queries;->updateNotDoneForActivities(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1388
    :goto_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p2, v1, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1390
    :try_start_1
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->getParent()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 1391
    const-string v0, "1"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 1393
    :try_start_2
    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1394
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 1398
    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1401
    :goto_1
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 1402
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1403
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 p1, 0x0

    .line 1405
    sput-boolean p1, Lcom/conceptglobal/pmc/common/Items;->areItemsExist:Z

    .line 1406
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 1407
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1409
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2200(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
