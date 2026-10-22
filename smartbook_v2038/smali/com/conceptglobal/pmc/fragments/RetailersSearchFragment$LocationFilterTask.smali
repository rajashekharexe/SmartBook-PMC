.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;
.super Landroid/os/AsyncTask;
.source "RetailersSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationFilterTask"
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

    .line 1407
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 1410
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->keyword:Ljava/lang/String;

    .line 1411
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->data:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$1;)V
    .locals 0

    .line 1407
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1407
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 9

    .line 1428
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Distributor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Dealer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1431
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v4, v4, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->query:Ljava/lang/String;

    aget-object v5, p1, v2

    const-string v6, "2"

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/conceptglobal/pmc/common/Queries;->getAllRetailersDashboardDataWithRadius(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindDataDynamicRadiusNew(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->data:Ljava/util/List;

    goto :goto_1

    .line 1429
    :cond_1
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v4, v4, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->query:Ljava/lang/String;

    aget-object v5, p1, v2

    const-string v6, "3"

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/conceptglobal/pmc/common/Queries;->getAllRetailersDashboardDataWithRadius(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindDataDynamicRadiusNew(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->data:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1407
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 1450
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1451
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1452
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->keyword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1453
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3900(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/util/List;)V

    goto :goto_0

    .line 1455
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 1415
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1416
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1417
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Retailer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getting nearest retailers  started"

    invoke-static {v0, v3, v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Distributor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dealer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1420
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getting nearest Dealers  started"

    invoke-static {v0, v3, v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
