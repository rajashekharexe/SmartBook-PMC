.class public Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;
.super Landroid/os/AsyncTask;
.source "MasterSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/sync/MasterSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MasterSyncAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/pmc/sync/MasterSync;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/sync/MasterSync;)V
    .locals 0

    .line 1860
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1860
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 1881
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->isCancelled()Z

    move-result p1

    sput-boolean p1, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    .line 1883
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/MasterSync;->access$100(Lcom/conceptglobal/pmc/sync/MasterSync;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/sync/MasterSync;->startMasterSync(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCancelled()V
    .locals 2

    .line 1910
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x1

    .line 1911
    sput-boolean v0, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    .line 1912
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-static {v1}, Lcom/conceptglobal/pmc/sync/MasterSync;->access$100(Lcom/conceptglobal/pmc/sync/MasterSync;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1860
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .line 1919
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1920
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/MasterSync;->access$100(Lcom/conceptglobal/pmc/sync/MasterSync;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1923
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 1927
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1928
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1929
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->dismiss()V

    goto :goto_0

    .line 1932
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->dismiss()V

    .line 1936
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/PMCApplication;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/PMCApplication;->isHomeFragmentActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1938
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1939
    const-string v2, "callbackActivity"

    const-class v3, Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    const-string v3, "HomePageFragment"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    check-cast p1, Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;

    .line 1941
    invoke-interface {p1, v0, v1}, Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 1946
    sput-boolean p1, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncForRecovery:Z

    .line 1948
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/MasterSync;->access$000(Lcom/conceptglobal/pmc/sync/MasterSync;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1949
    sget-boolean v0, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    if-nez v0, :cond_3

    .line 1950
    new-instance v0, Lcom/conceptglobal/pmc/sync/DbPatch;

    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-static {v1}, Lcom/conceptglobal/pmc/sync/MasterSync;->access$000(Lcom/conceptglobal/pmc/sync/MasterSync;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/conceptglobal/pmc/sync/DbPatch;-><init>(Landroid/content/Context;Z)V

    .line 1951
    new-instance v1, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;-><init>(Lcom/conceptglobal/pmc/sync/DbPatch;)V

    iput-object v1, v0, Lcom/conceptglobal/pmc/sync/DbPatch;->mTask:Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;

    .line 1952
    iget-object v0, v0, Lcom/conceptglobal/pmc/sync/DbPatch;->mTask:Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;

    new-array v1, p1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1955
    :cond_3
    sput-boolean p1, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    .line 1956
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/MasterSync;->access$000(Lcom/conceptglobal/pmc/sync/MasterSync;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/PMCApplication;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/PMCApplication;->isHomeFragmentActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1957
    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setRefreshActionButtonState(Z)V

    :cond_4
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 1867
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1868
    new-instance v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-static {v1}, Lcom/conceptglobal/pmc/sync/MasterSync;->access$000(Lcom/conceptglobal/pmc/sync/MasterSync;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->COUNT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    const-string v3, "GetMasterSyncData"

    invoke-direct {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    .line 1869
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/MasterSync;->access$100(Lcom/conceptglobal/pmc/sync/MasterSync;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_syncMasterPWText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->showDialog(Ljava/lang/String;)V

    .line 1872
    :cond_0
    sget-boolean v0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncForRecovery:Z

    if-eqz v0, :cond_1

    .line 1873
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/MasterSync;->access$100(Lcom/conceptglobal/pmc/sync/MasterSync;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1874
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    iget-object v0, v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->cancelll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1860
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 3

    .line 1891
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/MasterSync;->access$100(Lcom/conceptglobal/pmc/sync/MasterSync;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->setProgressMsg(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 1896
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1897
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-le p1, v0, :cond_1

    move p1, v0

    .line 1902
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-static {v2}, Lcom/conceptglobal/pmc/sync/MasterSync;->access$100(Lcom/conceptglobal/pmc/sync/MasterSync;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1903
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {v1, p1, v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->setProgress(II)V

    :cond_2
    return-void
.end method

.method public showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1963
    filled-new-array {p1, p2, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method
