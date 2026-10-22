.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;
.super Landroid/os/AsyncTask;
.source "ValueChainPartner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/ValueChainPartner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field isSaveSuccess:Z

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V
    .locals 0

    .line 4477
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 4479
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->isSaveSuccess:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 4490
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3400(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4492
    const-string v0, "Saving data.."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4494
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4495
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4497
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$2700(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    .line 4498
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$2800(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4500
    :catch_0
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->isSaveSuccess:Z

    .line 4503
    :cond_1
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4477
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    .line 4514
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4516
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 4517
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4518
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4521
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_validationToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 4524
    :cond_1
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->isSaveSuccess:Z

    if-eqz p1, :cond_7

    .line 4526
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4527
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4530
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dataSavedSuccessfullyDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4542
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 4543
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->finish()V

    goto :goto_1

    .line 4545
    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    const-class v1, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4546
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Retailer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "farmerType"

    if-eqz v0, :cond_4

    .line 4547
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4548
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Distributor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3100()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Dealer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4549
    :cond_5
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_0
    const/high16 v0, 0x14000000

    .line 4551
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4552
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->startActivity(Landroid/content/Intent;)V

    .line 4553
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->finish()V

    .line 4558
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 4559
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 4560
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Service initiated"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 4561
    new-instance p1, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 4562
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    goto :goto_2

    .line 4566
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Error! while saving data, try again"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_8
    :goto_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 4477
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 4483
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 4484
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    const-string v1, "Please wait while performing validations..."

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3200(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Ljava/lang/String;)V

    .line 4485
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 4477
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2

    .line 4508
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 4509
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
