.class Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;
.super Ljava/lang/Object;
.source "AttributesDynmicTableViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V
    .locals 0

    .line 1957
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    .line 1960
    const-string v2, " "

    const-string v3, ""

    instance-of v0, v7, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1961
    move-object v0, v7

    check-cast v0, Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1964
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1965
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 1966
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;

    .line 1970
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1973
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1974
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1975
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1978
    :cond_1
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, " IN ( "

    const-string v9, " ) "

    const/4 v10, 0x1

    if-eqz v6, :cond_3

    .line 1979
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1700()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

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

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1980
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

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

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 1981
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1700()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

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

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1984
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    :goto_0
    move-object v6, v3

    .line 1990
    :goto_1
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v11

    if-eqz v11, :cond_5

    .line 1991
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1700()Ljava/util/List;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1992
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v8

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v8

    if-ne v8, v10, :cond_5

    .line 1993
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1700()Ljava/util/List;

    move-result-object v8

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1996
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v13}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v8

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_5
    :goto_2
    move-object v8, v3

    .line 2002
    :goto_3
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v11

    if-eqz v11, :cond_7

    .line 2003
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1700()Ljava/util/List;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2004
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v9

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v9

    if-ne v9, v10, :cond_7

    .line 2005
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1700()Ljava/util/List;

    move-result-object v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

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

    check-cast v9, Landroid/widget/EditText;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v11

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2008
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string v11, " IN (  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    :goto_4
    move-object v0, v3

    .line 2013
    :goto_5
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2014
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 2016
    :cond_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, " and "

    if-nez v9, :cond_9

    .line 2018
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    :cond_9
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 2020
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    :cond_a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2022
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    :cond_b
    :goto_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    .line 2028
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v13}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$500(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v14}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$300(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I

    move-result v14

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v15}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1800(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I

    move-result v15

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v16

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2027
    invoke-virtual/range {v8 .. v17}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 2031
    const-string v6, "AttributesActivity"

    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2032
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2033
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    :goto_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_8

    .line 2040
    :cond_c
    new-instance v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    iget-object v5, v3, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->brandsList:Ljava/util/List;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2300(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v9

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$300(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I

    move-result v10

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v11

    move-object v2, v0

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v11}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;III)V

    .line 2041
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v3, 0x7f1101b9

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2042
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 2043
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_9

    .line 2037
    :cond_d
    :goto_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$200(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noDataFound()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_9
    return-void
.end method
