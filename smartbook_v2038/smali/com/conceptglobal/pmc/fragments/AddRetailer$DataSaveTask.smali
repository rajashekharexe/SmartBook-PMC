.class Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;
.super Landroid/os/AsyncTask;
.source "AddRetailer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 5305
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 5307
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->isSaveSuccess:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 5318
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5320
    const-string v0, "Saving data.."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5322
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5323
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5325
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$3800(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    .line 5326
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$3900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5328
    :catch_0
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->isSaveSuccess:Z

    .line 5331
    :cond_1
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5305
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    .line 5342
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 5344
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 5345
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5346
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5349
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 5352
    :cond_1
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->isSaveSuccess:Z

    if-eqz p1, :cond_7

    .line 5354
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5355
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5358
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 5370
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 5371
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    goto :goto_1

    .line 5373
    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    const-class v1, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5374
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Retailer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "farmerType"

    if-eqz v0, :cond_4

    .line 5375
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5376
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Distributor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4100()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Dealer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5377
    :cond_5
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_0
    const/high16 v0, 0x14000000

    .line 5379
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5380
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->startActivity(Landroid/content/Intent;)V

    .line 5381
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    .line 5386
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 5387
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 5388
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Service initiated"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 5389
    new-instance p1, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 5390
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    goto :goto_2

    .line 5394
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

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

    .line 5305
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 5311
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 5312
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    const-string v1, "Please wait while performing validations..."

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5500(Lcom/conceptglobal/pmc/fragments/AddRetailer;Ljava/lang/String;)V

    .line 5313
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 5305
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2

    .line 5336
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 5337
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5800(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
