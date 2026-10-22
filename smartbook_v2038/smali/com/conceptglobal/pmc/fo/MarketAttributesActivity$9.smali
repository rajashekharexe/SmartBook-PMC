.class Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;
.super Ljava/lang/Object;
.source "MarketAttributesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V
    .locals 0

    .line 1448
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    .line 1451
    instance-of v0, v9, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1452
    move-object v0, v9

    check-cast v0, Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1455
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1456
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v10

    .line 1457
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    const/4 v2, 0x1

    .line 1458
    const-string v11, " "

    const/4 v12, 0x0

    const-string v13, "MarketAttributes"

    const/4 v14, 0x3

    const v15, 0x7f1101b9

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 1513
    :try_start_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v16

    .line 1514
    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v20

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/lang/String;

    move-result-object v21

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v22

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v23

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v24

    const-string v25, ""

    .line 1513
    invoke-virtual/range {v16 .. v25}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1517
    invoke-static {v13, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1518
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1521
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1525
    :cond_1
    new-instance v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    iget-object v4, v3, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2800(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v11

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v12

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v13

    move-object v2, v0

    move-object/from16 v7, p1

    move v9, v11

    move v10, v12

    move v11, v13

    invoke-direct/range {v2 .. v11}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;III)V

    .line 1526
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1527
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 1528
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_6

    .line 1522
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noDataFound()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1492
    :cond_3
    :try_start_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getBrandsQry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1495
    invoke-static {v13, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1496
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1499
    :goto_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_3

    .line 1503
    :cond_4
    new-instance v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    iget-object v4, v3, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2800(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v11

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v12

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v13

    move-object v2, v0

    move-object/from16 v7, p1

    move v9, v11

    move v10, v12

    move v11, v13

    invoke-direct/range {v2 .. v11}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;III)V

    .line 1504
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1505
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 1506
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_6

    .line 1500
    :cond_5
    :goto_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noBrandsAvailableToast()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1460
    :cond_6
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    .line 1461
    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    .line 1460
    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/common/Queries;->gettingDropdownValues(I)Ljava/lang/String;

    move-result-object v5

    .line 1461
    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2600(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Lcom/conceptglobal/pmc/interfaces/CropChanger;

    move-result-object v8

    move-object v2, v0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Lcom/conceptglobal/pmc/interfaces/CropChanger;)V

    .line 1462
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1463
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 1464
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1468
    :try_start_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    .line 1469
    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    .line 1468
    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingDropdownValues(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 1472
    invoke-static {v13, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1473
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1476
    :goto_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_5

    .line 1480
    :cond_7
    new-instance v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    iget-object v4, v3, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->brandsList:Ljava/util/List;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2800(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v11

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v12

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v13

    move-object v2, v0

    move-object/from16 v7, p1

    move v9, v11

    move v10, v12

    move v11, v13

    invoke-direct/range {v2 .. v11}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;III)V

    .line 1481
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1482
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 1483
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_6

    .line 1477
    :cond_8
    :goto_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noBrandsAvailableToast()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_6
    return-void
.end method
