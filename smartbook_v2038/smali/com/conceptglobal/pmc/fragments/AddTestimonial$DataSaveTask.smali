.class Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;
.super Landroid/os/AsyncTask;
.source "AddTestimonial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddTestimonial;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V
    .locals 0

    .line 3763
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 3765
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->isSaveSuccess:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Lcom/conceptglobal/pmc/fragments/AddTestimonial$1;)V
    .locals 0

    .line 3763
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;-><init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 3776
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "start-"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VD"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$1700(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Z

    move-result p1

    .line 3778
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "end-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 3780
    const-string v0, "Saving data.."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3782
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$000(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3783
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$000(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3785
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$1800(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3787
    :catch_0
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->isSaveSuccess:Z

    .line 3790
    :cond_1
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3763
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 3801
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3803
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 3804
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$1600(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$1600(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3805
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$1600(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3808
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2000(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 3809
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2000(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3810
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2002(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 3812
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$200(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    goto/16 :goto_1

    .line 3816
    :cond_2
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->isSaveSuccess:Z

    if-eqz p1, :cond_4

    .line 3818
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$200(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dataSavedSuccessfullyDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3819
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2100(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 3820
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->finish()V

    goto :goto_0

    .line 3822
    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    const-class v2, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3823
    const-string v1, "farmerType"

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 3824
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3825
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->startActivity(Landroid/content/Intent;)V

    .line 3826
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->finish()V

    .line 3828
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$1400(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3829
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 3830
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Service initiated"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 3831
    new-instance p1, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 3832
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    goto :goto_1

    .line 3836
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Error! while saving data, try again"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 3763
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 3769
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 3770
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    const-string v1, "Please wait while performing validations..."

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$1500(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Ljava/lang/String;)V

    .line 3771
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$1600(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 3763
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2

    .line 3795
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 3796
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$1900(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
