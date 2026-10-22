.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;
.super Landroid/os/AsyncTask;
.source "RetailersSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V
    .locals 0

    .line 1589
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1591
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$1;)V
    .locals 0

    .line 1589
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1589
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 11

    const/4 v0, 0x0

    .line 1596
    aget-object v2, p1, v0

    const/4 v0, 0x1

    .line 1597
    aget-object v9, p1, v0

    .line 1598
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 1599
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    .line 1600
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4300(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v10, v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fromFavourites:Ljava/lang/String;

    invoke-virtual/range {v1 .. v10}, Lcom/conceptglobal/pmc/common/Queries;->retailerSearchQueryLatLongNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindDataDynamic1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    goto :goto_0

    .line 1602
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    .line 1603
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4300(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v10, v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fromFavourites:Ljava/lang/String;

    invoke-virtual/range {v1 .. v10}, Lcom/conceptglobal/pmc/common/Queries;->retailerSearchQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1602
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindDataDynamic1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1589
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 13

    .line 1611
    const-string v0, ""

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1613
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1614
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->data:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1616
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1617
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1618
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4900(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/ifastscroll/FastScroller;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 1621
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/EditText;

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

    .line 1623
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1102(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Z)Z

    .line 1624
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1625
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    goto/16 :goto_0

    .line 1627
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1629
    :try_start_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1630
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    new-instance v12, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Retailer"

    const-string v5, "0"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1900(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v7, v1, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-boolean v8, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFromSelfAssignment:Z

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v9, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v10, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v11, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    invoke-static {p1, v12}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$802(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    .line 1631
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_0

    .line 1633
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 1636
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1637
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1641
    :try_start_4
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1644
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    new-instance v12, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1900(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v7, v1, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-boolean v8, v1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFromSelfAssignment:Z

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v9, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v10, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v11, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    invoke-static {p1, v12}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$802(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    .line 1645
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1648
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4900(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/ifastscroll/FastScroller;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1650
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4302(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1651
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4402(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1652
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4502(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1653
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4602(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1654
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4702(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1655
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$4802(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1657
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
