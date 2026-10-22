.class Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;
.super Ljava/lang/Object;
.source "AttributesActivity_Expenses.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V
    .locals 0

    .line 2442
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    .line 2445
    const-string v12, ""

    .line 0
    const-string v2, "\'"

    .line 2445
    instance-of v3, v7, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 2446
    move-object v3, v7

    check-cast v3, Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 2449
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 2450
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 2451
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    .line 2455
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2456
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2461
    :try_start_0
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v15, 0x7f1101b9

    const/4 v8, 0x1

    const-string v9, " "

    if-eqz v5, :cond_a

    :try_start_1
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2464
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, "Please select "

    if-eqz v5, :cond_2

    .line 2467
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v5

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2468
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 2469
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 2470
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    .line 2476
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2600()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v12

    .line 2480
    :goto_0
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v6

    if-eqz v6, :cond_4

    .line 2483
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2484
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 2485
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 2486
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    .line 2492
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2600()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v22, v6

    goto :goto_1

    :cond_4
    move-object/from16 v22, v12

    .line 2496
    :goto_1
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v6

    if-eqz v6, :cond_6

    .line 2499
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2500
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v6

    if-ne v6, v8, :cond_6

    .line 2501
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 2502
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    .line 2508
    :cond_5
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2600()Ljava/util/List;

    move-result-object v6

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v23, v6

    goto :goto_2

    :cond_6
    move-object/from16 v23, v12

    .line 2512
    :goto_2
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDynamicCondition()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDynamicCondition()Ljava/lang/String;

    move-result-object v6

    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    .line 2513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_7
    move-object/from16 v21, v5

    .line 2515
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v17

    .line 2516
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v24

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/lang/String;

    move-result-object v25

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$900()I

    move-result v26

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I

    move-result v27

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v28

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget-wide v30, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    .line 2515
    invoke-virtual/range {v17 .. v31}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamicWithSourceQry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    .line 2519
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_3

    .line 2522
    :cond_8
    new-instance v14, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iget-object v5, v4, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$3200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I

    move-result v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2523
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2525
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2600()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 2526
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v10

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object v2, v14

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v8

    move-object/from16 v7, p1

    move-object v8, v9

    move v9, v10

    move v10, v11

    move/from16 v11, v16

    invoke-direct/range {v2 .. v11}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;III)V

    .line 2527
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2528
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 2529
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_c

    .line 2520
    :cond_9
    :goto_3
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$800(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noDataFound()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    .line 2534
    :cond_a
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v2

    if-eqz v2, :cond_b

    .line 2535
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 2538
    :cond_b
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, " IN ( "

    const-string v6, " ) "

    if-eqz v2, :cond_d

    .line 2539
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v2

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2540
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v2

    if-ne v2, v8, :cond_d

    .line 2541
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v2

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v11

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v14

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2544
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2600()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_d
    :goto_4
    move-object v2, v12

    .line 2550
    :goto_5
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v10

    if-eqz v10, :cond_f

    .line 2551
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2552
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v5

    if-ne v5, v8, :cond_f

    .line 2553
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v5

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v11

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v14

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 2556
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v11

    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v14}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2600()Ljava/util/List;

    move-result-object v5

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_f
    :goto_6
    move-object v5, v12

    .line 2562
    :goto_7
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v10

    if-eqz v10, :cond_11

    .line 2563
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2564
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v6

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v6

    if-ne v6, v8, :cond_11

    .line 2565
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v6

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v4

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 2568
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " IN (  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2600()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_11
    :goto_8
    move-object v4, v12

    .line 2573
    :goto_9
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2574
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 2576
    :cond_12
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v8, " and "

    if-nez v6, :cond_13

    .line 2578
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    :cond_13
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    :cond_14
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2587
    :cond_15
    :goto_a
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v18

    .line 2588
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v20

    .line 2589
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v22

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    .line 2590
    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$900()I

    move-result v24

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I

    move-result v25

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v26

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 2587
    invoke-virtual/range {v18 .. v27}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    .line 2593
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    if-eqz v2, :cond_17

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_b

    .line 2597
    :cond_16
    new-instance v14, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iget-object v5, v4, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->brandsList:Ljava/util/List;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    .line 2598
    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$3200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I

    move-result v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2600()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 2600
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v10

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v2, v14

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v8

    move-object/from16 v7, p1

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v15

    invoke-direct/range {v2 .. v11}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;III)V

    .line 2601
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v3, 0x7f1101b9

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2602
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 2603
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_c

    .line 2594
    :cond_17
    :goto_b
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$800(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noDataFound()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2614
    const-string v3, "AttributesActivity"

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2615
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2616
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    return-void
.end method
