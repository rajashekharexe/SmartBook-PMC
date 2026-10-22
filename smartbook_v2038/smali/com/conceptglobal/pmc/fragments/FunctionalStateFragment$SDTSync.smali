.class Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;
.super Landroid/os/AsyncTask;
.source "FunctionalStateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDTSync"
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;->this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$1;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;-><init>(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 270
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 283
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;->this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->access$300(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 270
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 288
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 289
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->dismiss()V

    .line 290
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;->this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->access$500(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;->this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->access$400(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_recWrongRespFS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;->this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->access$400(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_successInsertMasterData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 296
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;->this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;-><init>()V

    const v1, 0x7f090100

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 275
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 276
    new-instance v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;->this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->access$400(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->COUNT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    const-string v3, "GetMasterSyncData"

    invoke-direct {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    .line 277
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_checkForNewMasterSyncPW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->showDialog(Ljava/lang/String;)V

    return-void
.end method
