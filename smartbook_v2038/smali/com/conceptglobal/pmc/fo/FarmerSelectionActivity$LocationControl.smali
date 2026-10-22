.class Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;
.super Landroid/os/AsyncTask;
.source "FarmerSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)V
    .locals 1

    .line 648
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 649
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$300(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;)V
    .locals 0

    .line 648
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;-><init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 648
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 2

    .line 665
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$400(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x3e8

    .line 667
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 669
    const-string v0, "FarmerSelectionActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 648
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10

    .line 676
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$500(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$600(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 678
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 679
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 681
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$702(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 683
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 684
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$800(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$800(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 685
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$800(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$700(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 689
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$900(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 691
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$900(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 693
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NULL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 695
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$500(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/lang/Double;

    move-result-object v5

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$600(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/16 v9, 0x4b

    invoke-virtual/range {v4 .. v9}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->distance(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;C)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 698
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_2

    .line 699
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$700(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$700(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 705
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$700(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$1000(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 707
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$300(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 708
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$1100(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 711
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 712
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 714
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->locationNotFound()V

    :goto_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gettLocationPWDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsCancelButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl$1;-><init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 660
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
