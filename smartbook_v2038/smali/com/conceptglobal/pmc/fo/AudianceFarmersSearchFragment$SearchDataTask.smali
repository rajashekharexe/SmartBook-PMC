.class Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;
.super Landroid/os/AsyncTask;
.source "AudianceFarmersSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchDataTask"
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V
    .locals 0

    .line 1401
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1402
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$1;)V
    .locals 0

    .line 1401
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1401
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 14

    const/4 v0, 0x0

    .line 1407
    aget-object v2, p1, v0

    .line 1408
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Farmer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1409
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 1410
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    .line 1411
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3600(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3900(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$4000(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$4100(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v8

    const-string v12, ""

    const-string v13, "1"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    invoke-virtual/range {v1 .. v13}, Lcom/conceptglobal/pmc/common/Queries;->searchQueryLatLongNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1410
    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    goto/16 :goto_0

    .line 1413
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    .line 1414
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3600(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3900(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$4000(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$4100(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v8

    const-string v12, ""

    const-string v13, "1"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    invoke-virtual/range {v1 .. v13}, Lcom/conceptglobal/pmc/common/Queries;->searchQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1413
    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    goto/16 :goto_0

    .line 1416
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Planter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1417
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    .line 1418
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3600(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3900(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$4000(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$4100(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v8

    const-string v12, ""

    const-string v13, "8"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    invoke-virtual/range {v1 .. v13}, Lcom/conceptglobal/pmc/common/Queries;->searchQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1417
    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    goto :goto_0

    .line 1419
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Village"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1420
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    .line 1421
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3600(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3900(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$4000(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$4100(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v8

    const-string v12, ""

    const-string v13, "4"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    invoke-virtual/range {v1 .. v13}, Lcom/conceptglobal/pmc/common/Queries;->searchQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1420
    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1401
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 12

    .line 1429
    const-string v0, "FarmersSearchFragment"

    const-string v1, ""

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1431
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1432
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1435
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1900(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1436
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$4200(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/ifastscroll/FastScroller;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 1440
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-lez p1, :cond_2

    .line 1442
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1, v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1202(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Z)Z

    .line 1443
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1444
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3000(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V

    goto/16 :goto_0

    .line 1446
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1456
    :try_start_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1457
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    new-instance v11, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/util/List;

    move-result-object v4

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget v8, v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->segmentId:I

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget-boolean v9, v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->isFromSelfAssignment:Z

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/conceptglobal/pmc/fo/IUpdateFarmersCount;)V

    invoke-static {p1, v11}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$802(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    .line 1458
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1900(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_0

    .line 1461
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1464
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1465
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1469
    :try_start_4
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1472
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    new-instance v11, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/util/List;

    move-result-object v4

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget v8, v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->segmentId:I

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget-boolean v9, v2, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->isFromSelfAssignment:Z

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/conceptglobal/pmc/fo/IUpdateFarmersCount;)V

    invoke-static {p1, v11}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$802(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    .line 1473
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1900(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1476
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$4200(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/ifastscroll/FastScroller;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1900(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1477
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3602(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1478
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3702(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1479
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3802(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1480
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$3902(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1481
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$4002(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1482
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$4102(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1484
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
