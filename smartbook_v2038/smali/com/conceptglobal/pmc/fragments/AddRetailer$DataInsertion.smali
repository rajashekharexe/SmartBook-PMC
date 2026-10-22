.class Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;
.super Landroid/os/AsyncTask;
.source "AddRetailer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/content/Context;)V
    .locals 1

    .line 3890
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3891
    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->_mContext:Landroid/content/Context;

    .line 3892
    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->_mDialog:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    .line 3893
    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3885
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 3899
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$3800(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    .line 3900
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$3900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3902
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 3885
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 8

    .line 3909
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->_mDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3910
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->_mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3912
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dataSavedSuccessfullyDialog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3914
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result p1

    const-string v0, "AddRetailer"

    const/4 v2, -0x1

    const-string v3, "Retailer"

    const-string v4, "0"

    const/4 v5, 0x1

    if-ne p1, v5, :cond_5

    .line 3915
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4100()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3916
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3917
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4400(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3918
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result p1

    if-ne p1, v5, :cond_1

    .line 3920
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateRetailerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3923
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3926
    :goto_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3927
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3928
    const-string v0, "Please verify the farmer from \"Add Farmer\" option in main menu."

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3929
    new-instance v0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion$1;-><init>(Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;)V

    const-string v3, "Ok"

    invoke-virtual {p1, v2, v3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3936
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 3937
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3938
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 3940
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    .line 3941
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    goto/16 :goto_2

    .line 3944
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    .line 3945
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    goto/16 :goto_2

    .line 3948
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    .line 3949
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    goto/16 :goto_2

    .line 3952
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    .line 3953
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    goto/16 :goto_2

    .line 3955
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromSelfAssignment:Z

    const-string v1, "FarmerId"

    const/4 v6, 0x2

    if-eqz p1, :cond_6

    .line 3956
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3957
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3958
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3959
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 3960
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4800(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "MandatoryFrm"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3961
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3962
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3963
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3964
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 3965
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromTestimonal:Z

    const-string v1, "SEGMENTID"

    if-eqz p1, :cond_8

    .line 3966
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3967
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3968
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3969
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3971
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->startActivity(Landroid/content/Intent;)V

    .line 3972
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    goto/16 :goto_2

    .line 3973
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromFeedBack:Z

    const-string v7, "isFrom"

    if-eqz p1, :cond_9

    .line 3974
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3976
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3977
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getFBFActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3978
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3979
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iget-boolean v0, v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromFeedBack:Z

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3980
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 3983
    :cond_9
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromSurvey:Z

    if-eqz p1, :cond_a

    .line 3984
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3986
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3987
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3988
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iget-boolean v0, v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isFromSurvey:Z

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3989
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {v0, v2, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->setResult(ILandroid/content/Intent;)V

    .line 3990
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    goto/16 :goto_2

    .line 3996
    :cond_a
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4100()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 3997
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 3998
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3999
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    .line 4000
    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getRetailerNameMobileQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3999
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getRetailerNameMobileData(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/DealerMaster;

    move-result-object p1

    .line 4001
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4400(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 4002
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result v0

    if-ne v0, v5, :cond_b

    .line 4003
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    .line 4004
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5000(Lcom/conceptglobal/pmc/fragments/AddRetailer;Lcom/conceptglobal/pmc/model/DealerMaster;)V

    goto/16 :goto_2

    .line 4006
    :cond_b
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    goto/16 :goto_2

    .line 4010
    :cond_c
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getColumn1Query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 4012
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4013
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result v0

    if-ne v0, v5, :cond_d

    .line 4014
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    .line 4015
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5000(Lcom/conceptglobal/pmc/fragments/AddRetailer;Lcom/conceptglobal/pmc/model/DealerMaster;)V

    goto/16 :goto_2

    .line 4017
    :cond_d
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    goto/16 :goto_2

    .line 4020
    :cond_e
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    goto/16 :goto_2

    .line 4024
    :cond_f
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result v0

    if-nez v0, :cond_11

    .line 4025
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result v0

    if-ne v0, v5, :cond_10

    .line 4026
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    .line 4027
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5000(Lcom/conceptglobal/pmc/fragments/AddRetailer;Lcom/conceptglobal/pmc/model/DealerMaster;)V

    goto/16 :goto_2

    .line 4029
    :cond_10
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    goto/16 :goto_2

    .line 4032
    :cond_11
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 4036
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 4040
    :cond_12
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isLocationUpdate:Z

    if-eqz p1, :cond_13

    .line 4041
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    .line 4042
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    return-void

    .line 4045
    :cond_13
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    goto :goto_2

    .line 4048
    :cond_14
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4400(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 4049
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)I

    move-result p1

    if-ne p1, v5, :cond_16

    .line 4050
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 4052
    :try_start_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateRetailerOTPVerificationQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 4055
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4057
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    goto :goto_2

    .line 4059
    :cond_15
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    goto :goto_2

    .line 4062
    :cond_16
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    goto :goto_2

    .line 4065
    :cond_17
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    goto :goto_2

    .line 4069
    :cond_18
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isLocationUpdate:Z

    if-eqz p1, :cond_19

    .line 4070
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    .line 4071
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    return-void

    .line 4074
    :cond_19
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    :goto_2
    return-void
.end method
