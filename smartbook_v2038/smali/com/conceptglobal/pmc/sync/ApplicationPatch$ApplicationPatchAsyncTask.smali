.class public Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;
.super Landroid/os/AsyncTask;
.source "ApplicationPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/sync/ApplicationPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplicationPatchAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->isCancelled()Z

    move-result p1

    sput-boolean p1, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    .line 245
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->startPatchSync(Z)V

    .line 246
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$100(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled()V
    .locals 1

    .line 264
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x1

    .line 265
    sput-boolean v0, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    .line 266
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 6

    .line 271
    const-string v0, "android.intent.action.VIEW"

    .line 0
    const-string v1, "market://details?id="

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApplicationPatch"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 279
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 280
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->dismiss()V

    goto :goto_0

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->dismiss()V

    .line 288
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {v2}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$200(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 289
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {v2}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$200(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SameVersion"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {v2}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$200(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "failed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 291
    :cond_2
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {v2}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$200(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Not Authorised"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {v2}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$200(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 292
    :cond_3
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {v2}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$000(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {v4}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$200(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 290
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {v2}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$000(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {v4}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$200(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 297
    :cond_5
    :goto_2
    sget-boolean v2, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    if-nez v2, :cond_7

    .line 300
    const-string v2, "PatchAvailable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 303
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$000(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {v2}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$000(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Landroid/content/Context;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 307
    :catch_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {v1}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$000(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://play.google.com/store/apps/details?id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 331
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    const-string v0, "NoPatchAvailable"

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$300(Lcom/conceptglobal/pmc/sync/ApplicationPatch;Ljava/lang/String;)V

    .line 332
    new-instance p1, Lcom/conceptglobal/pmc/sync/MasterSync;

    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$000(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/conceptglobal/pmc/sync/MasterSync;-><init>(Landroid/content/Context;Z)V

    .line 333
    new-instance v0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    invoke-direct {v0, p1}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;-><init>(Lcom/conceptglobal/pmc/sync/MasterSync;)V

    iput-object v0, p1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    .line 334
    iget-object p1, p1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 337
    :cond_7
    sput-boolean v3, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 237
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 238
    new-instance v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-static {v1}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->access$000(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->PERCENT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    const-string v3, "ApplicationPatchURL"

    invoke-direct {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    .line 239
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseWaitDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 255
    aget-object v1, p1, v0

    const-string v2, "DownloadStarted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x64

    if-eqz v1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_downloadingNewAppPW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v2}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->setProgressBar(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1, v2}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->setProgress(II)V

    :goto_0
    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 0

    .line 250
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method
