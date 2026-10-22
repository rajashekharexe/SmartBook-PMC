.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;
.super Landroid/os/AsyncTask;
.source "FarmersSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 0

    .line 1828
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 1831
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->keyword:Ljava/lang/String;

    .line 1832
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->data:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$1;)V
    .locals 0

    .line 1828
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1828
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 11

    .line 1848
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Farmer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1849
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    const-string v3, "Fellow Farmer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->parentSaarthieFarmerID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1850
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v4, v4, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->query:Ljava/lang/String;

    const-string v5, "1"

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v8, v6, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v9, v6, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->parentSaarthieFarmerID:Ljava/lang/String;

    aget-object v10, p1, v2

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardDataFellowFarmerFilteredList(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1New(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->data:Ljava/util/List;

    goto :goto_0

    .line 1852
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v4, v4, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->query:Ljava/lang/String;

    const-string v5, "1"

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v8, v6, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    aget-object v9, p1, v2

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardDataLocationFilter(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1New(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->data:Ljava/util/List;

    goto :goto_0

    .line 1854
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Village"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1855
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v4, v4, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->query:Ljava/lang/String;

    const-string v5, "4"

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v8, v6, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    aget-object v9, p1, v2

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/conceptglobal/pmc/common/Queries;->getDashboardDataLocationFilter(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1New(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->data:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1828
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 1868
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1869
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$5100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1871
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1872
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1874
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->keyword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1875
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3400(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/util/List;)V

    goto :goto_0

    .line 1877
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->data:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/util/List;)V

    .line 1879
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    const-string v0, ""

    iput-object v0, p1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->parentSaarthieFarmerID:Ljava/lang/String;

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1838
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1839
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    const-string v1, "Please wait"

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3200(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)V

    .line 1840
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
