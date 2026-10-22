.class Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;
.super Landroid/os/AsyncTask;
.source "AddFarmer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 4192
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 4194
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->isSaveSuccess:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Lcom/conceptglobal/pmc/fragments/AddFarmer$1;)V
    .locals 0

    .line 4192
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 4206
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

    .line 4207
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Z

    move-result p1

    .line 4208
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

    .line 4210
    const-string v0, "Saving data.."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4212
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4213
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4215
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    .line 4216
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4218
    :catch_0
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->isSaveSuccess:Z

    .line 4221
    :cond_1
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4192
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7

    .line 4233
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4235
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 4236
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$3900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$3900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4237
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$3900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4240
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 4241
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4242
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4402(Lcom/conceptglobal/pmc/fragments/AddFarmer;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 4244
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 4248
    :cond_2
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->isSaveSuccess:Z

    if-eqz p1, :cond_9

    .line 4250
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    .line 4251
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromSelfAssignment:Z

    const-string v1, "FarmerId"

    const/4 v2, 0x2

    if-eqz p1, :cond_3

    .line 4252
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4253
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4254
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4255
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4256
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "MandatoryFrm"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4257
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4258
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4259
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4260
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4261
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromTestimonal:Z

    const-string v1, "SEGMENTID"

    if-eqz p1, :cond_5

    .line 4262
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4263
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4264
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4265
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4267
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->startActivity(Landroid/content/Intent;)V

    .line 4268
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    goto/16 :goto_0

    .line 4269
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromFeedBack:Z

    const-string v3, "isFrom"

    if-eqz p1, :cond_6

    .line 4270
    new-instance p1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4272
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4273
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getFBFActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4274
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4275
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromFeedBack:Z

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4276
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4279
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromSurvey:Z

    if-eqz p1, :cond_7

    .line 4280
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4282
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/FarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4283
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getSurveyActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4284
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4285
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFromSurvey:Z

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4286
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->setResult(ILandroid/content/Intent;)V

    .line 4287
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    goto :goto_0

    .line 4292
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result p1

    if-ne p1, v0, :cond_8

    .line 4293
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    goto :goto_0

    .line 4295
    :cond_8
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    const-class v2, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4296
    const-string v1, "farmerType"

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4900()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 4297
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4298
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->startActivity(Landroid/content/Intent;)V

    .line 4299
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    .line 4302
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 4303
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 4304
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Service initiated"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 4305
    new-instance p1, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 4306
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    goto :goto_1

    .line 4310
    :cond_9
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Error! while saving data, try again"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_a
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 4192
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 4198
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 4199
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    const-string v1, "Please wait while performing validations..."

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$3800(Lcom/conceptglobal/pmc/fragments/AddFarmer;Ljava/lang/String;)V

    .line 4200
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$3900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4201
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$3900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 4192
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2

    .line 4227
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 4228
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataSaveTask;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$4300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
