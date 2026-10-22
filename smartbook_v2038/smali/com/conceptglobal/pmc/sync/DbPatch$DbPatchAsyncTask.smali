.class public Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;
.super Landroid/os/AsyncTask;
.source "DbPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/sync/DbPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DbPatchAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/pmc/sync/DbPatch;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/sync/DbPatch;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 355
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 369
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->isCancelled()Z

    move-result p1

    sput-boolean p1, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    .line 370
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/sync/DbPatch;->startDbPatch()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 376
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x1

    .line 377
    sput-boolean v0, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    .line 378
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$100(Lcom/conceptglobal/pmc/sync/DbPatch;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 355
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 3

    const/4 p1, 0x0

    .line 385
    sput-boolean p1, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    .line 386
    const-string v0, "DbPatch"

    const-string v1, "onPostExecute--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$100(Lcom/conceptglobal/pmc/sync/DbPatch;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->dismiss()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    iget-boolean v0, v0, Lcom/conceptglobal/pmc/sync/DbPatch;->isPatchAvailable:Z

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$000(Lcom/conceptglobal/pmc/sync/DbPatch;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_patchAvail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$000(Lcom/conceptglobal/pmc/sync/DbPatch;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noPatchAvailable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 399
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$000(Lcom/conceptglobal/pmc/sync/DbPatch;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/OnRequestFinishListener;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$202(Lcom/conceptglobal/pmc/sync/DbPatch;Lcom/conceptglobal/pmc/interfaces/OnRequestFinishListener;)Lcom/conceptglobal/pmc/interfaces/OnRequestFinishListener;

    .line 400
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$200(Lcom/conceptglobal/pmc/sync/DbPatch;)Lcom/conceptglobal/pmc/interfaces/OnRequestFinishListener;

    move-result-object p1

    const-string v0, "DBPATCH"

    invoke-interface {p1, v0}, Lcom/conceptglobal/pmc/interfaces/OnRequestFinishListener;->onFinish(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 405
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$000(Lcom/conceptglobal/pmc/sync/DbPatch;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainHomePageActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$300(Lcom/conceptglobal/pmc/sync/DbPatch;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 406
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$000(Lcom/conceptglobal/pmc/sync/DbPatch;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {v1}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$000(Lcom/conceptglobal/pmc/sync/DbPatch;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 407
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$000(Lcom/conceptglobal/pmc/sync/DbPatch;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 409
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$400(Lcom/conceptglobal/pmc/sync/DbPatch;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 410
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$000(Lcom/conceptglobal/pmc/sync/DbPatch;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/ExitActivity;->exitApplicationAnRemoveFromRecent(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 361
    new-instance v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {v1}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$000(Lcom/conceptglobal/pmc/sync/DbPatch;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->NORMAL_DIALOG:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    const-string v3, "GetPatchUpdate"

    invoke-direct {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    .line 362
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/DbPatch;->access$100(Lcom/conceptglobal/pmc/sync/DbPatch;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pwUpdatingPatchDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->showDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
