.class Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "AudianceFarmersSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V
    .locals 0

    .line 1309
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1311
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    const/4 p1, 0x0

    .line 1313
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$1;)V
    .locals 0

    .line 1309
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1309
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 8

    const/4 v0, 0x0

    .line 1325
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 1326
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 1329
    :try_start_0
    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1333
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v3, "4"

    const-string v4, "8"

    const-string v5, "Village"

    const-string v6, "Planter"

    const-string v7, "Farmer"

    if-eqz p1, :cond_3

    .line 1334
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1337
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->sourceQry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto/16 :goto_1

    .line 1338
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "Retailer"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1339
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->sourceQry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindDataDynamicRadius(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto/16 :goto_1

    .line 1340
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1341
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    iget-object v5, v5, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->query:Ljava/lang/String;

    invoke-virtual {v3, v5, v4, v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto/16 :goto_1

    .line 1342
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1343
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    iget-object v5, v5, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->query:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto :goto_1

    .line 1346
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1347
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    iget-object v3, v3, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->query:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmersByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto :goto_1

    .line 1348
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1349
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    iget-object v3, v3, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->query:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmersByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    goto :goto_1

    .line 1350
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1351
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    iget-object v4, v4, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->query:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardData(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmersByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1309
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 1360
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1361
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1362
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1364
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1365
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3400(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/util/List;)V

    goto :goto_0

    .line 1367
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3500(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1317
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1318
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    const-string v1, "Please wait"

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3200(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
