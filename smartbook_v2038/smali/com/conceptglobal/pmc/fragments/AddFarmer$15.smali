.class Lcom/conceptglobal/pmc/fragments/AddFarmer$15;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

.field final synthetic val$dialogCrops:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2087
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->val$dialogCrops:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 2093
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 2095
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2096
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2097
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2098
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2099
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_a

    .line 2102
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_7

    :cond_0
    if-eqz v0, :cond_9

    .line 2104
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    goto/16 :goto_6

    .line 2107
    :cond_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v4, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2600(Lcom/conceptglobal/pmc/fragments/AddFarmer;Ljava/lang/String;)Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 2108
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    const-string v6, "Cropname already exist."

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2110
    :cond_2
    new-instance v4, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-direct {v4}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;-><init>()V

    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    .line 2113
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setAcreages(F)V

    .line 2114
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setRespondentNo(Ljava/lang/String;)V

    .line 2115
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setCropId(I)V

    .line 2116
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {v4, v1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setDos(Ljava/lang/String;)V

    .line 2117
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {v4, p1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setCropName(Ljava/lang/String;)V

    .line 2118
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1, v4}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setHybridId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2122
    :try_start_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2127
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    const/4 p1, 0x0

    const/4 v4, 0x0

    .line 2128
    :goto_2
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge p1, v6, :cond_6

    .line 2129
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getCropId()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 2131
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    .line 2132
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setAcreages(F)V

    .line 2133
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setRespondentNo(Ljava/lang/String;)V

    .line 2134
    invoke-virtual {v4, v1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setDos(Ljava/lang/String;)V

    .line 2135
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->setHybridId(I)V

    .line 2138
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2139
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2140
    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getMappingId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    :cond_6
    if-nez v4, :cond_8

    .line 2144
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2147
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2150
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 2152
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2154
    :goto_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->val$dialogCrops:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_8

    .line 2105
    :cond_9
    :goto_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterPropAcreToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 2103
    :cond_a
    :goto_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseSelectCropToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_8
    return-void
.end method
