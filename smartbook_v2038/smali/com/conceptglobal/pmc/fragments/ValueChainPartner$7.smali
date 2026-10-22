.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;
.super Ljava/lang/Object;
.source "ValueChainPartner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/ValueChainPartner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V
    .locals 0

    .line 1245
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 1248
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1249
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1252
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1253
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 1254
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->brandsList:Ljava/util/List;

    .line 1259
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1200(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DynamicFields;

    .line 1264
    :try_start_0
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1315
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->brandsList:Ljava/util/List;

    .line 1317
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->brandsList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->brandsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 1321
    :cond_1
    new-instance v1, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iget-object v4, v3, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->brandsList:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1322
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    .line 1323
    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1200(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    .line 1324
    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    .line 1325
    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1200(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxLength()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v11}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;III)V

    .line 1326
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v0, 0x7f1101b9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1327
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 1328
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1

    .line 1318
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$7;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noDataFound()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1414
    const-string v0, "AddRetailer"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1415
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
