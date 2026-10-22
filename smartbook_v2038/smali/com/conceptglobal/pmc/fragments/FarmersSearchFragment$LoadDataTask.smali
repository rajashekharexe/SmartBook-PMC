.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "FarmersSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DashboardListModel;",
            ">;"
        }
    .end annotation
.end field

.field keyword:Ljava/lang/String;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 0

    .line 1453
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1455
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    const/4 p1, 0x0

    .line 1457
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$1;)V
    .locals 0

    .line 1453
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1453
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 8

    const/4 v0, 0x0

    .line 1469
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x1

    .line 1470
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x2

    .line 1473
    :try_start_0
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1477
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "8"

    const-string v2, "Village"

    const-string v3, "Planter"

    const-string v6, "Farmer"

    if-eqz p1, :cond_4

    .line 1478
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1479
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    const-string v1, "Fellow Farmer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->parentSaarthieFarmerID:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1480
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->query:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v6, v3, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v7, v3, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->parentSaarthieFarmerID:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual/range {v1 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardDataFellowFarmer(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1New(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto/16 :goto_1

    .line 1482
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->query:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v6, v3, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1New(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto/16 :goto_1

    .line 1484
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1485
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v3, v3, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->query:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto/16 :goto_1

    .line 1486
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1487
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->query:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v6, v3, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    const-string v3, "4"

    invoke-virtual/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardDataVillage(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto/16 :goto_1

    .line 1488
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UnVerifiedFarmer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1489
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->query:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardDataForUnverifiedFarmers(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto/16 :goto_1

    .line 1492
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1493
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v2, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->query:Ljava/lang/String;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v6, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmersByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto :goto_1

    .line 1494
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1495
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->query:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmersByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto :goto_1

    .line 1496
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1497
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->query:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmersByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1453
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 1506
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1507
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1508
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1510
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1511
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/util/List;)V

    goto :goto_0

    .line 1513
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/util/List;)V

    .line 1515
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    const-string v0, ""

    iput-object v0, p1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->parentSaarthieFarmerID:Ljava/lang/String;

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1461
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1462
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    const-string v1, "Please wait"

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3200(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
