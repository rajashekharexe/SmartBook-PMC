.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;
.super Landroid/os/AsyncTask;
.source "FarmersSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 0

    .line 1548
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1549
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$1;)V
    .locals 0

    .line 1548
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1548
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1554
    aget-object v3, p1, v1

    .line 1555
    iget-object v1, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Farmer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v15, 0x1

    if-eqz v1, :cond_1

    .line 1556
    iget-object v1, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1557
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    .line 1558
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4200(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v13}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v14, v14, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    const-string v16, "1"

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    const/4 v0, 0x1

    move-object/from16 v15, v17

    invoke-virtual/range {v2 .. v15}, Lcom/conceptglobal/pmc/common/Queries;->searchQueryLatLongNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1557
    invoke-virtual {v1, v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1New(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    goto/16 :goto_0

    :cond_0
    move-object v1, v0

    const/4 v0, 0x1

    .line 1560
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v15

    .line 1561
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4200(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v13}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v14, v14, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    const-string v16, "1"

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    move-object v1, v15

    move-object/from16 v15, v17

    invoke-virtual/range {v2 .. v15}, Lcom/conceptglobal/pmc/common/Queries;->searchQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1560
    invoke-virtual {v1, v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1New(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    goto/16 :goto_0

    :cond_1
    move-object v1, v0

    const/4 v0, 0x1

    .line 1563
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Planter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1564
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v15

    .line 1565
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4200(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v13}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "8"

    invoke-virtual/range {v2 .. v14}, Lcom/conceptglobal/pmc/common/Queries;->searchQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1564
    invoke-virtual {v15, v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    goto/16 :goto_0

    .line 1566
    :cond_2
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Village"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1567
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v15

    .line 1568
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4200(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v13}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "4"

    invoke-virtual/range {v2 .. v14}, Lcom/conceptglobal/pmc/common/Queries;->searchQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1567
    invoke-virtual {v15, v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    goto/16 :goto_0

    .line 1569
    :cond_3
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UnVerifiedFarmer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1570
    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1571
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v15

    .line 1572
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4200(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v13}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual/range {v2 .. v14}, Lcom/conceptglobal/pmc/common/Queries;->searchQueryLatLongNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1571
    invoke-virtual {v15, v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    goto :goto_0

    .line 1574
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v15

    .line 1575
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4200(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v13}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual/range {v2 .. v14}, Lcom/conceptglobal/pmc/common/Queries;->searchQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1574
    invoke-virtual {v15, v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1548
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 19

    move-object/from16 v1, p0

    .line 1584
    const-string v2, "FarmersSearchFragment"

    const-string v3, ""

    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1586
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1587
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1590
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1591
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Lcom/conceptglobal/ifastscroll/FastScroller;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 1595
    :try_start_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-lez v0, :cond_2

    .line 1597
    :try_start_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0, v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1202(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Z)Z

    .line 1598
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1599
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    move-object/from16 v17, v3

    goto/16 :goto_3

    .line 1601
    :cond_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 1611
    :try_start_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1612
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    new-instance v15, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/content/Context;

    move-result-object v5

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/util/List;

    move-result-object v6

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v10, v4, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v11, v4, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v12, v4, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v13, v4, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v14, v4, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    iget-object v4, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v4, v4, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTodo:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v17, v3

    :try_start_4
    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v16, v4

    move-object v4, v15

    move-object/from16 v18, v2

    move-object v2, v15

    move/from16 v15, v16

    move-object/from16 v16, v3

    :try_start_5
    invoke-direct/range {v4 .. v16}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZILcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$802(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    .line 1613
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_1

    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    .line 1616
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_0
    move-object/from16 v2, v18

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    .line 1619
    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v2, v18

    .line 1620
    :try_start_7
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_2

    :catch_5
    move-exception v0

    move-object/from16 v17, v3

    .line 1624
    :goto_2
    :try_start_8
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :goto_3
    move-object/from16 v18, v2

    goto/16 :goto_4

    :catch_6
    move-exception v0

    goto/16 :goto_5

    :cond_2
    move-object/from16 v17, v3

    .line 1627
    :try_start_9
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    new-instance v15, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/util/List;

    move-result-object v5

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v9, v3, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v10, v3, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v11, v3, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v12, v3, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v13, v3, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v14, v3, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTodo:I

    iget-object v3, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    move-object/from16 v16, v3

    move-object v3, v15

    move-object/from16 v18, v2

    move-object v2, v15

    move-object/from16 v15, v16

    :try_start_a
    invoke-direct/range {v3 .. v15}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZILcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$802(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    .line 1628
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1631
    :goto_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Lcom/conceptglobal/ifastscroll/FastScroller;

    move-result-object v0

    iget-object v2, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1632
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    move-object/from16 v2, v17

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3602(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1633
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3702(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1634
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3802(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1635
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3902(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1636
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4002(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1637
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4102(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1638
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4202(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1639
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4502(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1640
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4302(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1641
    iget-object v0, v1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4402(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_5

    :catch_8
    move-exception v0

    move-object/from16 v18, v2

    .line 1643
    :goto_5
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method
