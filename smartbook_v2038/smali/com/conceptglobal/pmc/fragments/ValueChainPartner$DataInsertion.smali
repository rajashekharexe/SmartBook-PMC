.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;
.super Landroid/os/AsyncTask;
.source "ValueChainPartner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/ValueChainPartner;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/content/Context;)V
    .locals 1

    .line 3340
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3341
    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->_mContext:Landroid/content/Context;

    .line 3342
    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->_mDialog:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    .line 3343
    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3335
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 3349
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$2700(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V

    .line 3350
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$2800(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3352
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 3335
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 7

    .line 3359
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->_mDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3360
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->_mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3362
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 3364
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFromSelfAssignment:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 3365
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3366
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1700(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FarmerId"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3367
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$2900(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3368
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 3369
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFromTestimonal:Z

    const-string v2, "SEGMENTID"

    if-eqz p1, :cond_2

    .line 3370
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3371
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1700(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3372
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$2900(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3373
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$2900(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3375
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->startActivity(Landroid/content/Intent;)V

    .line 3376
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->finish()V

    goto/16 :goto_1

    .line 3377
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFromFeedBack:Z

    const-string v3, "isFrom"

    if-eqz p1, :cond_3

    .line 3378
    new-instance p1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3380
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1700(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3381
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$2900(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getFBFActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3382
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$2900(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)I

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3383
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iget-boolean v2, v2, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFromFeedBack:Z

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3384
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 3387
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFromSurvey:Z

    if-eqz p1, :cond_4

    .line 3388
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3390
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1700(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3391
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$2900(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3392
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iget-boolean v0, v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isFromSurvey:Z

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3393
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setResult(ILandroid/content/Intent;)V

    .line 3394
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->finish()V

    goto :goto_1

    .line 3399
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 3400
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->finish()V

    goto :goto_1

    .line 3402
    :cond_5
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    const-class v2, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3403
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Retailer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "farmerType"

    if-eqz v0, :cond_6

    .line 3404
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3405
    :cond_6
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Distributor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3100()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Dealer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3406
    :cond_7
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    :goto_0
    const/high16 v0, 0x14000000

    .line 3408
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3409
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->startActivity(Landroid/content/Intent;)V

    .line 3410
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->finish()V

    .line 3414
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3415
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 3416
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Service initiated"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 3417
    new-instance p1, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 3418
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    :cond_9
    return-void
.end method
