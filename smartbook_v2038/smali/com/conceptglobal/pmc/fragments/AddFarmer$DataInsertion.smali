.class Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;
.super Landroid/os/AsyncTask;
.source "AddFarmer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataInsertion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private _mContext:Landroid/content/Context;

.field private _mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/content/Context;)V
    .locals 1

    .line 4357
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4358
    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->_mContext:Landroid/content/Context;

    .line 4359
    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pwDataSaving()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p2, v0, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->_mDialog:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    .line 4360
    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4353
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 4366
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    .line 4367
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4369
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 4353
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 5

    .line 4376
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->_mDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    .line 4377
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4379
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dataSavedSuccessfullyDialog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4380
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result p1

    const-string v0, "AddFarmer"

    const-string v2, "0"

    if-ne p1, v1, :cond_4

    .line 4381
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4382
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4383
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 4385
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 4386
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerServerStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4388
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4391
    :goto_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 4392
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4393
    const-string v1, "Please verify the farmer from \"Add Farmer\" option in main menu."

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4394
    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion$1;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;)V

    const/4 v2, -0x1

    const-string v3, "Ok"

    invoke-virtual {p1, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4401
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 4402
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4403
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 4405
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    .line 4406
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    goto/16 :goto_2

    .line 4409
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    .line 4410
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    goto/16 :goto_2

    .line 4413
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    .line 4414
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    goto/16 :goto_2

    .line 4417
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 4418
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    goto/16 :goto_2

    .line 4421
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 4422
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 4423
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    .line 4424
    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerNameMobileQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4423
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerNameMobileData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object p1

    .line 4425
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4426
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 4427
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    .line 4428
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5700(Lcom/conceptglobal/pmc/fragments/AddFarmer;Lcom/conceptglobal/pmc/model/FarmerMaster;)V

    goto/16 :goto_2

    .line 4430
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    goto/16 :goto_2

    .line 4434
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getField3Query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 4436
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4437
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 4438
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    .line 4439
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5700(Lcom/conceptglobal/pmc/fragments/AddFarmer;Lcom/conceptglobal/pmc/model/FarmerMaster;)V

    goto/16 :goto_2

    .line 4441
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    goto/16 :goto_2

    .line 4444
    :cond_9
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    goto/16 :goto_2

    .line 4448
    :cond_a
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v0

    if-nez v0, :cond_c

    .line 4449
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 4450
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    .line 4451
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5700(Lcom/conceptglobal/pmc/fragments/AddFarmer;Lcom/conceptglobal/pmc/model/FarmerMaster;)V

    goto/16 :goto_2

    .line 4453
    :cond_b
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    goto/16 :goto_2

    .line 4456
    :cond_c
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 4460
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 4464
    :cond_d
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    goto/16 :goto_2

    .line 4467
    :cond_e
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 4468
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result p1

    if-ne p1, v1, :cond_10

    .line 4469
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 4471
    :try_start_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 4472
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateFarmerServerStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 4474
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4476
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    goto :goto_2

    .line 4478
    :cond_f
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    goto :goto_2

    .line 4481
    :cond_10
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    goto :goto_2

    .line 4484
    :cond_11
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    :goto_2
    return-void
.end method
