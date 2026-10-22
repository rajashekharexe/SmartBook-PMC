.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "RetailersSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V
    .locals 0

    .line 1488
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1490
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    const/4 p1, 0x0

    .line 1492
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$1;)V
    .locals 0

    .line 1488
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1488
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 8

    const/4 v0, 0x0

    .line 1504
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x1

    .line 1505
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x2

    .line 1508
    :try_start_0
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1513
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "Dealer"

    const-string v2, "3"

    const-string v3, "Distributor"

    if-eqz p1, :cond_3

    .line 1514
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 1516
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UnVerifiedRetailer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1517
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->query:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v6, v3, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fromFavourites:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardDataForUnverifiedRetailers(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindDataDynamicRadius(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto/16 :goto_3

    .line 1519
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->query:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v6, v3, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fromFavourites:Ljava/lang/String;

    const-string v7, ""

    const-string v3, "2"

    invoke-virtual/range {v1 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->getAllRetailersDashboardData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindDataDynamicRadius(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto :goto_3

    .line 1515
    :cond_2
    :goto_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v3, v3, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->query:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getAllRetailersDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindDataDynamicRadiusNew(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto :goto_3

    .line 1530
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 1533
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v2, v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->query:Ljava/lang/String;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v6, v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fromFavourites:Ljava/lang/String;

    const-string v7, ""

    const-string v3, "2"

    invoke-virtual/range {v1 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->getAllRetailersDashboardData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->addRretailersGetRetailersByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto :goto_3

    .line 1531
    :cond_5
    :goto_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->query:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getAllRetailersDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->addRretailersGetRetailersByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1488
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 1542
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1543
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1544
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1546
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1547
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3900(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/util/List;)V

    goto :goto_0

    .line 1549
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1496
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1497
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    const-string v1, "Please wait"

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4100(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
