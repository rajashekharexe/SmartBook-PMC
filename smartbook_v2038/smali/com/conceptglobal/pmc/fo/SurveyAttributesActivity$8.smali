.class Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;
.super Ljava/lang/Object;
.source "SurveyAttributesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V
    .locals 0

    .line 1926
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 1929
    const-string v8, ""

    .line 0
    const-string v2, "\'"

    const-string v3, " and CusSegmentId = "

    .line 1929
    instance-of v4, v6, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 1930
    move-object v4, v6

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1933
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1934
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 1940
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1941
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1946
    :try_start_0
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x3

    const v11, 0x7f1101b9

    const/4 v12, 0x1

    const-string v13, " "

    if-eqz v7, :cond_7

    :try_start_1
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1949
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "Please select "

    if-eqz v2, :cond_2

    .line 1952
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1953
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v2

    if-ne v2, v12, :cond_2

    .line 1954
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1955
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v3

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    .line 1961
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v2

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_0

    :cond_2
    move-object/from16 v18, v8

    .line 1965
    :goto_0
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1968
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1969
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v2

    if-ne v2, v12, :cond_4

    .line 1970
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1971
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v3

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    .line 1977
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v2

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_1

    :cond_4
    move-object/from16 v19, v8

    .line 1981
    :goto_1
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1984
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1985
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v2

    if-ne v2, v12, :cond_6

    .line 1986
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1987
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v3

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    .line 1993
    :cond_5
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    goto :goto_2

    :cond_6
    move-object/from16 v20, v8

    .line 1997
    :goto_2
    new-instance v12, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v14

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v15

    .line 1998
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v21

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$500(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/lang/String;

    move-result-object v22

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v23

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1600(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v24

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v25

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)J

    move-result-wide v27

    .line 1997
    invoke-virtual/range {v14 .. v28}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamicWithSourceQry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 1998
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    move-object v2, v12

    move-object v4, v7

    move-object/from16 v6, p1

    move-object v7, v13

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 1999
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2000
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 2001
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_a

    .line 2003
    :cond_7
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v7

    if-eqz v7, :cond_8

    .line 2004
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 2007
    :cond_8
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v14, " IN ( "

    const-string v15, ")"

    if-eqz v7, :cond_a

    .line 2008
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v7

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2009
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v7

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v7

    if-ne v7, v12, :cond_a

    .line 2010
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v7

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v11

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2014
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_a
    :goto_3
    move-object v7, v8

    .line 2020
    :goto_4
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v10

    if-eqz v10, :cond_c

    .line 2021
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2022
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    .line 2023
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v14

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 2027
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_c
    :goto_5
    move-object v6, v8

    .line 2033
    :goto_6
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v10

    if-eqz v10, :cond_e

    .line 2034
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2035
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 2036
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v5

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 2040
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " IN ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_e
    :goto_7
    move-object v5, v8

    .line 2044
    :goto_8
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 2045
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 2047
    :cond_f
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v11, " and "

    if-nez v10, :cond_10

    .line 2049
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2050
    :cond_10
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 2051
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    :cond_11
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 2053
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    :cond_12
    :goto_9
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ComplaintParentCategoryMaster"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2057
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$2100(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2059
    :cond_13
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v3

    .line 2060
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDynamicCondition()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDynamicCondition()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    if-eqz v3, :cond_14

    .line 2061
    const-string v5, "@"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$500(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_14
    move-object/from16 v22, v3

    .line 2063
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    const/16 v3, 0x232

    if-ne v2, v3, :cond_15

    .line 2064
    new-instance v10, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v19

    .line 2065
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v23

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$500(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/lang/String;

    move-result-object v24

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v25

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1600(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v26

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v27

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2064
    invoke-virtual/range {v19 .. v28}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamicPlots(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2065
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    move-object v2, v10

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 2066
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v3, 0x7f1101b9

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2067
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 2068
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_a

    .line 2070
    :cond_15
    new-instance v10, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v19

    .line 2071
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v23

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$500(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/lang/String;

    move-result-object v24

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v25

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1600(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v26

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v27

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2070
    invoke-virtual/range {v19 .. v28}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2071
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    move-object v2, v10

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 2072
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v3, 0x7f1101b9

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2073
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 2074
    invoke-virtual {v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2078
    const-string v3, "SurveyAttributesActivity"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 2079
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    return-void
.end method
