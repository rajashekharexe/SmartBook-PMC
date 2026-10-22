.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;
.super Ljava/lang/Object;
.source "FarmerFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

.field final synthetic val$dialogCrops:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1970
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->val$dialogCrops:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1976
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 1977
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1978
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1979
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 1980
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_4

    .line 1982
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz v1, :cond_3

    .line 1986
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    .line 1989
    :cond_2
    new-instance v2, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    .line 1992
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setAcreages(F)V

    .line 1993
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setRespondentNo(Ljava/lang/String;)V

    .line 1994
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/conceptglobal/pmc/common/Queries;->getCropIdByCropName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setCropId(I)V

    .line 1995
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setDos(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1997
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1999
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerCropData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2000
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2002
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2004
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$13;->val$dialogCrops:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_5

    .line 1987
    :cond_3
    :goto_2
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDOSowingToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 1983
    :cond_4
    :goto_3
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterPropAcreToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 1981
    :cond_5
    :goto_4
    sget-object p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseSelectCropToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_5
    return-void
.end method
