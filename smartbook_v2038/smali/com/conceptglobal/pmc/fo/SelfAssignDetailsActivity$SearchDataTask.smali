.class Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;
.super Landroid/os/AsyncTask;
.source "SelfAssignDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;
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
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V
    .locals 0

    .line 1370
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$1;)V
    .locals 0

    .line 1370
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1370
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$3200(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1380
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1383
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerBindDataSAFilter(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->data:Ljava/util/List;

    goto :goto_1

    .line 1381
    :cond_2
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindData(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->data:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1370
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 12

    .line 1395
    const-string v0, "SelfAssignDetailsActivity"

    const-string v1, ""

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1397
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1500(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1398
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1500(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->data:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1399
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$3300(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1400
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->selectlayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1401
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2400(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1402
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2500(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/ifastscroll/FastScroller;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    .line 1404
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez p1, :cond_1

    .line 1406
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1, v3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1002(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Z)Z

    .line 1407
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1500(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1500(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1408
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$3400(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V

    goto/16 :goto_0

    .line 1410
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1600(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 1413
    :try_start_2
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1416
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1500(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1417
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1600(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1418
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    new-instance v11, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1800(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1500(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I

    move-result v6

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I

    move-result v7

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2100(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I

    move-result v8

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2200(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I

    move-result v9

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2300(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)I

    move-result v10

    const/4 v5, 0x1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IIIIII)V

    invoke-static {p1, v11}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1702(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    .line 1419
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2400(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1420
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2500(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/ifastscroll/FastScroller;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2400(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1421
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2400(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->scrollListener:Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 1423
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1600(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1427
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$3502(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1428
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$3602(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1429
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$3702(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1430
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$SearchDataTask;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$3802(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1433
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
