.class Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;
.super Landroid/os/AsyncTask;
.source "AddTestimonial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddTestimonial;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Landroid/content/Context;)V
    .locals 1

    .line 3847
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3848
    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->_mContext:Landroid/content/Context;

    .line 3849
    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$200(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->_mDialog:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    .line 3850
    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3843
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 3856
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$1800(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3858
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$1100(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 3843
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 3865
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->_mDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    .line 3866
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3868
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$200(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 3869
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2100(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 3870
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->finish()V

    goto :goto_0

    .line 3872
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    const-class v2, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3873
    const-string v0, "farmerType"

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    .line 3874
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3875
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->startActivity(Landroid/content/Intent;)V

    .line 3876
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->finish()V

    .line 3878
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$1400(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3879
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3880
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Service initiated"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 3881
    new-instance p1, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 3882
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    :cond_2
    return-void
.end method
