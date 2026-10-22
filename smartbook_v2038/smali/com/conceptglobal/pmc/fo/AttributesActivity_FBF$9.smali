.class Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;
.super Ljava/lang/Object;
.source "AttributesActivity_FBF.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)V
    .locals 0

    .line 1927
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    .line 1930
    const-string v12, ""

    instance-of v2, v7, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 1931
    move-object v2, v7

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1934
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1935
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1936
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->brandsList:Ljava/util/List;

    .line 1940
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1941
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1946
    :try_start_0
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x3

    const v15, 0x7f1101b9

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v8, " "

    if-eqz v4, :cond_9

    :try_start_1
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1949
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "Please select "

    if-eqz v4, :cond_2

    .line 1952
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v4

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1953
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v4

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1954
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1955
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    .line 1961
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1500()Ljava/util/List;

    move-result-object v4

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    goto :goto_0

    :cond_2
    move-object/from16 v20, v12

    .line 1965
    :goto_0
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1968
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v4

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1969
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v4

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 1970
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1971
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    .line 1977
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1500()Ljava/util/List;

    move-result-object v4

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v4

    goto :goto_1

    :cond_4
    move-object/from16 v21, v12

    .line 1981
    :goto_1
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v4

    if-eqz v4, :cond_6

    .line 1984
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v4

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1985
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v4

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 1986
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1987
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    .line 1993
    :cond_5
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1500()Ljava/util/List;

    move-result-object v4

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    goto :goto_2

    :cond_6
    move-object/from16 v22, v12

    .line 1997
    :goto_2
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v16

    .line 1998
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v23

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$500(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/lang/String;

    move-result-object v24

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v25

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v26

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v27

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1700(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)J

    move-result-wide v29

    .line 1997
    invoke-virtual/range {v16 .. v30}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamicWithSourceQry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v4, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->brandsList:Ljava/util/List;

    .line 2001
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    iget-object v3, v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->brandsList:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    iget-object v3, v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->brandsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_3

    .line 2005
    :cond_7
    new-instance v16, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    iget-object v4, v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->brandsList:Ljava/util/List;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1500()Ljava/util/List;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v10

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v11

    move-object/from16 v2, v16

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v11}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;III)V

    .line 2006
    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2007
    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 2008
    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_c

    .line 2002
    :cond_8
    :goto_3
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noDataFound()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    .line 2013
    :cond_9
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v4

    if-eqz v4, :cond_a

    .line 2014
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 2017
    :cond_a
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v9, " IN ( "

    const-string v10, " ) "

    if-eqz v4, :cond_c

    .line 2018
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v4

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2019
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v4

    if-ne v4, v6, :cond_c

    .line 2020
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v11

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v14

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2023
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

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

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1500()Ljava/util/List;

    move-result-object v5

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

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

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_c
    :goto_4
    move-object v4, v12

    .line 2029
    :goto_5
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v5

    if-eqz v5, :cond_e

    .line 2030
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v5

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

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

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2031
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v5

    if-ne v5, v6, :cond_e

    .line 2032
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v5

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v11

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v14

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 2035
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v11

    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v14}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

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

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1500()Ljava/util/List;

    move-result-object v9

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_e
    :goto_6
    move-object v5, v12

    .line 2041
    :goto_7
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v9

    if-eqz v9, :cond_10

    .line 2042
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v9

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2043
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v9

    if-ne v9, v6, :cond_10

    .line 2044
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v6

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 2047
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v9

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " IN (  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1500()Ljava/util/List;

    move-result-object v9

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_10
    :goto_8
    move-object v3, v12

    .line 2052
    :goto_9
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2053
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 2055
    :cond_11
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v9, " and "

    if-nez v6, :cond_12

    .line 2057
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    :cond_12
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 2059
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    :cond_13
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 2061
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    :cond_14
    :goto_a
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v20

    .line 2067
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v24

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$500(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/lang/String;

    move-result-object v25

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v26

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v27

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v28

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 2066
    invoke-virtual/range {v20 .. v29}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->brandsList:Ljava/util/List;

    .line 2070
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    iget-object v3, v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->brandsList:Ljava/util/List;

    if-eqz v3, :cond_16

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    iget-object v3, v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->brandsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_b

    .line 2074
    :cond_15
    new-instance v14, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    iget-object v4, v3, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->brandsList:Ljava/util/List;

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1500()Ljava/util/List;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v10

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v11

    move-object v2, v14

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v11}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;III)V

    .line 2075
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v3, 0x7f1101b9

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2076
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 2077
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_c

    .line 2071
    :cond_16
    :goto_b
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Landroid/content/Context;

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

    .line 2088
    const-string v3, "AttributesActivity_FBF"

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2089
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2090
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    return-void
.end method
