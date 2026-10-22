.class Lcom/conceptglobal/pmc/fo/MBAActivity$13;
.super Ljava/lang/Object;
.source "MBAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/MBAActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

.field final synthetic val$dialogCrops:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/MBAActivity;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 814
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->val$dialogCrops:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 820
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 821
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$2100(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 822
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseSelectCropToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 823
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1800(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1800(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    .line 827
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1300(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v1, :cond_2

    .line 828
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDOSowingToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 830
    :cond_2
    new-instance p1, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1800(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setAcreages(F)V

    .line 835
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1900(Lcom/conceptglobal/pmc/fo/MBAActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setRespondentNo(Ljava/lang/String;)V

    .line 836
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$2000(Lcom/conceptglobal/pmc/fo/MBAActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1500(Lcom/conceptglobal/pmc/fo/MBAActivity;)Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$2100(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getCropIdByCropName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setCropId(I)V

    .line 837
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1300(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setDos(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 839
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 841
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$2000(Lcom/conceptglobal/pmc/fo/MBAActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1500(Lcom/conceptglobal/pmc/fo/MBAActivity;)Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1900(Lcom/conceptglobal/pmc/fo/MBAActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1600(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/TextView;

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

    .line 842
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertCropSelectionDetails(Lcom/conceptglobal/pmc/model/FarmerCropMapping;)V

    .line 843
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$2200(Lcom/conceptglobal/pmc/fo/MBAActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 845
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 847
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->val$dialogCrops:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3

    .line 824
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterPropAcreToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void
.end method
