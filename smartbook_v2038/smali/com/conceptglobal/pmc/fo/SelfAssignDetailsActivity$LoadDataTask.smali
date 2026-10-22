.class Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "SelfAssignDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;
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
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;"
        }
    .end annotation
.end field

.field keyword:Ljava/lang/String;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V
    .locals 0

    .line 1281
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1283
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->data:Ljava/util/List;

    const/4 p1, 0x0

    .line 1285
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->keyword:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$1;)V
    .locals 0

    .line 1281
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1281
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5

    const/4 v0, 0x0

    .line 1289
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 1290
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 1293
    :try_start_0
    aget-object p1, p1, v4

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->keyword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    :catch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I

    move-result p1

    if-eq p1, v2, :cond_6

    if-eq p1, v4, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1317
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    const-string v0, "VCP"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2800(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->data:Ljava/util/List;

    goto :goto_0

    .line 1314
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    const-string v0, "Planter"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2800(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->data:Ljava/util/List;

    goto :goto_0

    .line 1311
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2900(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/common/Queries;->getTerritoryNamesListQuery(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCustomTypeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->data:Ljava/util/List;

    goto :goto_0

    .line 1308
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2900(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/common/Queries;->getVillageNamesListQuery(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCustomTypeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->data:Ljava/util/List;

    goto :goto_0

    .line 1305
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    const-string v0, "Distributor"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2800(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->data:Ljava/util/List;

    goto :goto_0

    .line 1302
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    const-string v0, "Retailer"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2800(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->data:Ljava/util/List;

    goto :goto_0

    .line 1299
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    const-string v0, "Farmer"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2800(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->data:Ljava/util/List;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1281
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 1327
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1328
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->keyword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1329
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$3000(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/util/List;)V

    goto :goto_0

    .line 1331
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LoadDataTask;->data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$3100(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/util/List;)V

    :goto_0
    return-void
.end method
