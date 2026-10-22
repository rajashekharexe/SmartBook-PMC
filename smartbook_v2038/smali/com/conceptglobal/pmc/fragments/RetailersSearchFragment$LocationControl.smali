.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;
.super Landroid/os/AsyncTask;
.source "RetailersSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V
    .locals 1

    .line 942
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 944
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$1;)V
    .locals 0

    .line 942
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 942
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 2

    .line 962
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1100(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x3e8

    .line 964
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 966
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 942
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 12

    .line 973
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1300(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 974
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 975
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 977
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1502(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/util/List;)Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 978
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 979
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 980
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 983
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 984
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DashboardListModel;

    .line 985
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLatitude()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLangitude()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NULL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 986
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1300(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/Double;

    move-result-object v5

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLangitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/16 v9, 0x4b

    invoke-virtual/range {v4 .. v9}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 988
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_2

    .line 989
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 994
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 995
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    new-instance v11, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1900(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v6, v0, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-boolean v7, v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFromSelfAssignment:Z

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v8, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v9, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v10, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    const-string v3, "Retailer"

    const-string v4, "0"

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    invoke-static {p1, v11}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$802(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    .line 996
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 998
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noItemsAvailableAlert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1001
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1002
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1004
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->locationNotFound()V

    :goto_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 947
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gettLocationPWDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsCancelButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl$1;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 955
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
